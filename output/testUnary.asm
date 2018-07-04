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
// ----------------------------------NEW COMMAND ---------------------------------------------
// ! 
//   not / neg
// deal with unary operators including neg (-) and not (!)

// stack.pop
@SP  // 257
A = M - 1 // A = 256 = RAM[A] = M = 24

M = ! M // (neg or not) inserted here
// D = result

