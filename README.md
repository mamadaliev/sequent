# sequent
Sequential entries of a long number with offset for the FPGA microarchitecture on system verilog.

## Modules
<a href="https://github.com/egnaf/sequent/blob/master/cdd.v">cdd.v</a> - combinatorical digital device<br>
<a href="https://github.com/egnaf/sequent/blob/master/coder.v">coder.v</a> - data decoder<br>
<a href="https://github.com/egnaf/sequent/blob/master/lower.v">lower.v</a> - lowering counter<br>
<a href="https://github.com/egnaf/sequent/blob/master/main.v">main.v</a> - main module connecting all modules</br>

## States
<b>RESET</b> - adjust to zero registers and counter<br>
<b>WAIT</b> - waiting to input data<br>
<b>OUTPUT</b> - data output<br>
<b>READ</b> - read data and write to register<br>
<b>SHIFT</b> - shifts registers<br>

## Demonstration
<img src="https://i.ibb.co/VBcBk2R/test.png">

## Contribute
For any problems, comments, or feedback please create an issue [here](https://github.com/egnaf/sequent/issues).
<br>

## Licence
This software is released under the [Unlicense](http://unlicense.org).
