#
# set WORKING_DIR, BUILD_DIR
#
.PHONY:
.SECONDARY:

MK_CFG_NAME      := conf.mk

# expose utilities
include $(WORKING_DIR)/mk/utils.mk

# aggregate sources
include $(WORKING_DIR)/src/$(MK_CFG_NAME)

TOOLCHAIN_PREFIX :=
CXX              := $(TOOLCHAIN_PREFIX)g++
OBJS             := $(LIB_SRCS:%.cpp=$(BUILD_DIR)/%.o)
INCLUDES         := -I $(WORKING_DIR)/include
WARNINGS         := -Wall -Wpedantic
CXXFLAGS         := -g -std=c++11 $(WARNINGS) $(INCLUDES)
LDFLAGS          :=

$(BUILD_DIR)/%.o: %.cpp
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

$(BUILD_DIR)/%.elf: $(BUILD_DIR)/$(APP_LOC)/%.o $(OBJS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@
