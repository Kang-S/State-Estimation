# State-Estimation
C++ state estimation code for power systems

This is the first attempt to publish C++ code related to power systems operation.   
The aim is to create a benchmark library of emerging power system algorithms in order to evaluate them in any microprocessor platform. 

## TODO

Run the state estimation algorithm on a Raspberry Pi & add a Hardware-Performance-Counter (HPC) routine to monitor how False-Data-Injection (FDI) attacks can be detected. 

- More on malware detection with HPCs: [Malicious firmware detection with hardware performance counters](http://ieeexplore.ieee.org/abstract/document/7470546/)

- More on state estimation and FDI attacks: [A Case Study on Implementing False Data Injection Attacks Against Nonlinear State Estimation](https://dl.acm.org/citation.cfm?id=2994491)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

### Prerequisites

What things you need to install the software and how to install them

Modbus library - [libmodbus](https://github.com/stephane/libmodbus)

1) Installing dependancies.

```
$ sudo apt-get install -y autoconf libtool
```

2) Clone libmodbus master branch by,

```
$ git clone https://github.com/stephane/libmodbus/
```

3) Enter the directory.

```
$ cd libmodbus
```

4) Configure and install

```
$ ./autogen.sh && ./configure --prefix=/usr && make && sudo make install
```

5) To test the libmodbus, try examples under tests folder.

To compile code, use 
```
$ gcc filename.c -o filename $(pkg-config --libs --cflags libmodbus)
```

### Source Download and Compilation

After having all the required dependencies installed, acquire the source code by cloning the git repository:

```
$ git clone https://github.com/harryskon/State-Estimation.git
```
Enter the directory and compile

```
$ make 
```
Important note:

  * The files are compiled using C++14 standard.

## Running the code

The executable after compilation ```estimation``` takes up to two arguments.

The first argument is the number(#) of IEEE-bus system.  
The second argument (optional) is the hardware-connected bus from the Hardware-In-The-Loop (HITL) testbed. If this argument is not given by the user then the code runs only based on the measurements input file.   

Example:
```
$ ./estimation 14 6
```
## Files in the directory


## Authors

* **Harrys Kon** - [Personal Website](https://harrys.fyi/)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

