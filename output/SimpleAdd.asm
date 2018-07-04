// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 7
// push constant index
@7
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 8
// push constant index
@8
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// arithmetic binary
// Compute the arithmetic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// +
// valid binary operator: add, sub, and, or  
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
M = M + D // store the result to D
