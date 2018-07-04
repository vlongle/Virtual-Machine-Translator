// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 510
// push constant index
@510
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop temp 6
// pop temp index 




// Push the result onto the stack
@5 // RAM[5] is the base address of temp
D=A // store the base address



@6
D=D+A // temp-base + 6

@SP
A = M // select stack.top

// stack.push(temp-base + 6)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = temp-base + 6
A = M // select RAM[ temp-base + 6 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
