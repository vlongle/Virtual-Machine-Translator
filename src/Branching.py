import Instruction as ins


class Branching(ins.Instruction):
    operators = ['label', 'if-goto', 'goto']
    template_dir = '../templates/branching/'
    template_map = {'if-goto': 'ifGoto.asm',  'goto' :'goto.asm', 'label' : 'label.asm'}
    @property
    def template(self):
        template_path = self.template_dir + self.template_map[self.operator]
        f = open(template_path, 'r')
        template = f.read()
        f.close()
        return template
