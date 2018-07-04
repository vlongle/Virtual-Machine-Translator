import time
import os
import sys
from VMTranslator import Translator

def main():
   # try:
        file_path = os.path.join('..', 'input', sys.argv[1])

        translator = Translator(file_path)

        print('Translating', sys.argv[1], 'the output will be in ./output')

        start_time = time.time()
        translator.run()
        end_time = time.time()

        translator.exit()

        time_cost = end_time - start_time
        print('Finished translation in ', time_cost)
        return time_cost
   # except:
   #     print("Please<Plug>PeepOpenut the .vm file in the ./input dir  and supply its name as the argument")
   #     raise SystemExit(1)



if __name__ == "__main__":
    main()

