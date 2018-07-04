import os
from Instruction import Instruction
from MemoryAccess import MemoryAccess

class Translator:
    def __init__(self, vmpath):
        self.file_name = os.path.basename(vmpath).split('.')[0] # remove .vm extension
        self.vmpath = vmpath
        self.asm_path = os.path.join('..', 'output', self.file_name + '.asm')
        self.register = self.make_register()

    def run(self):
        self.vmfile = open(self.vmpath, 'r')
        self.asmfile = open(self.asm_path, 'w')
        lines = self.tokenize()

        asm_instructions = (self.instruction_factory(line) for line in lines)

        machine_codes = (asm_ins.code for asm_ins in asm_instructions)

        for code in machine_codes:
            self.asmfile.write(code)


    def tokenize(self):
       for line in self.vmfile:
           no_comment = line.split("//")[0].strip()

           if no_comment and not no_comment.isspace():
               yield no_comment.split() # tokenize
           else:
                continue


    def make_register(self):
        register = {}
        for subcls in Instruction.__subclasses__():
            operators = subcls.operators
            register.update(dict.fromkeys(operators, subcls))
        return register

    def instruction_factory(self,tokens):
        operator = tokens[0]
        operands = tokens[1:]

        instruction_cls = self.register[operator](operator, operands)
        return instruction_cls

    def exit(self):
        self.vmfile.close()
        self.asmfile.close()
