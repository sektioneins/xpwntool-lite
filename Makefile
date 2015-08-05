BIN = /usr/bin
GCC_BIN = $(BIN)/gcc
GCC_UNIVERSAL = $(GCC_BASE)

CFLAGS = 
GCC_BASE = $(GCC_BIN) -Os $(CFLAGS) -Wimplicit -I ./includes/

all: xpwntool

xpwntool: xpwntool.c img3.o img2.o abstractfile.o nor_files.o libxpwn.o lzssfile.o lzss.o
	$(GCC_UNIVERSAL) -std=gnu99 -lcrypto -lz -o $@ $^

%.o: %.c
	$(GCC_UNIVERSAL) -c -o $@ $< 

clean:
	rm -f *.o xpwntool
