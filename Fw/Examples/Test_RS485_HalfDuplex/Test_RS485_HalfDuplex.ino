#include <ModbusMaster.h>


#define SP3485_DE      10
#define SP3485_RE_NEG  11

ModbusMaster node;

void preTransmission()
{
  digitalWrite(SP3485_RE_NEG, 1);
  digitalWrite(SP3485_DE, 1);
}

void postTransmission()
{
  digitalWrite(SP3485_RE_NEG, 0);
  digitalWrite(SP3485_DE, 0);
}

void setup()
{
  pinMode(SP3485_RE_NEG, OUTPUT);
  pinMode(SP3485_DE, OUTPUT);
  // Init in receive mode
  digitalWrite(SP3485_RE_NEG, 0);
  digitalWrite(SP3485_DE, 0);

  // Modbus communication runs at 115200 baud
  Serial.begin(115200);

  // Modbus slave ID 1
  node.begin(1, Serial);
  // Callbacks allow us to configure the RS485 transceiver correctly
  node.preTransmission(preTransmission);
  node.postTransmission(postTransmission);
}

bool state = true;

void loop()
{
  uint8_t result;
  uint16_t data[6];
  
  // Toggle the coil at address 0x0002 (Manual Load Control)
  result = node.writeSingleCoil(0x0002, state);
  state = !state;

  // Read 16 registers starting at 0x3100)
  result = node.readInputRegisters(0x3100, 16);
  if (result == node.ku8MBSuccess)
  {
    Serial.print("Vbatt: ");
    Serial.println(node.getResponseBuffer(0x04)/100.0f);
    Serial.print("Vload: ");
    Serial.println(node.getResponseBuffer(0xC0)/100.0f);
    Serial.print("Pload: ");
    Serial.println((node.getResponseBuffer(0x0D) +
                    node.getResponseBuffer(0x0E) << 16)/100.0f);
  }

  delay(1000);
}
