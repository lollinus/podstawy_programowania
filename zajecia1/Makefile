

# Main rule
all: program1.exe

# program rules
program1.exe: program1.o

# object rules
program1.o: program1.pas
	fpc program1.pas

# cleanup rules
clean: 
	del *.o *.exe