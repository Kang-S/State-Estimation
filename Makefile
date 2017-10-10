CPP = g++
DEBUG = -g
CPP_ANSI_OPTS = -std=c++14
PTHREAD=-pthread
RM=rm -f
LDFLAGS=$(PTHREAD)
CPPFLAGS = -Wall $(DEBUG) $(CPP_ANSI_OPTS)
LDLIBS = -L/usr/local/lib -lmodbus
INC = -I/usr/include/modbus/

SOURCES= main.cpp tables.cpp cinv.cpp zdatas.cpp 
EXECUTABLE=estimation
    
$(EXECUTABLE): 
	$(CPP) $(CPPFLAGS) $(LDFLAGS) $(SOURCES) -o $@ $(LDLIBS) $(INC)

clean:
	$(RM) $(EXECUTABLE)

