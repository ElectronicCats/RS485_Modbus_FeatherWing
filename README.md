# RS485 Modbus FeatherWing

A Feather board without ambition is a Feather board without FeatherWings! This is a Wing board for the SP3485 RS-485 transceiver IC, which will convert a UART serial stream to RS-485. The SP3485 is a half-duplex transceiver, so it can only communicate one way at a time, but it can reach transmission speeds of up to 10Mbps. This board requires a very low amount of power and can operate from a single +3.3VDC supply.

Works with all Feathers except for those with USB-Serial converters that use the UART pins. Right now that means the ESP8266 Huzzah Feather and nRF52832 Feather don't work.


## Features
- Fully equipped with SP3485 RS-485 transceiver and supporting components
- Operates from a single +3.3V supply
- Interoperable with +5.0V logic
- RS-485 input/output broken out to RJ-45 connector, 3.5mm screw terminal, and 0.1" pitch header
- Driver/Receiver Enable connected to RTS line
- 7V to +12V Common-Mode Input Voltage Range
- Allows up to 32 transceivers on the serial bus
- Driver Output Short-Circuit Protection

Each order comes with one assembled and tested FeatherWing, plus some header. You will need to solder in the header yourself but its a quick task.


## License
![OpenSourceLicense](https://github.com/ElectronicCats/AjoloteBoard/raw/master/OpenSourceLicense.png)

Electronic Cats invests time and resources providing this open source design, please support Electronic Cats and open-source hardware by purchasing products from Electronic Cats!

<a href="https://electroniccats.com/store/">
  <img src="https://electroniccats.com/wp-content/uploads/badge_store.png" width="200" height="104" />
</a>

Designed by Electronic Cats.

Firmware released under an GNU AGPL v3.0 license. See the LICENSE file for more information.

Hardware released under an CERN Open Hardware Licence v1.2. See the LICENSE_HARDWARE file for more information.

Electronic Cats is a registered trademark, please do not use if you sell these PCBs.

27 May 2021
