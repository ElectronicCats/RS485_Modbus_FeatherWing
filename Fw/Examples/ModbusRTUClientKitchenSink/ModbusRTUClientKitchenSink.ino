/*
Modbus example

  Andres Sabas @ Electronic Cats
  Original Creation Date: May 27, 2021
  Development environment specifics:

  This code is beerware; if you see me (or any other Electronic Cats
  member) at the local, and you've found our code helpful,
  please buy us a round!
  Distributed as-is; no warranty is given.
*/

#include <ArduinoRS485.h> // ArduinoModbus depends on the ArduinoRS485 library
#include <ArduinoModbus.h>

int counter = 0;

void setup() {
  Serial.begin(9600);
  while (!Serial);

  Serial.println("Modbus RTU Client Kitchen Sink");

  // start the Modbus RTU client
  if (!ModbusRTUClient.begin(9600)) {
    Serial.println("Failed to start Modbus RTU Client!");
    while (1);
  }
}

void loop() {
  writeCoilValues();

  readCoilValues();

  readDiscreteInputValues();

  writeHoldingRegisterValues();

  readHoldingRegisterValues();

  readInputRegisterValues();

  counter++;

  delay(5000);
  Serial.println();
}

void writeCoilValues() {
  // set the coils to 1 when counter is odd
  byte coilValue = ((counter % 2) == 0) ? 0x00 : 0x01;

  Serial.print("Writing Coil values ... ");

  // write 10 Coil values to (slave) id 42, address 0x00
  ModbusRTUClient.beginTransmission(42, COILS, 0x00, 10);
  for (int i = 0; i < 10; i++) {
    ModbusRTUClient.write(coilValue);
  }
  if (!ModbusRTUClient.endTransmission()) {
    Serial.print("failed! ");
    Serial.println(ModbusRTUClient.lastError());
  } else {
    Serial.println("success");
  }

  // Alternatively, to write a single Coil value use:
  // ModbusRTUClient.coilWrite(...)
}

void readCoilValues() {
  Serial.print("Reading Coil values ... ");

  // read 10 Coil values from (slave) id 42, address 0x00
  if (!ModbusRTUClient.requestFrom(42, COILS, 0x00, 10)) {
    Serial.print("failed! ");
    Serial.println(ModbusRTUClient.lastError());
  } else {
    Serial.println("success");

    while (ModbusRTUClient.available()) {
      Serial.print(ModbusRTUClient.read());
      Serial.print(' ');
    }
    Serial.println();
  }

  // Alternatively, to read a single Coil value use:
  // ModbusRTUClient.coilRead(...)
}

void readDiscreteInputValues() {
  Serial.print("Reading Discrete Input values ... ");

  // read 10 Discrete Input values from (slave) id 42, address 0x00
  if (!ModbusRTUClient.requestFrom(42, DISCRETE_INPUTS, 0x00, 10)) {
    Serial.print("failed! ");
    Serial.println(ModbusRTUClient.lastError());
  } else {
    Serial.println("success");

    while (ModbusRTUClient.available()) {
      Serial.print(ModbusRTUClient.read());
      Serial.print(' ');
    }
    Serial.println();
  }

  // Alternatively, to read a single Discrete Input value use:
  // ModbusRTUClient.discreteInputRead(...)
}

void writeHoldingRegisterValues() {
  // set the Holding Register values to counter

  Serial.print("Writing Holding Registers values ... ");

  // write 10 coil values to (slave) id 42, address 0x00
  ModbusRTUClient.beginTransmission(42, HOLDING_REGISTERS, 0x00, 10);
  for (int i = 0; i < 10; i++) {
    ModbusRTUClient.write(counter);
  }
  if (!ModbusRTUClient.endTransmission()) {
    Serial.print("failed! ");
    Serial.println(ModbusRTUClient.lastError());
  } else {
    Serial.println("success");
  }

  // Alternatively, to write a single Holding Register value use:
  // ModbusRTUClient.holdingRegisterWrite(...)
}

void readHoldingRegisterValues() {
  Serial.print("Reading Input Register values ... ");

  // read 10 Input Register values from (slave) id 42, address 0x00
  if (!ModbusRTUClient.requestFrom(42, HOLDING_REGISTERS, 0x00, 10)) {
    Serial.print("failed! ");
    Serial.println(ModbusRTUClient.lastError());
  } else {
    Serial.println("success");

    while (ModbusRTUClient.available()) {
      Serial.print(ModbusRTUClient.read());
      Serial.print(' ');
    }
    Serial.println();
  }

  // Alternatively, to read a single Holding Register value use:
  // ModbusRTUClient.holdingRegisterRead(...)
}

void readInputRegisterValues() {
  Serial.print("Reading input register values ... ");

  // read 10 discrete input values from (slave) id 42,
  if (!ModbusRTUClient.requestFrom(42, INPUT_REGISTERS, 0x00, 10)) {
    Serial.print("failed! ");
    Serial.println(ModbusRTUClient.lastError());
  } else {
    Serial.println("success");

    while (ModbusRTUClient.available()) {
      Serial.print(ModbusRTUClient.read());
      Serial.print(' ');
    }
    Serial.println();
  }

  // Alternatively, to read a single Input Register value use:
  // ModbusRTUClient.inputRegisterRead(...)
}
