// ----------------------------------NEW COMMAND ---------------------------------------------
// pop constant %(operand1)s
// pop constant index
@%(operand1)s
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
