.ORIG x3000
LEA R1, xFF ; Load address values begin at 
AND R2, R2, #0 ;cleared r2, it will Load values
AND R3, R3, #0 ;cleared r3 it will Accumulate values
ADD R3, R3, R2 ;Add the registers and store them in my accumulate register
LDR R2, R1, #0 ;Load value from pointer register, R1
ADD R1, R1, #1 ;Increment the pointer
ADD R2, R2, #0 ;sets our cc based on the value loaded in
BRzp #-4       ;loopdy loop
.END