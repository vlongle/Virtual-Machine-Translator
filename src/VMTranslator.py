import os

class Translator:
    def __init__(self, vmpath):
        self.file_name = os.path.basename(vmpath).split('.')[0] # remove .vm extension
        self.asm_path = os.path.join('..', 'output', self.file_name + '.asm')


    def run(self):
        self.vmfile = open(vmpath, 'r')
        self.asmfile = open(self.asm_path, 'w')

        lines = (line.split("//")[0].strip for line in self.vmfile if not line.isspace() )

    def exit(self):
        self.vmfile.close()
        self.asmfile.close()
