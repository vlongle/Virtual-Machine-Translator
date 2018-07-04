import Instruction as ins

class MemoryAccess(ins.Instruction):
    operators = ['push', 'pop']
    template_dir = '../templates/mem/'
    template_map = {'push': 'push.asm', 'pop': 'pop.asm',
            'push constant' : 'pushConstant.asm', 'pop static': 'popStatic.asm'}
    instruction_map  = {'this': 'THIS', 'that' : 'THAT', 'local': 'LCL', 'argument': 'ARG',\
                        'constant': 'constant'}

    def __init__(self, operator, operands):
        super().__init__( operator, operands)
        self.operands[0] = self.instruction_map[self.operands[0]]

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
