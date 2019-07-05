import Instruction as ins
from VMTranslator import Translator


class CallInstruction(ins.Instruction):
    operators = ['call', 'function', 'return']
    template_dir = '../templates/FunctionCall/'

    @property
    def template(self):
        template_path = self.template_dir + 'pushProgram.asm'
        with open(template_path, 'r') as f:
            template = f.read()
        return template


class FunctionCall(ins.SuperInstruction):
    operators = ['call', 'function', 'return']
    template_dir = '../templates/FunctionCall'

    def handle_call(self):
        '''
        * Push return address
        * Push LCL RAM[1]
        * Push ARG RAM[2]
        * Push ARG RAM[3]
        * Push THIS RAM[4]
        * Push THAT RAM[5]
        MAKE A FUNCTION LABEL
        '''

        stri = ''
        for RAM in range(1,6):
            call = CallInstruction('call', str(RAM))
            stri += call.code
        return stri



    def handle_return(self):
        '''
        pop all the address back to RAM[1], RAM[2], ..., jump to label
        '''
        pass

    def handle_function(self):
        '''
        Passed in appropriate local vars and initialize them to 0
        Move to SP to the place
        '''
        pass



func = FunctionCall()
with open('testFunction.asm', 'w') as f:
    f.write(func.handle_call())
