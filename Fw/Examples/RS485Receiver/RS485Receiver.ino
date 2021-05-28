/*
  RS485 example

  Andres Sabas @ Electronic Cats
  Original Creation Date: May 27, 2021
  Development environment specifics:

  This code is beerware; if you see me (or any other Electronic Cats
  member) at the local, and you've found our code helpful,
  please buy us a round!
  Distributed as-is; no warranty is given.
*/

#include <ArduinoRS485.h>

void setup() {
  Serial.begin(9600);
  while (!Serial);

  RS485.begin(9600);

  // enable reception, can be disabled with: RS485.noReceive();
  RS485.receive();
}

void loop() {
  if (RS485.available()) {
    Serial.write(RS485.read());
  }
}
