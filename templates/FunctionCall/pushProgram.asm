// ----------------------------------NEW COMMAND ---------------------------------------------
// call func nArgs 
// push RAM[1], RAM[2], RAM[3], .... 
@%(operand0)s  // push RAM[%(operand0)s] onto the stack
D = M

@SP
M = M + 1
A = M - 1
M = D // push onto the stack
// -----------------------------------------------------------------------------------------------
