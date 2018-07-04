// ----------------------------------NEW COMMAND ---------------------------------------------
// push %(operand0)s %(operand1)s
// push static index 
@className.%(operand1)s
D = M // store the data from static index

@SP
M = M + 1 // increment SP
A = M - 1
M = D



// --------------------------------------------------------------------------------------------
