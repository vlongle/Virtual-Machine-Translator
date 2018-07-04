import Instruction as ins

class MemoryAccess(ins.Instruction):
    operators = ['push', 'pop']

    template_dir = '../templates/mem/'

    template_map = {'push': 'push.asm', 'pop': 'pop.asm',  ('push','constant') : 'pushConstant.asm',
                    ('pop','static') : 'popStatic.asm', ('push','static') : 'pushStatic.asm',
                    ('push','temp') : 'pushTemp.asm', ('push', 'pointer'): 'pushPointer.asm',
                    ('pop', 'pointer'): 'popPointer.asm', ('pop', 'temp'): 'popTemp.asm'}

    instruction_map  = {'this': 'THIS', 'that' : 'THAT', 'local': 'LCL', 'argument': 'ARG',\
            'static': 'static', 'constant': 'constant', 'temp' : 'temp', 'pointer': 'pointer'}

    def __init__(self, operator, operands):
        super().__init__( operator, operands)
        self.operands[0] = self.instruction_map[self.operands[0]]

    # @overriden
    @property
    def template(self):
        key = None
        segment = self.operands[0]

        if segment in ('temp', 'static', 'pointer', 'constant'):
            key = (self.operator, segment)

            if segment == 'pointer':
                self.operands[1] = 'THIS' if self.operands[1] == '0' else 'THAT'

        key = key if key else self.operator
        template_path = MemoryAccess.template_dir + MemoryAccess.template_map[key]
        f = open(template_path, 'r')
        template = f.read()
        f.close()
        return template


