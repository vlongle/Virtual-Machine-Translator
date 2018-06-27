// Customize test



load test.asm,
output-file test.out,
compare-to test.cmp,
output-list RAM[0]%D2.6.2 
        RAM[256]%D2.6.2 RAM[257]%D2.6.2 RAM[258]%D2.6.2 RAM[259]%D2.6.2 RAM[260]%D2.6.2;


set RAM[0] 256,  // initializes the stack pointer
set RAM[256] 0,
set RAM[257] 0,
set RAM[258] 0,
set RAM[259] 0,
set RAM[260] 0,
set RAM[261] 0,
set RAM[262] 0,
set RAM[263] 0,
set RAM[264] 0,
set RAM[265] 0,


repeat 100 {    // enough cycles to complete the execution
  ticktock;
}

// outputs the stack pointer (RAM[0]) and 
// the stack contents: RAM[256]-RAM[265]
output;
output-list RAM[261]%D2.6.2 RAM[262]%D2.6.2 RAM[263]%D2.6.2 RAM[264]%D2.6.2 RAM[265]%D2.6.2;
output;
