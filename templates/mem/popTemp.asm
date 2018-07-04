// ----------------------------------NEW COMMAND ---------------------------------------------
// pop %(operand0)s %(operand1)s
// pop temp index 




// Push the result onto the stack
@5 // RAM[5] is the base address of temp
D=A // store the base address



@%(operand1)s
D=D+A // %(operand0)s-base + %(operand1)s

@SP
A = M // select stack.top

// stack.push(%(operand0)s-base + %(operand1)s)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = %(operand0)s-base + %(operand1)s
A = M // select RAM[ %(operand0)s-base + %(operand1)s ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
