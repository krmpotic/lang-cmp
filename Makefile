test: prime-test

prime: prime.c.exe prime.go.exe prime.rs.exe

prime-test: prime
	@echo -n "   c: "
	@./prime.c.exe
	@echo -n "  go: "
	@./prime.go.exe
	@echo -n "  rs: "
	@./prime.rs.exe
	@echo -n "  sh: "
	@sh prime.sh

prime.c.exe: prime.c
	cc -lm -o prime.c.exe prime.c 

prime.go.exe: prime.go
	go build -o prime.go.exe prime.go

prime.rs.exe: prime.rs
	rustc -o prime.rs.exe prime.rs

clean:
	rm -f *.exe

.PHONY: clean prime prime-test test
