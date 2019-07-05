import sys
sys.path.append('../')
from src import VMTranslator
# from VMTranslator import MemoryInstruction


def testMem():
	print('what')
	tokens = ['push', 'constant', '7']
	mem = VMTranslator.MemoryInstruction(tokens)
	if mem:
		print('work')
	print(mem.is_push)



testMem()


