NASM = nasm
SRC = ./src/boot.asm
OUT = ./bin/boot.bin

all: $(OUT)

$(OUT): $(SRC)
	$(NASM) -f bin $< -o $@

clean:
	rm -f $(OUT)

