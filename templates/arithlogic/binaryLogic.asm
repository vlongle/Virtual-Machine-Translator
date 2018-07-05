// ----------------------------------NEW COMMAND ---------------------------------------------
// logic binary
// Compute the logic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// %(operator)s
// valid binary operator: eq, gt, lt 
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
D = M -  D // store the result

M = -1 // M is true by default
@%(END)s
D, %(operator)s // prepare to jump
@SP
A = M - 1
M = 0 // load back to false
(%(END)s)
// -----------------------------------------------------------------------------------------------
