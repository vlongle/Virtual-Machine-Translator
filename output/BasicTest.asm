
// --------Translating ['push', 'constant', '10']----------
 
@10
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['pop', 'local', '0']----------
 

// compute the target address from the base address and 0.
// Push the result onto the stack
@LCL
D = M // store the base address

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


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'constant', '21']----------
 
@21
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'constant', '22']----------
 
@22
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['pop', 'argument', '2']----------
 

// compute the target address from the base address and 2.
// Push the result onto the stack
@ARG
D = M // store the base address

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


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['pop', 'argument', '1']----------
 

// compute the target address from the base address and 1.
// Push the result onto the stack
@ARG
D = M // store the base address

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


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'constant', '36']----------
 
@36
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['pop', 'this', '6']----------
 

// compute the target address from the base address and 6.
// Push the result onto the stack
@THIS
D = M // store the base address

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


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'constant', '42']----------
 
@42
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'constant', '45']----------
 
@45
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['pop', 'that', '5']----------
 

// compute the target address from the base address and 5.
// Push the result onto the stack
@THAT
D = M // store the base address

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


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['pop', 'that', '2']----------
 

// compute the target address from the base address and 2.
// Push the result onto the stack
@THAT
D = M // store the base address

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


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'constant', '510']----------
 
@510
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['pop', 'temp', '6']----------
 

// compute the target address from the base address and 6.
// Push the result onto the stack
@5
D = M // store the base address

@6
D=D+A // 5-base + 6

@SP
A = M // select stack.top

// stack.push(5-base + 6)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = 5-base + 6
A = M // select RAM[ 5-base + 6 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'local', '0']----------
 
// push LCL 0
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

// for push constant 0
// -------------------------
// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'that', '5']----------
 
// push THAT 5
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

// for push constant 5
// -------------------------
// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['add']----------
 
// Compute the arithmetic or logical + from the stack.pop and stack.pop
// Push the result back to the stack

// valid binary +: add, sub, ...
@SP
A = M - 1
D = M // D = stack.pop

A = A-1
D = M + D // D = stack.pop + stack.pop


@SP
M=M-1
M=M-1
A = M // select the place to push the result


// arithmetic ops
M = D // stack.push(D)
@SP
M = M + 1 // SP ++
// JUMP ARITHMETIC
//@END
//0; JMP
// END JUMP ARITHMETIC




// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'argument', '1']----------
 
// push ARG 1
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

// for push constant 1
// -------------------------
// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['sub']----------
 
// Compute the arithmetic or logical - from the stack.pop and stack.pop
// Push the result back to the stack

// valid binary -: add, sub, ...
@SP
A = M - 1
D = M // D = stack.pop

A = A-1
D = M - D // D = stack.pop - stack.pop


@SP
M=M-1
M=M-1
A = M // select the place to push the result


// arithmetic ops
M = D // stack.push(D)
@SP
M = M + 1 // SP ++
// JUMP ARITHMETIC
//@END
//0; JMP
// END JUMP ARITHMETIC




// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'this', '6']----------
 
// push THIS 6
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

// for push constant 6
// -------------------------
// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'this', '6']----------
 
// push THIS 6
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

// for push constant 6
// -------------------------
// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['add']----------
 
// Compute the arithmetic or logical + from the stack.pop and stack.pop
// Push the result back to the stack

// valid binary +: add, sub, ...
@SP
A = M - 1
D = M // D = stack.pop

A = A-1
D = M + D // D = stack.pop + stack.pop


@SP
M=M-1
M=M-1
A = M // select the place to push the result


// arithmetic ops
M = D // stack.push(D)
@SP
M = M + 1 // SP ++
// JUMP ARITHMETIC
//@END
//0; JMP
// END JUMP ARITHMETIC




// END OF INSTRUCTION ---------------
 
 

// --------Translating ['sub']----------
 
// Compute the arithmetic or logical - from the stack.pop and stack.pop
// Push the result back to the stack

// valid binary -: add, sub, ...
@SP
A = M - 1
D = M // D = stack.pop

A = A-1
D = M - D // D = stack.pop - stack.pop


@SP
M=M-1
M=M-1
A = M // select the place to push the result


// arithmetic ops
M = D // stack.push(D)
@SP
M = M + 1 // SP ++
// JUMP ARITHMETIC
//@END
//0; JMP
// END JUMP ARITHMETIC




// END OF INSTRUCTION ---------------
 
 

// --------Translating ['push', 'temp', '6']----------
 
// push temp0 6
// LCL stored at RAM[1]
// SP stored at RAM[0]


// for regular temp0
// temp0 base address to D-reg
// ------------------------------------------------
@temp0
D=M


@6 
D=D+A // D = temp0-base + 6
A=D   
D=M  // store the content of RAM[temp0 + 6]

// ------------------------------------------------

// for push constant 6
// -------------------------
// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['add']----------
 
// Compute the arithmetic or logical + from the stack.pop and stack.pop
// Push the result back to the stack

// valid binary +: add, sub, ...
@SP
A = M - 1
D = M // D = stack.pop

A = A-1
D = M + D // D = stack.pop + stack.pop


@SP
M=M-1
M=M-1
A = M // select the place to push the result


// arithmetic ops
M = D // stack.push(D)
@SP
M = M + 1 // SP ++
// JUMP ARITHMETIC
//@END
//0; JMP
// END JUMP ARITHMETIC




// END OF INSTRUCTION ---------------
 
 
