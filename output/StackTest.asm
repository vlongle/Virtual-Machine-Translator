// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 17
// push constant index
@17
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 17
// push constant index
@17
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// logic binary
// Compute the logic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// JEQ
// valid binary operator: eq, gt, lt 
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
D = M -  D // store the result

M = -1 // M is true by default
@END0
D, JEQ // prepare to jump
@SP
A = M - 1
M = 0 // load back to false
(END0)
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 17
// push constant index
@17
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 16
// push constant index
@16
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// logic binary
// Compute the logic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// JEQ
// valid binary operator: eq, gt, lt 
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
D = M -  D // store the result

M = -1 // M is true by default
@END1
D, JEQ // prepare to jump
@SP
A = M - 1
M = 0 // load back to false
(END1)
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 16
// push constant index
@16
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 17
// push constant index
@17
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// logic binary
// Compute the logic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// JEQ
// valid binary operator: eq, gt, lt 
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
D = M -  D // store the result

M = -1 // M is true by default
@END2
D, JEQ // prepare to jump
@SP
A = M - 1
M = 0 // load back to false
(END2)
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 892
// push constant index
@892
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 891
// push constant index
@891
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// logic binary
// Compute the logic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// JLT
// valid binary operator: eq, gt, lt 
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
D = M -  D // store the result

M = -1 // M is true by default
@END3
D, JLT // prepare to jump
@SP
A = M - 1
M = 0 // load back to false
(END3)
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 891
// push constant index
@891
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 892
// push constant index
@892
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// logic binary
// Compute the logic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// JLT
// valid binary operator: eq, gt, lt 
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
D = M -  D // store the result

M = -1 // M is true by default
@END4
D, JLT // prepare to jump
@SP
A = M - 1
M = 0 // load back to false
(END4)
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 891
// push constant index
@891
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 891
// push constant index
@891
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// logic binary
// Compute the logic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// JLT
// valid binary operator: eq, gt, lt 
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
D = M -  D // store the result

M = -1 // M is true by default
@END5
D, JLT // prepare to jump
@SP
A = M - 1
M = 0 // load back to false
(END5)
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 32767
// push constant index
@32767
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 32766
// push constant index
@32766
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// logic binary
// Compute the logic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// JGT
// valid binary operator: eq, gt, lt 
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
D = M -  D // store the result

M = -1 // M is true by default
@END6
D, JGT // prepare to jump
@SP
A = M - 1
M = 0 // load back to false
(END6)
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 32766
// push constant index
@32766
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 32767
// push constant index
@32767
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// logic binary
// Compute the logic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// JGT
// valid binary operator: eq, gt, lt 
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
D = M -  D // store the result

M = -1 // M is true by default
@END7
D, JGT // prepare to jump
@SP
A = M - 1
M = 0 // load back to false
(END7)
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 32766
// push constant index
@32766
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 32766
// push constant index
@32766
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// logic binary
// Compute the logic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// JGT
// valid binary operator: eq, gt, lt 
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
D = M -  D // store the result

M = -1 // M is true by default
@END8
D, JGT // prepare to jump
@SP
A = M - 1
M = 0 // load back to false
(END8)
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 57
// push constant index
@57
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 31
// push constant index
@31
D = A // D = index

@SP
M = M + 1 // increment stack pointer
A = M - 1
M = D
// --------------------------------------------------------------------------------------------
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 53
// push constant index
@53
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
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 112
// push constant index
@112
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
// ----------------------------------NEW COMMAND ---------------------------------------------
// - 
//   not / neg
// deal with unary operators including neg (-) and not (!)

// stack.pop
@SP  // 257
A = M - 1 // A = 256 = RAM[A] = M = 24

M = - M // (neg or not) inserted here
// D = result

// ----------------------------------NEW COMMAND ---------------------------------------------
// arithmetic binary
// Compute the arithmetic binary operator from the stack.pop and stack.pop
// Push the result back to the stack
// &
// valid binary operator: add, sub, and, or  
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
M = M & D // store the result to D
// ----------------------------------NEW COMMAND ---------------------------------------------
// push constant 82
// push constant index
@82
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
// |
// valid binary operator: add, sub, and, or  
@SP
M = M - 1 // decrement stack pointer
A = M // select RAM[stack.top]

D = M // D = stack.pop()
A = A - 1 // continue to select the RAM after the stack next pop
M = M | D // store the result to D
// ----------------------------------NEW COMMAND ---------------------------------------------
// ! 
//   not / neg
// deal with unary operators including neg (-) and not (!)

// stack.pop
@SP  // 257
A = M - 1 // A = 256 = RAM[A] = M = 24

M = ! M // (neg or not) inserted here
// D = result

