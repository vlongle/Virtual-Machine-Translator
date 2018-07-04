// ----------------------------------NEW COMMAND ---------------------------------------------
// arithmetic binary
// Compute the arithmetic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// %(operator)s
// valid binary operator: add, sub, and, or  
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
D = M %(operator)s D // store the result to D
@LOADTRUE
D, %(operator)s // if satisfied. Jump

(LOADTRUE)
M = -1 // -1 is true in asm

