.PHONY: all run clean

BIN_DIR = bin
TARGET = kilo

all: $(BIN_DIR)/$(TARGET)

run: all
	./$(BIN_DIR)/$(TARGET)

clean:
	rm -f $(BIN_DIR)/$(TARGET)

$(BIN_DIR)/$(TARGET): $(TARGET).c
	mkdir -p $(BIN_DIR)
	$(CC) $^ -o $@ -Wall -Wextra -pedantic -std=c99