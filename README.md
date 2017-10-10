/*----------------------------------------------------*/
/*--Author: Harrys Kon (Charalambos Konstantinou)-----*/
/*--W: https://harrys.fyi/----------------------------*/
/*--E: konharrys@gmail.com----------------------------*/
/*----------------------------------------------------*/
# State-Estimation
C++ state estimation code for power systems

This is the first attempt to publish C++ code related to power systems operation. The aim is to create a benchmark library of emerging power system algorithms in order to evaluate them in any microprocessor platform. 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
libmodbus: Modbus library
```

1) Installing dependancies.

```
sudo apt-get install -y autoconf libtool
```

2) Clone libmodbus master branch by,

```
git clone https://github.com/stephane/libmodbus/
```

3) Enter the directory.

```
cd libmodbus
```

4) Configure and install

```
./autogen.sh && ./configure –prefix=/usr && make && sudo make install
```

5) To test the libmodbus, try examples under tests folder.

To compile code, use 
```
gcc filename.c -o filename $(pkg-config --libs --cflags libmodbus)
```

### Source Download and Compilation

After having all the required dependencies installed, acquire the source code by cloning the git repository:

```
git clone https://github.com/harryskon/State-Estimation.git
```
Enter the directory and compile

```
make
```
Important note:

  * The files are compiled using C++14 standard.

## Running the code

The executable after compilation ```estimation``` takes up to two arguments.

The first argument is the number(#) of IEEE-bus system.
The second argument (optional) is the hardware-connected bus from the Hardware-In-The-Loop (HITL) testbed. If this argument is not given by the user then the code runs only based on the measurements input file.   

Example:
```
./estimation 14 6
```

```

## Authors

* **Harrys Kon** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

