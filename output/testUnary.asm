// ----------------------------------NEW COMMAND ---------------------------------------------
// pop constant 6
// pop constant index
@6
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
../templates/arithlogic/unary.asm