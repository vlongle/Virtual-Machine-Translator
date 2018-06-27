import sys
import os
import time





class Preprocessor:
    def __init__(self):
        pass



    @staticmethod
    def remove_ws(file, parseToken = False):
        for line in file:
            no_ws = line.split("//")[0].lstrip().rstrip()

            if no_ws and not no_ws.isspace():
                if parseToken:
                    no_ws = no_ws.split()
                yield no_ws
            else:
                continue



class Translator:

    def __init__(self, vmpath):
        self.file_name = os.path.basename(vmpath).split('.')[0] # remove .vm extension
        self.asmpath = os.path.join('..', 'output', self.file_name + '.asm')

        self.vmfile = open(vmpath, 'r')
        self.asmfile = open(self.asmpath, 'w')

        self.process_funcs = {'memory': self.process_mem,
                              'binary_arith':  self.process_binaryA,
                              'binary_logic' : self.process_binaryL,
                              'unary' : self.process_unary}

        self.binaryOpsA = {'add': '+', 'sub': '-', 'and'  : '&', 'or' : '|'}
        self.binaryOpsL = {'eq': 'JEQ', 'gt': 'JGT', 'lt'  : 'JLT'}
        self.unary = {'neg' : '-', 'not': '!'}
        self.asm_templates = {}


        self.segments = {'this': 'THIS', 'that': 'THAT', 'local': 'LCL', 'argument': 'ARG',
                         'currentStatic' : 0, 'currentEND': 0, 'currentTrue' : 0,
                         'temp': '5'}

    def exit(self):
        self.vmfile.close()
        self.asmfile.close()




    def ops_type(self, tokens):
        if len(tokens) == 3: # memory access
            return 'memory'
        elif tokens[0] in self.binaryOpsA: # arithmetic
            return 'binary_arith'
        elif tokens[0] in self.binaryOpsL:
            return 'binary_logic'
        elif tokens[0] in self.unary:
            return 'unary'



    def load_template(self, template_path):
        if template_path not in self.asm_templates:
            self.asm_templates[template_path] = open(template_path).read()

        return self.asm_templates[template_path]



    def sender(self, seq_tokens):
        for tokens in seq_tokens:
            self.asmfile.write( '\n' + '// --------Translating ' + str(tokens) + '----------' + '\n \n')
            print('translating' + str(tokens))
            op_type = self.ops_type(tokens)
            # print('op_type', op_type)
            func = self.process_funcs[op_type]
            yield func(tokens)

    def write(self, asmcode_gen):
        for asm_code in asmcode_gen:
            # print('write')
            self.asmfile.write(asm_code + '\n\n' + '// END OF INSTRUCTION ---------------\n \n \n')



    def run(self):
        seq_tokens = Preprocessor.remove_ws(self.vmfile, parseToken=True) # generator
        asmcode_gen = self.sender(seq_tokens)
        self.write(asmcode_gen)


    def process_mem(self, tokens):
        segment = tokens[1]
        index = tokens[2]



        if tokens[0] == 'push':
            asmStr = self.load_template('../templates/mem/push.asm')

            toStart = asmStr.rfind('@index')  # find the last occurence

            if segment == 'constant':
                asmStr = asmStr[toStart:]
            else:
                truncate = asmStr.rfind('D = A') + 7
                if segment == 'temp':
                    asmStr = asmStr.replace('D=M', 'D=A', 1)  # replace at 1 instance

                # more like static !!
                if segment == 'static':
                    segment = 'static' + str(self.segments['currentStatic'])
                    self.segments['currentStatic'] += 1


                else:
                    segment = self.segments[segment]

                asmStr = asmStr[:toStart] + asmStr[truncate:]

        elif tokens[0] == 'pop':
            asmStr = self.load_template('../templates/mem/pop.asm')
            if segment == 'temp':
                asmStr = asmStr.replace('D=M', 'D=A', 1)  # replace at 1 instance

            segment = self.segments[segment]

        else:
            raise ValueError('Invalid memory instruction: :', tokens)




        return asmStr.replace('segment', segment).replace('index', index)



# TO MODIFIED
    def process_binaryA(self, tokens):
        # end_jmp = 'END' + str(self.segments['currentEND'])
        # self.segments['currentEND'] += 1

        # load_true = 'LOADTRUE' + str(self.segments['currentTrue'])
        # self.segments['currentTrue'] += 1


        asmStr = self.load_template('../templates/arithlogic/binary.asm')

        # print('end_jmp', end_jmp)

        #
        # asmStr = asmStr.replace('END', end_jmp)
        logic_part = asmStr.find('// logic ops')
        # end_part = asmStr.find('(END)')
        asmStr = asmStr[:logic_part]
            #+ asmStr[end_part:]

        return asmStr.replace('operator', self.binaryOpsA[tokens[0]]) \
                     # .replace('END', end_jmp)\
                     # .replace('LOADTRUE', load_true)



# TO MODIFIED
    def process_binaryL(self, tokens):
        end_jmp = 'END' + str(self.segments['currentEND'])
        self.segments['currentEND'] += 1

        asmStr = self.load_template('./templates/arithlogic/binary.asm')
        # print('end_jmp', end_jmp)

        load_true = 'LOADTRUE' + str(self.segments['currentTrue'])
        self.segments['currentTrue'] += 1



        # print(asmStr)

        start_cut = asmStr.rfind('// JUMP ARITHMETIC')
        end_cut = asmStr.rfind('// END JUMP ARITHMETIC')
        # print('end_cut', end_cut)
        asmStr = asmStr[:start_cut] + asmStr[end_cut:]

        # print(asmStr)


        asmStr =  asmStr.replace('JMP_OPERATOR', self.binaryOpsL[tokens[0]]) \
                        .replace('operator', '-') \
                        .replace('END', end_jmp) \
                        .replace('LOADTRUE', load_true)

        # print(asmStr)
        return asmStr

    def process_unary(self, tokens):
        # print('process_unary')
        asmStr = self.load_template('./templates/unary.asm')
        return  asmStr.replace('unary_op', self.unary[tokens[0]])







def main():
    # try:

        file_path = os.path.join('..', 'input', sys.argv[1] )

        translator = Translator(file_path)

        print('Translating ', sys.argv[1], ' the output will be in ./output')

        start_time = time.time()
        translator.run()
        end_time = time.time()

        translator.exit()

        print("Finished in ", end_time - start_time)

    # except:
    #     print("Please put the .vm file in the ./input dir"
    #           " and supply the name as argument")
    #     raise SystemExit(1)



if __name__ == "__main__":
    main()
