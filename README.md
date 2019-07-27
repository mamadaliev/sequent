# sequent
Sequential entries of a long number with offset for the FPGA microarchitecture on system verilog.

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

## Example
<img src="https://i.ibb.co/VBcBk2R/test.png">

## Contribute
For any problems, comments, or feedback please create an issue [here](https://github.com/egnaf/sequent/issues).
<br>

## Licence
This software is released under the [MIT License](http://mitlicense.org).
