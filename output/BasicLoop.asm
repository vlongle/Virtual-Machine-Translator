// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 0
// push constant index
@0
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
// label LOOP_START 
// label LABEL
(LOOP_START)
// -----------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push ARG 0
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular ARG
// ARG base address to D-reg
// ------------------------------------------------
@ARG
D=M


@0 
D=D+A // D = ARG-base + 0
A=D   
D=M  // store the content of RAM[ARG + 0]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

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
// -----------------------------------------------------------------------------------------------
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
// push ARG 0
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular ARG
// ARG base address to D-reg
// ------------------------------------------------
@ARG
D=M


@0 
D=D+A // D = ARG-base + 0
A=D   
D=M  // store the content of RAM[ARG + 0]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 1
// push constant index
@1
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
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
// -----------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop ARG 0
// pop memory_segment index 




// compute the target address from the base address and 0.
// Push the result onto the stack
@ARG
D=M // store the base address



@0
D=D+A // ARG-base + 0

@SP
A = M // select stack.top

// stack.push(ARG-base + 0)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = ARG-base + 0
A = M // select RAM[ ARG-base + 0 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push ARG 0
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular ARG
// ARG base address to D-reg
// ------------------------------------------------
@ARG
D=M


@0 
D=D+A // D = ARG-base + 0
A=D   
D=M  // store the content of RAM[ARG + 0]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// if-goto LOOP_START 
// if-goto LABEL
@SP
AM = M - 1 // stack.pop
D = M // D is store the reversed boolean value

@LOOP_START // @LABEL
D; JNE // jump if equal to 0 -- FALSE (which is TRUE reversed) 

// -----------------------------------------------------------------------------------------------
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
