'''
'''


#class InstructionMeta(type):
#    register = {}
#    def __new__(cls, name, bases, local_dict):
#        result_cls = type.__new__(cls, name, bases, local_dict)
#        operators = local_dict["operators"]
#
#        if operators:
#            InstructionMeta.register.update(dict.fromkeys(operators, result_cls))
#
#        return result_cls
#
class Instruction():
    operators = []
    replace_dict = {}

    def __init__(self, operator, operands):
        self.operator = operator
        self.operands = operands

    @property
    def code(self):
        return self.fill_template()


    @property
    def template_dir(self):
        return type(self).__name__

    @property
    def template(self):
        pass


    def fill_template(self):
        template = self.template
        try:
            self.operator = self.instruction_map[self.operator]
        except:
            pass
        operand_dict = {"operand" + str(index) : operand for index, operand in enumerate(self.operands)}
        self.replace_dict.update(operand_dict)
        self.replace_dict['operator'] = self.operator

        # all the templates .asm are formatted to support string interpolation
        return template % self.replace_dict


