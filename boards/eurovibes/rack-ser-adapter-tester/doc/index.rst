.. zephyr:board:: eurovibes_stm32f103_rack-ser-adapter-tester

The Eurovibes STM32F103 based Rack Serial Adapter Tester board is a test unit
for RJ45 to DB9 serial adapter with a 3.5 inch display, 5 keys and SD card slot.
See the `STM32F103CB website`_ for more information about the MCU. More
information about the board, including schematics, is available from the
`Eurovibes GitHub`_.

Supported Features
==================

.. zephyr:board-supported-hw::

Pin Mapping
===========

Default Zephyr Peripheral Mapping:
----------------------------------

- I2C2 SDA/SCL   : PB10/PB11
- USART_1 TX/RX  : PA9/PA10

Hardware Configuration
----------------------
+---------------+---------+-----------------------------------------------+
| Solder bridge | Default | Description                                   |
+===============+=========+===============================================+
| JP201         | Open    | BOOT0: close to enter programming mode        |
+---------------+---------+-----------------------------------------------+
| JP202         | 1-2     | VBAT: 1-2: 1F Capacitor / 2-3: bypass         |
+---------------+---------+-----------------------------------------------+
| JP103         | Open    | M24C64 write protection: close to enable WR   |
+---------------+---------+-----------------------------------------------+

Clock Sources
-------------

The board has two external oscillators. The frequency of the slow clock (LSE)
is 32.768 kHz. The frequency of the main clock (HSE) is 8 MHz.

The default configuration sources the system clock from the PLL, which is
derived from HSE, and is set at 72 MHz.

Programming and Debugging
*************************

.. zephyr:board-supported-runners::

The MCU is normally programmed using the exposed SWD port (Tag-Connect TC2030).

Flashing an Application
=======================

Connect a Tag-Connect cable from a J-Link JTAG probe to the board and the
board should power ON.

.. zephyr-app-commands::
   :zephyr-app: samples/hello_world
   :board: eurovibes_stm32f103_rack-ser-adapter-tester
   :goals: build flash

Debugging
=========

The board can be debugged by connecting a JTAG probe to the Tag-Connect
connector:

Tag-Connect TC2030 SWD pinout
-----------------------------
+-----+-----------------------------------+
| Pin | Signal                            |
+=====+===================================+
| 1   | VCC                               |
+-----+-----------------------------------+
| 2   | SWDIO / TMS                       |
+-----+-----------------------------------+
| 3   | nRESET                            |
+-----+-----------------------------------+
| 4   | SWCLK / TCK                       |
+-----+-----------------------------------+
| 5   | GND (also connected to GNDDetect) |
+-----+-----------------------------------+
| 6   | SWO / TDO                         |
+-----+-----------------------------------+


References
**********

.. target-notes::

.. _Eurovibes GitHub:
   https://github.com/eurovibes/rack-ser-adapter

.. _STM32F103CB website:
   https://www.st.com/en/microcontrollers-microprocessors/stm32f103cb.html

.. _STM32F1 reference manual:
   https://www.st.com/resource/en/reference_manual/rm0008-stm32f101xx-stm32f102xx-stm32f103xx-stm32f105xx-and-stm32f107xx-advanced-armbased-32bit-mcus-stmicroelectronics.pdf
