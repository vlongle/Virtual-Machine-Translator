// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant %(operand1)s
// push constant index
@%(operand1)s
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
