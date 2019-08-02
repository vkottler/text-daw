.PHONY: clean

WORKING_DIR := .
BUILD_DIR   := $(WORKING_DIR)/build

clean:
	rm -rf $(BUILD_DIR)
