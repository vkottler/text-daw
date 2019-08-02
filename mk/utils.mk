#
# Get the last element in a space-delimited list.
# https://ftp.gnu.org/old-gnu/Manuals/make/html_node/make_17.html
#
# 1: a space-delimited list of tokens
#
get_last_word = $(word $(words $(1)), $(1))

#
# Strip the name filename from a makefile path.
# https://www.gnu.org/software/make/manual/html_node/Text-Functions.html
#
# 1: makefile path
# 2: makefile name
#
makefile_to_dir = $(patsubst %/$(2),%,$(1))

#
# Allows any makefile to include other makefiles with relative paths only.
#
get_current_makefile_dir = $(call makefile_to_dir,$(call get_last_word,$(MAKEFILE_LIST)),$(MK_CFG_NAME))

#
# Aggregate files with a specific extension from a given directory into
# a variable.
#
# 1: directory
# 2: file extension
#
get_files = $(wildcard $(1)/*.$(2))
