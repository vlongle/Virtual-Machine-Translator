// ----------------------------------NEW COMMAND ---------------------------------------------
// call func nArgs 
// push RAM[1], RAM[2], RAM[3], .... 
@1  // push RAM[1] onto the stack
D = M

@SP
M = M + 1
A = M - 1
M = D // push onto the stack
// -----------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// call func nArgs 
// push RAM[1], RAM[2], RAM[3], .... 
@2  // push RAM[2] onto the stack
D = M

@SP
M = M + 1
A = M - 1
M = D // push onto the stack
// -----------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// call func nArgs 
// push RAM[1], RAM[2], RAM[3], .... 
@3  // push RAM[3] onto the stack
D = M

@SP
M = M + 1
A = M - 1
M = D // push onto the stack
// -----------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// call func nArgs 
// push RAM[1], RAM[2], RAM[3], .... 
@4  // push RAM[4] onto the stack
D = M

@SP
M = M + 1
A = M - 1
M = D // push onto the stack
// -----------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// call func nArgs 
// push RAM[1], RAM[2], RAM[3], .... 
@5  // push RAM[5] onto the stack
D = M

@SP
M = M + 1
A = M - 1
M = D // push onto the stack
// -----------------------------------------------------------------------------------------------
