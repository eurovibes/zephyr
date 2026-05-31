#
# Copyright (c) 2026 Benedikt Spranger
#
# SPDX-License-Identifier: Apache-2.0
#

board_runner_args(jlink "--device=STM32F103CB" "--speed=4000")

include(${ZEPHYR_BASE}/boards/common/openocd-stm32.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
include(${ZEPHYR_BASE}/boards/common/stm32cubeprogrammer.board.cmake)
