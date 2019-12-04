PROJECT = mat_cl

all: default


default:
	aoc -g -v -L . $(PROJECT).cl

optm:	
	aoc -g -v -c -L . $(PROJECT).cl --report
	
clean:
	rm -rf *.aoco *.aoclib *.aocx $(PROJECT) $(PROJECT)_rtl
