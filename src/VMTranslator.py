import os
from Instruction import *
from MemoryAccess import MemoryAccess
from StackArithmetic import StackArithmetic
from Branching import Branching

class Writer:

    @staticmethod
    def all_subclasses(cls):
        return set(cls.__subclasses__()).union(
            [s for c in cls.__subclasses__() for s in Writer.all_subclasses(c)])

    @staticmethod
    def make_register():
        register = {}
        for subcls in Writer.all_subclasses(SuperInstruction):
            operators = subcls.operators
            register.update(dict.fromkeys(operators, subcls))
        return register

    @staticmethod
    def instruction_factory(tokens):
        operator = tokens[0]
        operands = tokens[1:]
        instruction_cls = Writer.make_register()[operator](operator, operands)
        return instruction_cls

    @staticmethod
    def translate_line(tokens):
        instruction_cls = Writer.instruction_factory(tokens)
        return instruction_cls.code

#TODO: rename Translator -> Writer. Writer -> Translator & update dependent code
class Translator:
    def __init__(self, vmpath):
        self.file_name = os.path.basename(vmpath).split('.')[0] # remove .vm extension
        self.vmpath = vmpath
        self.asm_path = os.path.join('..', 'output', self.file_name + '.asm')

    def run(self):
        self.vmfile = open(self.vmpath, 'r')
        self.asmfile = open(self.asm_path, 'w')
        lines = self.tokenize()

        machine_codes = (Writer.translate_line(line) for line in lines)
        for code in machine_codes:
            self.asmfile.write(code)


    def tokenize(self):
       for line in self.vmfile:
           no_comment = line.split("//")[0].strip()

           if no_comment and not no_comment.isspace():
               yield no_comment.split() # tokenize
           else:
                continue


    def exit(self):
        self.vmfile.close()
        self.asmfile.close()
