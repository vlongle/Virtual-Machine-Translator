// ----------------------------------NEW COMMAND ---------------------------------------------
// pop %(operand0)s %(operand1)s
// pop memory_segment index 




// compute the target address from the base address and %(operand1)s.
// Push the result onto the stack
@%(operand0)s
D=M // store the base address



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
