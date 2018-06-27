
// --------Translating ['push', 'constant', '69']----------
 
@69
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'constant', '10']----------
 
@10
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['add']----------
 
// Compute the arithmetic or logical + from the stack.pop and stack.pop
// Push the result back to the stack

// valid binary +: add, sub, ...
@SP
A = M - 1
D = M // D = stack.pop

A = A-1
D = M + D // D = stack.pop + stack.pop


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




// END OF INSTRUCTION ---------------
 
 
