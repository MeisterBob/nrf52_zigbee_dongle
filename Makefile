PROJECT_NAME     := zigbee_cli_agent_router_pca10056_mbr
TARGETS          := nrf52840_xxaa
OUTPUT_DIRECTORY := _build

SDK_ROOT := $(NRF_ZB_SDK)
PROJ_DIR := .

$(OUTPUT_DIRECTORY)/nrf52840_xxaa.out: \
    LINKER_SCRIPT := zigbee_cli_agent_router_gcc_nrf52.ld

# Source files common to all targets
SRC_FILES += \
    $(PROJ_DIR)/main.c \
    $(SDK_ROOT)/components/boards/boards.c \
    $(SDK_ROOT)/components/drivers_nrf/nrf_soc_nosd/nrf_nvic.c \
    $(SDK_ROOT)/components/drivers_nrf/nrf_soc_nosd/nrf_soc.c \
    $(SDK_ROOT)/components/libraries/assert/assert.c \
    $(SDK_ROOT)/components/libraries/atomic_fifo/nrf_atfifo.c \
    $(SDK_ROOT)/components/libraries/atomic/nrf_atomic.c \
    $(SDK_ROOT)/components/libraries/balloc/nrf_balloc.c \
    $(SDK_ROOT)/components/libraries/bsp/bsp.c \
    $(SDK_ROOT)/components/libraries/button/app_button.c \
    $(SDK_ROOT)/components/libraries/cli/cdc_acm/nrf_cli_cdc_acm.c \
    $(SDK_ROOT)/components/libraries/cli/nrf_cli.c \
    $(SDK_ROOT)/components/libraries/cli/rtt/nrf_cli_rtt.c \
    $(SDK_ROOT)/components/libraries/cli/uart/nrf_cli_uart.c \
    $(SDK_ROOT)/components/libraries/experimental_section_vars/nrf_section_iter.c \
    $(SDK_ROOT)/components/libraries/fstorage/nrf_fstorage_nvmc.c \
    $(SDK_ROOT)/components/libraries/fstorage/nrf_fstorage.c \
    $(SDK_ROOT)/components/libraries/log/src/nrf_log_backend_rtt.c \
    $(SDK_ROOT)/components/libraries/log/src/nrf_log_backend_serial.c \
    $(SDK_ROOT)/components/libraries/log/src/nrf_log_default_backends.c \
    $(SDK_ROOT)/components/libraries/log/src/nrf_log_frontend.c \
    $(SDK_ROOT)/components/libraries/log/src/nrf_log_str_formatter.c \
    $(SDK_ROOT)/components/libraries/memobj/nrf_memobj.c \
    $(SDK_ROOT)/components/libraries/pwr_mgmt/nrf_pwr_mgmt.c \
    $(SDK_ROOT)/components/libraries/queue/nrf_queue.c \
    $(SDK_ROOT)/components/libraries/ringbuf/nrf_ringbuf.c \
    $(SDK_ROOT)/components/libraries/scheduler/app_scheduler.c \
    $(SDK_ROOT)/components/libraries/sortlist/nrf_sortlist.c \
    $(SDK_ROOT)/components/libraries/strerror/nrf_strerror.c \
    $(SDK_ROOT)/components/libraries/timer/app_timer2.c \
    $(SDK_ROOT)/components/libraries/timer/drv_rtc.c \
    $(SDK_ROOT)/components/libraries/usbd/app_usbd_core.c \
    $(SDK_ROOT)/components/libraries/usbd/app_usbd_serial_num.c \
    $(SDK_ROOT)/components/libraries/usbd/app_usbd_string_desc.c \
    $(SDK_ROOT)/components/libraries/usbd/app_usbd.c \
    $(SDK_ROOT)/components/libraries/usbd/class/cdc/acm/app_usbd_cdc_acm.c \
    $(SDK_ROOT)/components/libraries/util/app_error_handler_gcc.c \
    $(SDK_ROOT)/components/libraries/util/app_error.c \
    $(SDK_ROOT)/components/libraries/util/app_util_platform.c \
    $(SDK_ROOT)/components/libraries/util/nrf_assert.c \
    $(PROJ_DIR)/sdk/zigbee_cli_cmd_attr_report.c \
    $(SDK_ROOT)/components/zigbee/cli/zigbee_cli_cmd_attr.c \
    $(SDK_ROOT)/components/zigbee/cli/zigbee_cli_cmd_bdb.c \
    $(SDK_ROOT)/components/zigbee/cli/zigbee_cli_cmd_generic_cmd.c \
    $(SDK_ROOT)/components/zigbee/cli/zigbee_cli_cmd_ping.c \
    $(SDK_ROOT)/components/zigbee/cli/zigbee_cli_cmd_radio.c \
    $(SDK_ROOT)/components/zigbee/cli/zigbee_cli_cmd_zcl.c \
    $(SDK_ROOT)/components/zigbee/cli/zigbee_cli_cmd_zdo.c \
    $(SDK_ROOT)/components/zigbee/cli/zigbee_cli_cmd.c \
    $(SDK_ROOT)/components/zigbee/cli/zigbee_cli_utils.c \
    $(SDK_ROOT)/components/zigbee/cli/zigbee_cli.c \
    $(PROJ_DIR)/sdk/zigbee_helpers.c \
    $(SDK_ROOT)/components/zigbee/common/zigbee_logger_eprxzcl.c \
    $(SDK_ROOT)/external/fnmatch/fnmatch.c \
    $(SDK_ROOT)/external/fprintf/nrf_fprintf_format.c \
    $(SDK_ROOT)/external/fprintf/nrf_fprintf.c \
    $(SDK_ROOT)/external/segger_rtt/SEGGER_RTT_printf.c \
    $(SDK_ROOT)/external/segger_rtt/SEGGER_RTT_Syscalls_GCC.c \
    $(SDK_ROOT)/external/segger_rtt/SEGGER_RTT.c \
    $(SDK_ROOT)/external/utf_converter/utf.c \
    $(SDK_ROOT)/external/zboss/addons/zcl/zb_zcl_common_addons.c \
    $(SDK_ROOT)/external/zboss/addons/zcl/zb_zcl_ota_upgrade_addons.c \
    $(SDK_ROOT)/external/zboss/osif/zb_nrf52_common.c \
    $(SDK_ROOT)/external/zboss/osif/zb_nrf52_nrf_logger.c \
    $(SDK_ROOT)/external/zboss/osif/zb_nrf52_nvram.c \
    $(SDK_ROOT)/external/zboss/osif/zb_nrf52_sdk_config_deps.c \
    $(SDK_ROOT)/external/zboss/osif/zb_nrf52_timer.c \
    $(SDK_ROOT)/external/zboss/osif/zb_nrf52_transceiver.c \
    $(SDK_ROOT)/external/zboss/zb_error/zb_error_to_string.c \
    $(SDK_ROOT)/integration/nrfx/legacy/nrf_drv_clock.c \
    $(SDK_ROOT)/integration/nrfx/legacy/nrf_drv_power.c \
    $(SDK_ROOT)/integration/nrfx/legacy/nrf_drv_rng.c \
    $(SDK_ROOT)/integration/nrfx/legacy/nrf_drv_uart.c \
    $(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_clock.c \
    $(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_gpiote.c \
    $(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_power.c \
    $(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_rng.c \
    $(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_systick.c \
    $(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_timer.c \
    $(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_uart.c \
    $(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_uarte.c \
    $(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_usbd.c \
    $(SDK_ROOT)/modules/nrfx/drivers/src/prs/nrfx_prs.c \
    $(SDK_ROOT)/modules/nrfx/hal/nrf_ecb.c \
    $(SDK_ROOT)/modules/nrfx/hal/nrf_nvmc.c \
    $(SDK_ROOT)/modules/nrfx/mdk/gcc_startup_nrf52840.S \
    $(SDK_ROOT)/modules/nrfx/mdk/system_nrf52840.c \
    $(SDK_ROOT)/modules/nrfx/soc/nrfx_atomic.c \

# Include folders common to all targets
INC_FOLDERS += \
    $(PROJ_DIR) \
    $(SDK_ROOT)/components \
    $(SDK_ROOT)/components/boards \
    $(SDK_ROOT)/components/drivers_nrf/nrf_soc_nosd \
    $(SDK_ROOT)/components/libraries/atomic \
    $(SDK_ROOT)/components/libraries/atomic_fifo \
    $(SDK_ROOT)/components/libraries/balloc \
    $(SDK_ROOT)/components/libraries/bsp \
    $(SDK_ROOT)/components/libraries/button \
    $(SDK_ROOT)/components/libraries/cli \
    $(SDK_ROOT)/components/libraries/cli/cdc_acm \
    $(SDK_ROOT)/components/libraries/cli/rtt \
    $(SDK_ROOT)/components/libraries/cli/uart \
    $(SDK_ROOT)/components/libraries/delay \
    $(SDK_ROOT)/components/libraries/experimental_section_vars \
    $(SDK_ROOT)/components/libraries/fstorage \
    $(SDK_ROOT)/components/libraries/log \
    $(SDK_ROOT)/components/libraries/log/src \
    $(SDK_ROOT)/components/libraries/memobj \
    $(SDK_ROOT)/components/libraries/mutex \
    $(SDK_ROOT)/components/libraries/pwr_mgmt \
    $(SDK_ROOT)/components/libraries/queue \
    $(SDK_ROOT)/components/libraries/ringbuf \
    $(SDK_ROOT)/components/libraries/scheduler \
    $(SDK_ROOT)/components/libraries/sortlist \
    $(SDK_ROOT)/components/libraries/strerror \
    $(SDK_ROOT)/components/libraries/timer \
    $(SDK_ROOT)/components/libraries/usbd \
    $(SDK_ROOT)/components/libraries/usbd/class/cdc \
    $(SDK_ROOT)/components/libraries/usbd/class/cdc/acm \
    $(SDK_ROOT)/components/libraries/util \
    $(SDK_ROOT)/components/softdevice/mbr/headers \
    $(SDK_ROOT)/components/toolchain/cmsis/include \
    $(SDK_ROOT)/components/zigbee/cli \
    $(SDK_ROOT)/components/zigbee/common \
    $(SDK_ROOT)/external/fnmatch \
    $(SDK_ROOT)/external/fprintf \
    $(SDK_ROOT)/external/nRF-IEEE-802.15.4-radio-driver/src \
    $(SDK_ROOT)/external/nRF-IEEE-802.15.4-radio-driver/src/fem \
    $(SDK_ROOT)/external/nRF-IEEE-802.15.4-radio-driver/src/fem/three_pin_gpio \
    $(SDK_ROOT)/external/segger_rtt \
    $(SDK_ROOT)/external/utf_converter \
    $(SDK_ROOT)/external/zboss/addons \
    $(SDK_ROOT)/external/zboss/include \
    $(SDK_ROOT)/external/zboss/include/ha \
    $(SDK_ROOT)/external/zboss/include/osif \
    $(SDK_ROOT)/external/zboss/include/zcl \
    $(SDK_ROOT)/external/zboss/osif \
    $(SDK_ROOT)/external/zboss/zb_error \
    $(SDK_ROOT)/integration/nrfx \
    $(SDK_ROOT)/integration/nrfx/legacy \
    $(SDK_ROOT)/modules/nrfx \
    $(SDK_ROOT)/modules/nrfx/drivers/include \
    $(SDK_ROOT)/modules/nrfx/hal \
    $(SDK_ROOT)/modules/nrfx/mdk \

# Libraries common to all targets
LIB_FILES += \
    $(SDK_ROOT)/external/zboss/lib/gcc/libzboss.a \
    $(SDK_ROOT)/external/zboss/lib/gcc/nrf52840/nrf_radio_driver.a \

# Optimization flags
OPT = -O0 -ggdb3
# Uncomment the line below to enable link time optimization
#OPT += -flto

# C flags common to all targets
CFLAGS += $(OPT)
CFLAGS += -DAPP_TIMER_V2
CFLAGS += -DAPP_TIMER_V2_RTC1_ENABLED
CFLAGS += -DBOARD_PCA10059
CFLAGS += -DCONFIG_GPIO_AS_PINRESET
CFLAGS += -DENABLE_FEM
CFLAGS += -DFLOAT_ABI_HARD
CFLAGS += -DMBR_PRESENT
CFLAGS += -DNRF52840_XXAA
CFLAGS += -DZB_TRACE_LEVEL=0
CFLAGS += -DZB_TRACE_MASK=0
#CFLAGS += -DDEBUG_NRF
CFLAGS += -mcpu=cortex-m4
CFLAGS += -mthumb -mabi=aapcs
CFLAGS += -Wall -Werror
CFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
# keep every function in a separate section, this allows linker to discard unused ones
CFLAGS += -ffunction-sections -fdata-sections -fno-strict-aliasing
CFLAGS += -fno-builtin -fshort-enums -Wno-packed-bitfield-compat

# C++ flags common to all targets
CXXFLAGS += $(OPT)
# Assembler flags common to all targets
ASMFLAGS += -ggdb3
ASMFLAGS += -mcpu=cortex-m4
ASMFLAGS += -mthumb -mabi=aapcs
ASMFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
ASMFLAGS += -DAPP_TIMER_V2
ASMFLAGS += -DAPP_TIMER_V2_RTC1_ENABLED
ASMFLAGS += -DBOARD_PCA10059
ASMFLAGS += -DCONFIG_GPIO_AS_PINRESET
ASMFLAGS += -DENABLE_FEM
ASMFLAGS += -DFLOAT_ABI_HARD
ASMFLAGS += -DMBR_PRESENT
ASMFLAGS += -DNRF52840_XXAA

# Linker flags
LDFLAGS += $(OPT)
LDFLAGS += -mthumb -mabi=aapcs -L$(SDK_ROOT)/modules/nrfx/mdk -T$(LINKER_SCRIPT)
LDFLAGS += -mcpu=cortex-m4
LDFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
# let linker dump unused sections
LDFLAGS += -Wl,--gc-sections
# use newlib in nano version
LDFLAGS += --specs=nano.specs

nrf52840_xxaa: CFLAGS += -D__HEAP_SIZE=8192
nrf52840_xxaa: CFLAGS += -D__STACK_SIZE=8192
nrf52840_xxaa: ASMFLAGS += -D__HEAP_SIZE=8192
nrf52840_xxaa: ASMFLAGS += -D__STACK_SIZE=8192

# Add standard libraries at the very end of the linker input, after all objects
# that may need symbols provided by these libraries.
LIB_FILES += -lc -lnosys -lm -lstdc++

.PHONY: default help

# Default target - first one defined
default: nrf52840_xxaa

# Print all targets that can be built
help:
	@echo following targets are available:
	@echo		nrf52840_xxaa
	@echo		flash_mbr
	@echo		sdk_config - starting external tool for editing sdk_config.h
	@echo		flash            - flashing binary

TEMPLATE_PATH := $(SDK_ROOT)/components/toolchain/gcc


include $(TEMPLATE_PATH)/Makefile.common

$(foreach target, $(TARGETS), $(call define_target, $(target)))

.PHONY: flash flash_mbr erase

# Flash the program
flash: default
	@echo Flashing: $(OUTPUT_DIRECTORY)/nrf52840_xxaa.hex
	nrfjprog -f nrf52 --program $(OUTPUT_DIRECTORY)/nrf52840_xxaa.hex --sectorerase
	nrfjprog -f nrf52 --reset

# Flash MBR
flash_mbr:
	@echo Flashing: mbr_nrf52_2.4.1_mbr.hex
	nrfjprog -f nrf52 --program $(SDK_ROOT)/components/softdevice/mbr/hex/mbr_nrf52_2.4.1_mbr.hex --sectorerase
	nrfjprog -f nrf52 --reset

# update
update: default
	nrfutil pkg generate --hw-version 52 --sd-req 0 --application _build/nrf52840_xxaa.hex --application-version 1 _build/dfu.zip
	nrfjprog --reset
	nrfutil dfu usb-serial -pkg _build/dfu.zip -p /dev/ttyACM0

erase:
	nrfjprog -f nrf52 --eraseall

SDK_CONFIG_FILE := ../config/sdk_config.h
CMSIS_CONFIG_TOOL := $(SDK_ROOT)/external_tools/cmsisconfig/CMSIS_Configuration_Wizard.jar
sdk_config:
	java -jar $(CMSIS_CONFIG_TOOL) $(SDK_CONFIG_FILE)
