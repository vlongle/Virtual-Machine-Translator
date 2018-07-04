// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 111
// push constant index
@111
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 333
// push constant index
@333
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 888
// push constant index
@888
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop static 8
// pop static index

@SP
M = M -1
A = M 

D = M
@className.8
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop static 3
// pop static index

@SP
M = M -1
A = M 

D = M
@className.3
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop static 1
// pop static index

@SP
M = M -1
A = M 

D = M
@className.1
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push static 3
// push static index 
@className.3
D = M // store the data from static index

@SP
M = M + 1 // increment SP
A = M - 1
M = D



// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push static 1
// push static index 
@className.1
D = M // store the data from static index

@SP
M = M + 1 // increment SP
A = M - 1
M = D



// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// arithmetic binary
// Compute the arithmetic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// -
// valid binary operator: add, sub, and, or  
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
M = M - D // store the result to D
// ----------------------------------NEW COMMAND ---------------------------------------------
// push static 8
// push static index 
@className.8
D = M // store the data from static index

@SP
M = M + 1 // increment SP
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
