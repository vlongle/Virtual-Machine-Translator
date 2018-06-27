// deal with unary operators including neg (-) and not (!)

// stack.pop
@SP  // 257
A = M - 1 // A = 256 = RAM[A] = M = 24

D = unary_op M // unary_op (neg or not) inserted here
// D = result

@SP
A = M - 1
M = D // stack.push(result)

