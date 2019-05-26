# input-numbers
Sequential input of a long number with offset for FPGA.

## Modules
<a href="https://github.com/mamadaliev/input-numbers/blob/master/cdd.v">cdd.v</a> - combinatorical digital device<br>
<a href="https://github.com/mamadaliev/input-numbers/blob/master/coder.v">coder.v</a> - data decoder<br>
<a href="https://github.com/mamadaliev/input-numbers/blob/master/low_counter.v">low_counter.v</a> - lowering counter<br>
<a href="https://github.com/mamadaliev/input-numbers/blob/master/connect.v">connect.v</a> - main module connecting all modules</br>

## States
<b>RESET</b> - adjust to zero registers and counter<br>
<b>WAIT</b> - waiting to input data<br>
<b>OUTPUT</b> - data output<br>
<b>READ</b> - read data and write to register<br>
<b>SHIFT</b> - shifts registers<br>

## Demo
<img src="https://i.ibb.co/VBcBk2R/test.png">

## Contribute
For any problems, comments, or feedback please create an issue [here on GitHub](https://github.com/mamadaliev/input-numbers/issues).
<br>

## Licence
Game of Life is released under the [MIT license](https://en.wikipedia.org/wiki/MIT_License).
