.PHONY: clean all

.DEFAULT_GOAL := all
WORKING_DIR   := .
BUILD_DIR     := $(WORKING_DIR)/build
MK_CFG_NAME   := conf.mk

# expose utilities
include $(WORKING_DIR)/mk/utils.mk

# aggregate sources
include $(WORKING_DIR)/src/$(MK_CFG_NAME)

all:
	+@echo $(LIB_SRCS) $(APP_SRCS)

clean:
	rm -rf $(BUILD_DIR)
