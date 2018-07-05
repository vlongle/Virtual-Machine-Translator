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
// pop pointer THAT
// pop pointer index 
@SP
AM = M - 1
D = M 

@THAT
M = D

// --------------------------------------------------------------------------------------------
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
// pop THAT 0
// pop memory_segment index 




// compute the target address from the base address and 0.
// Push the result onto the stack
@THAT
D=M // store the base address



@0
D=D+A // THAT-base + 0

@SP
A = M // select stack.top

// stack.push(THAT-base + 0)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = THAT-base + 0
A = M // select RAM[ THAT-base + 0 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

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
// pop THAT 1
// pop memory_segment index 




// compute the target address from the base address and 1.
// Push the result onto the stack
@THAT
D=M // store the base address



@1
D=D+A // THAT-base + 1

@SP
A = M // select stack.top

// stack.push(THAT-base + 1)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = THAT-base + 1
A = M // select RAM[ THAT-base + 1 ]

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
// push constant 2
// push constant index
@2
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
// label MAIN_LOOP_START 
// label LABEL
(MAIN_LOOP_START)
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
// if-goto COMPUTE_ELEMENT 
// if-goto LABEL
@SP
AM = M - 1 // stack.pop
D = M // D is store the reversed boolean value

@COMPUTE_ELEMENT // @LABEL
D; JNE // jump if equal to 0 -- FALSE (which is TRUE reversed) 

// -----------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// goto END_PROGRAM 
// goto LABEL
@END_PROGRAM 
0; JMP // jump unconditionally 
// -----------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// label COMPUTE_ELEMENT 
// label LABEL
(COMPUTE_ELEMENT)
// -----------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push THAT 0
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular THAT
// THAT base address to D-reg
// ------------------------------------------------
@THAT
D=M


@0 
D=D+A // D = THAT-base + 0
A=D   
D=M  // store the content of RAM[THAT + 0]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push THAT 1
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular THAT
// THAT base address to D-reg
// ------------------------------------------------
@THAT
D=M


@1 
D=D+A // D = THAT-base + 1
A=D   
D=M  // store the content of RAM[THAT + 1]

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
// pop pointer THAT
// pop pointer index 
@SP
AM = M - 1
D = M 

@THAT
M = D

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
// goto MAIN_LOOP_START 
// goto LABEL
@MAIN_LOOP_START 
0; JMP // jump unconditionally 
// -----------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// label END_PROGRAM 
// label LABEL
(END_PROGRAM)
// -----------------------------------------------------------------------------------------------
