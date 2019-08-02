SRC_LOC := $(call get_current_makefile_dir)
include $(SRC_LOC)/app/$(MK_CFG_NAME)
include $(SRC_LOC)/lib/$(MK_CFG_NAME)
