TARGET   = cmp_cyr.com

MAPFILE  = cmp_cyr.txt

ASM      = yasm

ASMFLAGS = -a x86 -f bin --mapfile=$(MAPFILE)

SOURCES  = cmp_cyr.s

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(ASM) $(ASMFLAGS) -o $(TARGET) $(SOURCES)

clean:
	rm -f $(TARGET) $(MAPFILE)

