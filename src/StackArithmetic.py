from Instruction import Instruction

class StackArithmetic(Instruction):
    operators = ['add', 'sub', 'and', 'or', 'eq', 'gt', 'lt', 'neg', 'not']
    template_dir = '../templates/arithlogic/'
    instruction_map = {'add': '+', 'sub': '-', 'and' : '&', 'or' : '|', \
                        'eq': 'JEQ', 'gt': 'JGT', 'lt':  'JTL', 'neg' : '-', 'not' : '!'}


    @property
    def template(self):
        template_path = self.template_dir
        operator = self.operator
        if operator == 'neg' or operator == 'not':
            template_path += 'unary.asm'
        elif operator == 'eq' or operator == 'gt' or operator == 'lt':
            template_path += 'binaryLogic.asm'
        else:
            template_path += 'binaryArithmetic.asm'

        f = open(template_path, 'r')
        template = f.read()
        f.close()
        return template
