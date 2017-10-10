#----------------------------------------------------#
#--Author: Harrys Kon (Charalambos Konstantinou)-----#
#--W: https://harrys.fyi/----------------------------#
#--E: konharrys@gmail.com----------------------------#
#----------------------------------------------------#
CPP = g++
DEBUG = -g
CPP_ANSI_OPTS = -std=c++14
PTHREAD=-pthread
RM=rm -f
MODBUS = `pkg-config --libs --cflags libmodbus`
LDFLAGS=$(PTHREAD)
CPPFLAGS = -Wall $(DEBUG) $(CPP_ANSI_OPTS)
LDLIBS = -L/usr/local/lib -lmodbus
INC = -I/usr/include/modbus/

SOURCES= main.cpp tables.cpp cinv.cpp zdatas.cpp 
EXECUTABLE=estimation
    
$(EXECUTABLE): 
	$(CPP) $(CPPFLAGS) $(LDFLAGS) $(SOURCES) -o $@ $(MODBUS)

clean:
	$(RM) $(EXECUTABLE)

