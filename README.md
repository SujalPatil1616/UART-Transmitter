# UART Transmitter using Verilog

## Description
This project implements a UART (Universal Asynchronous Receiver Transmitter) Transmitter using Verilog HDL. UART is a serial communication protocol that sends data one bit at a time through a single TX (Transmit) line.

## Working
1. Data is given as input to the transmitter.
2. The tx_start signal starts the transmission.
3. UART sends a Start Bit (0).
4. Data bits are transmitted serially (LSB first).
5. UART sends a Stop Bit (1).
6. The tx_busy signal indicates whether transmission is in progress.

## Input Data
10101010

## Tools Used
- Verilog HDL
- EDA Playground
- Icarus Verilog
- EPWave

## Files
- uart_tx.v : UART Transmitter design
- uart_tx_tb.v : Testbench for simulation
- uart-waveform.png : Simulation waveform

## Waveform
## Waveform

<img src="PASTE_THE_COPIED_URL_HERE" width="800">

## Result
The UART transmitter was successfully simulated and verified using waveform analysis.


## Author
Sujal Patil
