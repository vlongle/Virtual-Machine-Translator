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


 1 .vimrc +                                                                                                                  X
   2 filetype off                  " required
   3
   4 " set the runtime path to include Vundle and initialize
   5 set rtp+=~/.vim/bundle/Vundle.vim
   6 call vundle#begin()
   7 " alternatively, pass a path where Vundle should install plugins
   8 "call vundle#begin('~/some/path/here')
   9
  10 " let Vundle manage Vundle, required
  11 Plugin 'VundleVim/Vundle.vim'
  12
  13 " The following are examples of different formats supported.
  14 Plugin 'davidhalter/jedi-vim'
  15
  16 " All of your Plugins must be added before the following line
  17 call vundle#end()            " required
  18 filetype plugin indent on
  19
  20 set number
  21 set foldmethod=indent
  22 set foldnestmax=10
  23 set nofoldenable
  24 set foldlevel=2
  25