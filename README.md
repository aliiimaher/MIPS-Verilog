# MIPS-Verilog
MIPS architecture implemented in Verilog.

-----

## A 5-stage Pipelined MISP32 Processor
Five stages of a microprocessor: 
- Instruction Fetch (IF)
- Instruction Decode (ID)
- Execution(EX) 
- Memory Access and Write (MEM) 
- Write Back (WB)
![MIPS](https://user-images.githubusercontent.com/93030419/215577717-bc5c4d0b-d224-41eb-86b9-c2acf24af725.jpg)


-----

* Instructions supported:
1. R-type Instructions (ADD, SUB, AND, OR, SLT, LSL, LSR, NOT)
2. LW and SW
3. ADDI
4. BEQ
5. SLTI

-----

* Supplementary Details:


This is MIPS 32 bits architecture with a 5-stage design to implement in 6 homework. And this is for the "Computer Architecture Lab" course at Shiraz university in Fall 2022.



* How to run project?
Clone the GitHub repository and open the project folder in Xillinix to run the simulation. Note that this implementation reads the instructions from a file.
