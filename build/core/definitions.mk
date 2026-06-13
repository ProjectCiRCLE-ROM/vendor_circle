#
# Lineage-specific macros
#
define uniq
$(if $1,$(firstword $1) $(call uniq,$(filter-out $(firstword $1),$1)))
endef

# Include board/platform macros
include vendor/circle/build/core/utils.mk

# Include default installed modules
include vendor/circle/build/core/default_installed_modules.mk
