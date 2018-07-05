// ----------------------------------NEW COMMAND ---------------------------------------------
// %(operator)s 
//   not / neg
// deal with unary operators including neg (-) and not (!)

// stack.pop
@SP  // 257
A = M - 1 // A = 256 = RAM[A] = M = 24

M = %(operator)s M // (neg or not) inserted here
// D = result
// -----------------------------------------------------------------------------------------------
