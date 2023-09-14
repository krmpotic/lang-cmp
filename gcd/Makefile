src = gcd

$(src).exe: $(src).asm
	nasm -f elf64 -o $(src).o $<
	ld -o $@ $(src).o

clean:
	rm -f $(src).o $(src).exe

.PHONY: clean
