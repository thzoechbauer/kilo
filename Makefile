.PHONY: all run clean

TARGET = kilo

all: $(TARGET)

run: all
	./$(TARGET)

clean:
	rm -f $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $^ -o $@ -Wall -Wextra -pedantic -std=c99