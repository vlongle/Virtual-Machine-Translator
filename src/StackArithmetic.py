from Instruction import Instruction

class StackArithmetic(Instruction):
    operators = ['add', 'sub', 'and', 'or', 'eq', 'gt', 'lt', 'neg', 'not']
    template_dir = '../templates/arithlogic/'
    instruction_map = {'add': '+', 'sub': '-', 'and' : '&', 'or' : '|', \
                        'eq': 'JEQ', 'gt': 'JGT', 'lt':  'JLT', 'neg' : '-', 'not' : '!', \
                        'currentEND': 0}


    @property
    def template(self):
        template_path = self.template_dir
        operator = self.operator
        if operator == 'neg' or operator == 'not':
            template_path += 'unary.asm'
        elif operator == 'eq' or operator == 'gt' or operator == 'lt':
            template_path += 'binaryLogic.asm'

            self.replace_dict['END'] = 'END' + str(self.instruction_map['currentEND'])
            self.instruction_map['currentEND'] +=1
        else:
            template_path += 'binaryArithmetic.asm'

        f = open(template_path, 'r')
        template = f.read()
        f.close()
        return template
