prime: prime.c.exe prime.rs.exe prime.go.exe

prime-test:
	@echo -n "   c: "
	@./prime.c.exe
	@echo -n "  rs: "
	@./prime.rs.exe
	@echo -n "  go: "
	@./prime.go.exe
	@echo -n "  sh: "
	@sh prime.sh

prime.c.exe: prime.c
	cc -lm -o prime.c.exe prime.c 

prime.rs.exe: prime.rs
	rustc -o prime.rs.exe prime.rs

prime.go.exe: prime.go
	go build -o prime.go.exe prime.go

clean:
	rm -f *.exe

.PHONY: prime
