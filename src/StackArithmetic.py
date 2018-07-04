from Instruction import Instruction

class StackArithmetic(Instruction):
    operators = ['add', 'sub', 'and', 'or', 'eq', 'gt', 'lt', 'neg', 'not']
    template_dir = '../templates/arithlogic/'
    instruction_map = {'add': '+', 'sub': '-', 'and' : '&', 'or' : '|'}
    @property
    def template(self):
        template_path = None
        if self.operator == 'neg' or self.operator == 'not':
            template_path self.template_dir + 'unary.asm'
        else:
            pass

        f = open(template_path, 'r')
        template = f.read()
        f.close()
        return template
