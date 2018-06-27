
// compute the target address from the base address and index.
// Push the result onto the stack
@segment
D=M // store the base address



@index
D=D+A // segment-base + index

@SP
A = M // select stack.top

// stack.push(segment-base + index)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = segment-base + index
A = M // select RAM[ segment-base + index ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer
