// Compute the arithmetic or logical operator from the stack.pop and stack.pop
// Push the result back to the stack

// valid binary operator: add, sub, ...
@SP
A = M - 1
D = M // D = stack.pop

A = A-1
D = M operator D // D = stack.pop operator stack.pop


@SP
M=M-1
M=M-1
A = M // select the place to push the result


// arithmetic ops
M = D // stack.push(D)
@SP
M = M + 1 // SP ++
// JUMP ARITHMETIC
//@END
//0; JMP
// END JUMP ARITHMETIC


// logic ops
@LOADTRUE
D; JMP_OPERATOR // to be replaced
// (LOADFALSE)
@SP
A = M - 1 // select stack.top
M = 0 // -1 is true in HACK machine language
@END
0; JMP

(LOADTRUE)
@SP
A = M - 1 // select stack.top
M = -1 // -1 is true in HACK machine language
@END
0; JMP


(END) // END LOOP

