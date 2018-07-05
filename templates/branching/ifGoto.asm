// ----------------------------------NEW COMMAND ---------------------------------------------
// if-goto %(operand0)s 
// if-goto LABEL
@SP
AM = M - 1 // stack.pop
D = M // D is store the reversed boolean value

@%(operand0)s // @LABEL
D; JNE // jump if equal to 0 -- FALSE (which is TRUE reversed) 

// -----------------------------------------------------------------------------------------------
