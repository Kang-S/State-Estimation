# State-Estimation
:computer: C++ state estimation code for power systems :construction:

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

#### Modbus library - [libmodbus](https://github.com/stephane/libmodbus)

##### Installing

1) Installing dependencies.

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
#### Pymodbus: Modbus protocol implementation in python - [pymodbus](https://github.com/uzumaxy/pymodbus3)

##### Installing

You can install using pip OR easy install by issuing the following commands (make sure you have correct permissions or a virtualenv currently running):

```
$ easy_install -U pymodbus3
$ pip install -U pymodbus3
```
Example using pip:

```
$ sudo apt-get install python3-pip
$ pip-3.2 pip install -U pymodbus3
```

Otherwise you can pull the trunk source and install from there:

1) Clone pybmodbus master branch by,

```
$ git clone https://github.com/uzumaxy/pymodbus3.git
```

2) Enter the directory.

```
$ cd pymodbus3
```

3) Install

```
$ sudo python3 setup.py install
```

Either method will install all the required dependencies (at their appropriate versions) for your current python distribution.

### Source Download and Compilation

After having all the required dependencies installed, acquire the source code by cloning the git repository:

```
$ git clone https://github.com/harryskon/State-Estimation.git
```
Enter the directory and compile

```
$ make 
```
Important notes:

  * The files are compiled using C++14 standard.
  * Using [godbolt.org](https://gcc.godbolt.org/) it appears that the earilest version to support -std=c++14 is GCC 4.9.0 or Clang 3.5.0. Thus, to use the -std=c++14 flag, update g++/gcc.
  * To update gcc/g++ on Raspberry Pi 2 (wheezy) could be could be to install the g++ 4.9 packages from "Jessie". 

  First bring the current Wheezy up-to-date:
  ```
  $ sudo apt-get update
  $ sudo apt-get upgrade
  ```
  Then edit /etc/apt/sources.list so that you replace the string "wheezy" with "jessie":
  ```
  $ sudo cp /etc/apt/sources.list /etc/apt/sources.list.wheezy
  $ sudo vi /etc/apt/sources.list
  ```
  Now update the package list and install the 4.9 version of GCC/G++:
  ```
  $ sudo apt-get update
  $ sudo apt-get install gcc-4.9 g++-4.9
  ```
  After this revert to the "original" package list:
  ```
  $ sudo cp /etc/apt/sources.list.wheezy /etc/apt/sources.list
  $ sudo apt-get update
  ```
  This leaves the original gcc,g++ in place. Now, to compile with the 4.9 version, then either set the CC and CXX env vars accordingly or invoke the compilers as gcc-4.9 or g++-4.9 explicitly.

  The Makefile of the project has been updated accordingly to use any gcc/g++ version >= 4.9.

## Running the code

The executable after compilation ```estimation``` takes up to two arguments.

The first argument is the number(#) of IEEE-bus system.  

The second argument (optional) is the hardware-connected bus from the Hardware-In-The-Loop (HITL) testbed. 
If this argument is not given by the user then the code runs only based on the measurements input file. 

If the second argument (HITL bus) is a program input then the user **must** -- before execution (!) -- run the python script to use the synchronous modbus client implementation from pymodbus.

Example without HITL bus input (IEEE 14-bus system):
```
$ ./estimation 14
```

Example including the HITL bus (bus 3) input (IEEE 30-bus system):
```
$ ./estimation 30 3
```
## Files in the directory


## Authors

* **Harrys Kon** - [Personal Website](https://harrys.fyi/)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

