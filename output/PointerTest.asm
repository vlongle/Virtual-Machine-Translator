// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 3030
// push constant index
@3030
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop pointer THIS
// pop pointer index 
@SP
AM = M - 1
D = M 

@THIS
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 3040
// push constant index
@3040
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop pointer THAT
// pop pointer index 
@SP
AM = M - 1
D = M 

@THAT
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 32
// push constant index
@32
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop THIS 2
// pop memory_segment index 




// compute the target address from the base address and 2.
// Push the result onto the stack
@THIS
D=M // store the base address



@2
D=D+A // THIS-base + 2

@SP
A = M // select stack.top

// stack.push(THIS-base + 2)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = THIS-base + 2
A = M // select RAM[ THIS-base + 2 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 46
// push constant index
@46
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop THAT 6
// pop memory_segment index 




// compute the target address from the base address and 6.
// Push the result onto the stack
@THAT
D=M // store the base address



@6
D=D+A // THAT-base + 6

@SP
A = M // select stack.top

// stack.push(THAT-base + 6)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = THAT-base + 6
A = M // select RAM[ THAT-base + 6 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push pointer THIS
// push pointer index 
@THIS
D = M

@SP
M = M + 1
A = M - 1
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push pointer THAT
// push pointer index 
@THAT
D = M

@SP
M = M + 1
A = M - 1
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
// push THIS 2
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular THIS
// THIS base address to D-reg
// ------------------------------------------------
@THIS
D=M


@2 
D=D+A // D = THIS-base + 2
A=D   
D=M  // store the content of RAM[THIS + 2]

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
// push THAT 6
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular THAT
// THAT base address to D-reg
// ------------------------------------------------
@THAT
D=M


@6 
D=D+A // D = THAT-base + 6
A=D   
D=M  // store the content of RAM[THAT + 6]

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
