import Instruction as ins

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
class MemoryAccess(ins.Instruction):
    operators = ['push', 'pop']
    template_dir = '../templates/mem/'
    template_map = {'push': 'push.asm', 'pop': 'pop.asm',
            'push constant' : 'pushConstant.asm', 'pop static': 'popStatic.asm'}

    # @overriden
    @property
    def template(self):
        key = None
        if self.operator == "push" and self.operands[0] == "constant":
            key = "push constant"
        elif self.operator == "pop" and self.operands[0] == "static":
            key = "pop static"
        key = key if key else self.operator
        template_path = MemoryAccess.template_dir + MemoryAccess.template_map[key]
        f = open(template_path, 'r')
        template = f.read()
        f.close()
        return template



print("This is MemoryAcess")
