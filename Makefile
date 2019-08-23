.PHONY: clean all

.DEFAULT_GOAL := all
WORKING_DIR   := .
BUILD_DIR     := $(WORKING_DIR)/build
MAKE_ARGS     := -C $(WORKING_DIR) BUILD_DIR=$(BUILD_DIR) \
                 WORKING_DIR=$(WORKING_DIR)

build-%:
	$(MAKE) -f $(WORKING_DIR)/mk/build.mk $(MAKE_ARGS) \
		$(BUILD_DIR)/$*.elf

run-%: build-%
	$(BUILD_DIR)/$*.elf

all: run-test

clean:
	rm -rf $(BUILD_DIR)
