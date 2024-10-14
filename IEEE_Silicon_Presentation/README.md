# Verilog First Lab

## Tools instalation
### Debian (Ubuntu, Mint, Pop-os)
``` bash
sudo apt install iverilog
sudo apt install gtkwave
```

## Compile design and testbench
```bash
iverilog -o <output_file_name> <testbench_target>
```

## Simulate & View Waves
```bash
vvp <output_file_name>
gtkwave <file_name.vcd>
```
