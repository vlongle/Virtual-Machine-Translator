// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 10
// push constant index
@10
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop LCL 0
// pop memory_segment index 




// compute the target address from the base address and 0.
// Push the result onto the stack
@LCL
D=M // store the base address



@0
D=D+A // LCL-base + 0

@SP
A = M // select stack.top

// stack.push(LCL-base + 0)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = LCL-base + 0
A = M // select RAM[ LCL-base + 0 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 21
// push constant index
@21
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 22
// push constant index
@22
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop ARG 2
// pop memory_segment index 




// compute the target address from the base address and 2.
// Push the result onto the stack
@ARG
D=M // store the base address



@2
D=D+A // ARG-base + 2

@SP
A = M // select stack.top

// stack.push(ARG-base + 2)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = ARG-base + 2
A = M // select RAM[ ARG-base + 2 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop ARG 1
// pop memory_segment index 




// compute the target address from the base address and 1.
// Push the result onto the stack
@ARG
D=M // store the base address



@1
D=D+A // ARG-base + 1

@SP
A = M // select stack.top

// stack.push(ARG-base + 1)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = ARG-base + 1
A = M // select RAM[ ARG-base + 1 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 36
// push constant index
@36
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop THIS 6
// pop memory_segment index 




// compute the target address from the base address and 6.
// Push the result onto the stack
@THIS
D=M // store the base address



@6
D=D+A // THIS-base + 6

@SP
A = M // select stack.top

// stack.push(THIS-base + 6)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = THIS-base + 6
A = M // select RAM[ THIS-base + 6 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 42
// push constant index
@42
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 45
// push constant index
@45
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop THAT 5
// pop memory_segment index 




// compute the target address from the base address and 5.
// Push the result onto the stack
@THAT
D=M // store the base address



@5
D=D+A // THAT-base + 5

@SP
A = M // select stack.top

// stack.push(THAT-base + 5)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = THAT-base + 5
A = M // select RAM[ THAT-base + 5 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop THAT 2
// pop memory_segment index 




// compute the target address from the base address and 2.
// Push the result onto the stack
@THAT
D=M // store the base address



@2
D=D+A // THAT-base + 2

@SP
A = M // select stack.top

// stack.push(THAT-base + 2)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = THAT-base + 2
A = M // select RAM[ THAT-base + 2 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
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
// ----------------------------------NEW COMMAND ---------------------------------------------
// push LCL 0
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular LCL
// LCL base address to D-reg
// ------------------------------------------------
@LCL
D=M


@0 
D=D+A // D = LCL-base + 0
A=D   
D=M  // store the content of RAM[LCL + 0]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push THAT 5
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular THAT
// THAT base address to D-reg
// ------------------------------------------------
@THAT
D=M


@5 
D=D+A // D = THAT-base + 5
A=D   
D=M  // store the content of RAM[THAT + 5]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// arithmetic binary
// Compute the arithmetic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// +
// valid binary operator: add, sub, and, or  
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
M = M + D // store the result to D
// ----------------------------------NEW COMMAND ---------------------------------------------
// push ARG 1
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular ARG
// ARG base address to D-reg
// ------------------------------------------------
@ARG
D=M


@1 
D=D+A // D = ARG-base + 1
A=D   
D=M  // store the content of RAM[ARG + 1]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// arithmetic binary
// Compute the arithmetic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// -
// valid binary operator: add, sub, and, or  
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
M = M - D // store the result to D
// ----------------------------------NEW COMMAND ---------------------------------------------
// push THIS 6
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular THIS
// THIS base address to D-reg
// ------------------------------------------------
@THIS
D=M


@6 
D=D+A // D = THIS-base + 6
A=D   
D=M  // store the content of RAM[THIS + 6]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push THIS 6
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular THIS
// THIS base address to D-reg
// ------------------------------------------------
@THIS
D=M


@6 
D=D+A // D = THIS-base + 6
A=D   
D=M  // store the content of RAM[THIS + 6]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// arithmetic binary
// Compute the arithmetic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// +
// valid binary operator: add, sub, and, or  
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
M = M + D // store the result to D
// ----------------------------------NEW COMMAND ---------------------------------------------
// arithmetic binary
// Compute the arithmetic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// -
// valid binary operator: add, sub, and, or  
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
M = M - D // store the result to D
// ----------------------------------NEW COMMAND ---------------------------------------------
// push temp 6
// push temp index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular temp
// temp base address to D-reg
// ------------------------------------------------
@5 // RAM[5] is the address of temp
D=A


@6 
D=D+A // D = temp-base + 6
A=D   
D=M  // store the content of RAM[temp + 6]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// arithmetic binary
// Compute the arithmetic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// +
// valid binary operator: add, sub, and, or  
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
M = M + D // store the result to D
