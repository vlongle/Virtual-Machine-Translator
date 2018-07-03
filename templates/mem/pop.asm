// ----------------------------------NEW COMMAND ---------------------------------------------
// pop operand1 operand2
// pop memory_segment index 




// compute the target address from the base address and operand2.
// Push the result onto the stack
@operand1
D=M // store the base address



@operand2
D=D+A // operand1-base + operand2

@SP
A = M // select stack.top

// stack.push(operand1-base + operand2)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = operand1-base + operand2
A = M // select RAM[ operand1-base + operand2 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
