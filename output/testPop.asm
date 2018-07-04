// ----------------------------------NEW COMMAND ---------------------------------------------
// pop local 2
// pop memory_segment index 




// compute the target address from the base address and 2.
// Push the result onto the stack
@local
D=M // store the base address



@2
D=D+A // local-base + 2

@SP
A = M // select stack.top

// stack.push(local-base + 2)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = local-base + 2
A = M // select RAM[ local-base + 2 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
