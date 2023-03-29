![Blue Pill: Variants](https://stm32-base.org/assets/img/boards/STM32F103C8T6_Blue_Pill-4.jpg)

# Highlights of STM32F103C8T6 MCU

Now that we have seen a little bit about the Blue Pill Board, let us now understand some important features of the heart of the board i.e. the STM32F103C8T6 Microcontroller. As mentioned earlier, this MCU contain an ARM 32-bit Cortex – M3 CPU core with a maximum frequency of 72 MHz.

Let us now see some specifications of this MCU implemented in the Blue pill board.

- Memories: contains 64 Kbytes of Flash and 20 Kbytes of SRAM
- GPIO Pins – 32 with external interrupt capability
- Timers – 3 16-bit Timers, 1 16-bit PWM Timer
- PWM Pins – 15
- Analog – 10 Channels of 12-bit ADC
- I2C – 2 I2C Peripherals
- USART – 3 USART Peripherals with hardware control
- SPI – 2 SPI Peripherals
- Other Peripherals – USB 2.0 Full Speed, CAN 2.0B

[`stm32f103c8t6 datasheet`](https://www.st.com/resource/en/datasheet/stm32f103cb.pdf)

# 硬件功能介绍

##  Microcontroller

| Part             | [STM32F103C8T6](https://www.st.com/en/microcontrollers-microprocessors/stm32f103c8.html) |
| ---------------- | ------------------------------------------------------------ |
| Manufacturer     | [ST-Microelectronics](https://www.st.com/content/st_com/en.html) |
| Core             | [Arm Cortex-M3](https://developer.arm.com/ip-products/processors/cortex-m/cortex-m3) |
| Max. Clock Speed | 72MHz                                                        |
| Package          | LQFP 48 pins                                                 |



## Internal memories

| FLASH | 64KiB |
| ----- | ----- |
| SRAM  | 20KiB |

## Oscillators

| HSI  | 8MHz      |
| ---- | --------- |
| LSI  | 40kHz     |
| HSE  | 8MHz      |
| LSE  | 32.768kHz |

## Power

| Sources        | Any +3.3V pin (+3.3V)Any +5V pin (+5V)USB connector (+5V) |
| -------------- | --------------------------------------------------------- |
| VDDA pin       | No                                                        |
| VSSA pin       | No                                                        |
| VREF- pin      | No                                                        |
| VREF+ pin      | No                                                        |
| Backup battery | None                                                      |

## Regulator

| Manufacturer | [Shanghai TX Electronics Sci-Tech Co., Ltd](http://txsemi.com/) |
| ------------ | ------------------------------------------------------------ |
| Part         | [TX6211B (`DE=A1D`)](http://www.txsemi.com/Upload/TX6211B_V12-11264794020.pdf) |
| Package      | SOT23-5 5 pins                                               |
| Input        | +3.6V to +5.5V                                               |
| Output       | +3.3V @ 300mA                                                |
| Datasheet    | [TX6211B.pdf](https://stm32-base.org/assets/pdf/regulators/TX6211B.pdf) |

## PCB

| Color        | Blue        |
| ------------ | ----------- |
| Size (w x l) | 23mm x 53mm |
| Mounting     | Breadboard  |

## Resources

- [`Schematic`](https://stm32-base.org/assets/pdf/boards/original-schematic-STM32F103C8T6-Blue_Pill.pdf)

## Pinout



![img](https://erc-bpgc.github.io/handbook/electronics/Development_Boards/images/STM32-Pin-Details_0.png)



# 输入和输出

------

## Reset button

| Name         | RESET      |
| ------------ | ---------- |
| Reference    | -          |
| Type         | Button     |
| Connected to | NRST       |
| Mode         | Active low |

## BOOT0 jumper

| Name         | -            |
| ------------ | ------------ |
| Reference    | -            |
| Type         | 2-way jumper |
| Connected to | BOOT0        |
| Mode         | N.A.         |

## BOOT1 jumper

| Name         | -            |
| ------------ | ------------ |
| Reference    | -            |
| Type         | 2-way jumper |
| Connected to | PB2          |
| Mode         | N.A.         |

## Power LED

| Name         | PWR        |
| ------------ | ---------- |
| Reference    | -          |
| Type         | LED        |
| Connected to | +3.3V rail |
| Mode         | N.A.       |

## User LED

| Name         | PC13 |
| ------------ | ---- |
| Reference    | -    |
| Type         | LED  |
| Connected to | PC13 |
| Mode         | Sink |

## How to Use the BOOT Pins

As mentioned earlier, the BOOT0 and BOOT1 pins of the MCU are used to select the memory from which it boots. The following image shows three different options of boot spaces based on these pins.

[![img](https://www.electronicshub.org/wp-content/uploads/2020/02/STM32-BOOT-Pins.jpg)](https://www.electronicshub.org/wp-content/uploads/2020/02/STM32-BOOT-Pins.jpg)



# 对外接口

------

## Header 1 properties

| Name      | Unknown                         |
| --------- | ------------------------------- |
| Reference | None                            |
| Type      | pin header (2.54mm, 20x1, male) |

## Header 1 pins

| #    | Name | Function | Connected to |
| :--- | :--- | :------- | :----------- |
| 1    | VB   | -        | VBAT         |
| 2    | C13  | -        | PC13         |
| 3    | C14  | -        | PC14         |
| 4    | C15  | -        | PC15         |
| 5    | A0   | -        | PA0          |
| 6    | A1   | -        | PA1          |
| 7    | A2   | -        | PA2          |
| 8    | A3   | -        | PA3          |
| 9    | A4   | -        | PA4          |
| 10   | A5   | -        | PA5          |
| 11   | A6   | -        | PA6          |
| 12   | A7   | -        | PA7          |
| 13   | B0   | -        | PB0          |
| 14   | B1   | -        | PB1          |
| 15   | B10  | -        | PB10         |
| 16   | B11  | -        | PB11         |
| 17   | R    | -        | NRST         |
| 18   | 3.3  | -        | +3.3V rail   |
| 19   | G    | -        | Ground plane |
| 20   | G    | -        | Ground plane |

## Header 2 properties

| Name      | Unknown                         |
| --------- | ------------------------------- |
| Reference | None                            |
| Type      | pin header (2.54mm, 20x1, male) |

## Header 2 pins

| #    | Name | Function | Connected to |
| :--- | :--- | :------- | :----------- |
| 1    | 3.3  | -        | +3.3V rail   |
| 2    | G    | -        | Ground plane |
| 3    | 5V   | -        | +5V rail     |
| 4    | B9   | -        | PB9          |
| 5    | B8   | -        | PB8          |
| 6    | B7   | -        | PB7          |
| 7    | B6   | -        | PB6          |
| 8    | B5   | -        | PB5          |
| 9    | B4   | -        | PB4          |
| 10   | B3   | -        | PB3          |
| 11   | A15  | -        | PA15         |
| 12   | A12  | -        | PA12         |
| 13   | A11  | -        | PA11         |
| 14   | A10  | -        | PA10         |
| 15   | A9   | -        | PA9          |
| 16   | A8   | -        | PA8          |
| 17   | B15  | -        | PB15         |
| 18   | B14  | -        | PB14         |
| 19   | B13  | -        | PB13         |
| 20   | B12  | -        | PB12         |

## SWD header properties

| Name      | SWD                            |
| --------- | ------------------------------ |
| Reference | None                           |
| Type      | pin header (2.54mm, 4x1, male) |

## SWD header pins

| #    | Name | Function | Connected to |
| :--- | :--- | :------- | :----------- |
| 1    | 3V3  | VCC      | +3.3V rail   |
| 2    | DIO  | SWDIO    | PA13         |
| 3    | CLK  | SWCLK    | PA14         |
| 4    | GND  | GND      | Ground plane |

## USB connector properties

| Name      | USB       |
| --------- | --------- |
| Reference | None      |
| Type      | USB Micro |

## USB connector pins

| #    | Name | Function | Connected to |
| :--- | :--- | :------- | :----------- |
| 1    | -    | VCC      | +5V rail     |
| 2    | -    | D-       | PA11         |
| 3    | -    | D+       | PA12         |
| 4    | -    | ID       | N.C.         |
| 5    | -    | GND      | Ground plane |

# 软件入门

Some guides are specific to the STM32-base project. Other guides may be useful when you are not even using the STM32-base project.

1. [Getting started with STM32](https://stm32-base.org/guides/getting-started)
2. [Getting started with PlatformIO](https://stm32-base.org/guides/platformio)
3. [Setting up STM32-base](https://stm32-base.org/guides/setup)
4. [Connecting your debugger](https://stm32-base.org/guides/connecting-your-debugger)
5. [Changing template code](https://stm32-base.org/guides/changing-template-code)
6. [Flashing](https://stm32-base.org/guides/flashing)
7. [Using STM32duino bootloader (Arduino IDE)](https://maker.pro/arduino/tutorial/how-to-program-the-stm32-blue-pill-with-arduino-ide)

# Reference

- `https://stm32-base.org/`

