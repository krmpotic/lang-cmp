test: revargs
	@echo "=== revargs-test"
	@echo -n " asm: "
	@./revargs.asm.exe ena dva tri
	@echo -n "   c: "
	@./revargs.c.exe ena dva tri
	@echo -n "  go: "
	@./revargs.go.exe ena dva tri
	@echo -n "  js: "
	@node revargs.js ena dva tri
	@echo -n "  py: "
	@python revargs.py ena dva tri
	@echo -n "  rs: "
	@./revargs.rs.exe ena dva tri
	@echo -n "  sh: "
	@sh revargs.sh ena dva tri

revargs: revargs.asm.exe revargs.c.exe revargs.go.exe revargs.rs.exe

revargs.asm.exe: revargs.asm
	nasm -f elf64 -o revargs.asm.o revargs.asm
	ld -o revargs.asm.exe revargs.asm.o
	rm revargs.asm.o

revargs.c.exe: revargs.c
	cc -lm -o revargs.c.exe revargs.c 

revargs.go.exe: revargs.go
	go build -o revargs.go.exe revargs.go

revargs.rs.exe: revargs.rs
	rustc -o revargs.rs.exe revargs.rs

clean:
	rm -f *.exe

.PHONY: clean revargs revargs-test test
