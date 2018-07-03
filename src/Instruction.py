'''
Machine code -- MC
'''


class Translator:
    def __init__(self, vm_path):
        pass

    def run(self):
        pass
    # set up the generator

    def tokenize(self):
        pass
        # and remove whitespace
        # and tokenize ....

    def Instruction_factory(tokens):
        operator = tokens[0]
        operands = tokens[1:]

        instruction_cls = InstructionMeta.register[operator](operator, operands)
        return instruction_cls



class InstructionMeta(type):
    register = {}

    def __new__(cls, name, bases, local_dict):
        result_cls = type.__new__(cls, name, bases, local_dict)
        operators = local_dict["operators"]

        if operators:
            InstructionMeta.register.update(dict.fromkeys(operators, result_cls))

        return result_cls


class Instruction(metaclass=InstructionMeta):
    operators = []

    def __init__(self, operator, operands):
        self.operator = operator
        self.operands = operands

    @property
    def template_dir(self):
        return type(self).__name__

    @property
    def template(self):
        pass

    def fill_template(self):
        template = self.template
        replace_dict = {"operand" + str(index) : operand for index, operand in self.operands}

        return template % replace_dict

class MemoryAcess(Instruction):
    operators = ['push', 'pop']


class StackArithmetic(Instruction):
    operators = ['add', 'sub', 'and', 'or', 'eq', 'gt', 'lt', 'neg', 'not']


print("Hello")
print(InstructionMeta.register)

operands = ['local', '0']


replace_dict = {'operand' + str(index) : operand for index, operand in enumerate(operands)}
print(replace_dict)
stri = "%(operand1)s = whatever it takes dude. Like totally. %(operand1)s" % replace_dict

print(stri)


