test: prime
	@echo "=== prime-test"
	@echo -n " asm: "
	@./prime.asm.exe
	@echo -n "   c: "
	@./prime.c.exe
	@echo -n "  go: "
	@./prime.go.exe
	@echo -n "  js: "
	@node prime.js
	@echo -n "  rs: "
	@./prime.rs.exe
	@echo -n "  sh: "
	@sh prime.sh

prime: prime.asm.exe prime.c.exe prime.go.exe prime.rs.exe

prime.asm.exe: prime.asm
	nasm -f elf64 -o prime.asm.o prime.asm
	ld -o prime.asm.exe prime.asm.o
	rm prime.asm.o

prime.c.exe: prime.c
	cc -lm -o prime.c.exe prime.c 

prime.go.exe: prime.go
	go build -o prime.go.exe prime.go

prime.rs.exe: prime.rs
	rustc -o prime.rs.exe prime.rs

clean:
	rm -f *.exe

.PHONY: clean prime prime-test test
