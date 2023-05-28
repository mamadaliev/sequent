# sequent
Sequential entries of a long number with offset for the FPGA microarchitecture on system verilog.

## Task
The number is typed on toggle switches of 4 digits and sequentially displayed on 6 indicators. The typed character is recorded after setting "1" at the write enable input.

1. The state S0 is the initial one.
2. State S1 - waiting for input. Hold time 4 cycles. U output status.
3. Next, the automaton goes into the input state S2. Output status In. The hold time of the input state is 2 cycles.
4. The machine switches to the output state S3 and outputs "_" if the permission is not received, when the input permission is received, the entered digit is displayed. The hold time of the output state is 3 cycles. From the output state, the automaton again switches to waiting for input. Serial output can be organized using a demultiplexer.

## Report
[course_work_5_2.docx](https://github.com/mamadaliev/sequent/files/11584435/course_work_5_2.docx)

## Modules
The program uses 4 modules: main, cdd, coder, lower. Below is a table with descriptions of all modules.

| Module | Description |
| --- | --- |
| [main.v](src/main.v) | Main module connecting all modules |
| [cdd.v](src/cdd.v) | Combinatorial digital device |
| [coder.v](src/coder.v) | Data decoder |
| [lower.v](src/lower.v) | Main module connecting all modules |

## States
The **combinatorial digital device** module uses 4 states: RESET, WAIT, OUTPUT, READ, SHIFT. Below is a table with descriptions of all states.

| State | Description |
| --- | --- |
| RESET | Adjust to zero registers and counter |
| WAIT | Waiting to input data |
| OUTPUT | Data output |
| READ | Read data and write to register |
| SHIFT | Shifts registers |

## Video Example
[<img src="https://i.ibb.co/VBcBk2R/test.png">](https://www.youtube.com/watch?v=wWEUiZvxiOs)

## License
This software is released under the [MIT License](http://mitlicense.org).

## Contributors
- [@mamadaliev](https://github.com/mamadaliev)
- [@RozayOj](https://github.com/RozayOj)
