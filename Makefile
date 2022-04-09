.PHONY: all run clean

TARGET = kilo

all: $(TARGET)

run: all
	./$(TARGET)

clean:
	rm -f $(TARGET)

$(TARGET): $(TARGET).c
	mkdir -p bin
	$(CC) $^ -o bin/$@ -Wall -Wextra -pedantic -std=c99