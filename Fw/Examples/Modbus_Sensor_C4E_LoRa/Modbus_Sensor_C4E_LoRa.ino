/********************************************************************
  Modbus example

  Andres Sabas @ Electronic Cats
  Original Creation Date: May 27, 2021
  Development environment specifics:

  This code is beerware; if you see me (or any other Electronic Cats
  member) at the local, and you've found our code helpful,
  please buy us a round!
  Distributed as-is; no warranty is given.

*********************************************************************/
#include <AqualaboSensors.h>
#include<CayenneLPP.h>
#include <SPI.h>

CayenneLPP lpp(51);

/*!
  We're using a MAX485-compatible RS485 Transceiver.
  Rx/Tx is hooked up to the hardware serial port at 'Serial2'.
  The Data Enable and Receiver Enable pins are hooked up as follows:
*/
#include <lorawan.h>

//ABP Credentials 
const char *devAddr = "26013557";
const char *nwkSKey = "040A022068FB1C137888440CE072ACF0";
const char *appSKey = "3D3E011CBB4CEF72885D12B91C85D680";

const unsigned long interval = 10000;    // 10 s interval to send message
unsigned long previousMillis = 0;  // will store last time message sent
unsigned int counter = 0;     // message counter

char myStr[50];
char outStr[255];
byte recvStatus = 0;

const sRFM_pins RFM_pins = {
  .CS = SS,
  .RST = RFM_RST,
  .DIO0 = RFM_DIO0,
  .DIO1 = RFM_DIO1,
  .DIO2 = RFM_DIO2,
  .DIO5 = RFM_DIO5,
};
// instantiate aqualaboModbusSensors object
aqualaboModbusSensorsClass aqualaboModbusSensors;

void setup() {
  Serial.begin(9600);

  
  
  while (!Serial);
  Serial.println("Modbus Sensor C4E");
  
  if(!lora.init()){
    Serial.println("RFM95 not detected");
    delay(5000);
    return;
  }
    pinMode(RFM_TCX_ON,OUTPUT);
    pinMode(RFM_SWITCH,OUTPUT);
    pinMode(LED_BUILTIN,OUTPUT);

  // Set LoRaWAN Class change CLASS_A or CLASS_C
  lora.setDeviceClass(CLASS_A);

  // Set Data Rate
  lora.setDataRate(SF8BW125);

  // set channel to random
  lora.setChannel(MULTI);
  
  // Put ABP Key and DevAddress here
  lora.setNwkSKey(nwkSKey);
  lora.setAppSKey(appSKey);
  lora.setDevAddr(devAddr);
// Modbus communication runs at 9600 baud
  Serial1.begin(9600);
  //Modbus slave ID 1, pin De, Pin Re, Serial
  aqualaboModbusSensors.begin(30, 11, 10, Serial1 );
  
  // Setups the sensor configuration paramenters 
  Serial.println("Init sensor");
  aqualaboModbusSensors.initSensor();
  
  Serial.println("Ready... ");
}

void loop() {
  
  // Reads the sensor data
  aqualaboModbusSensors.read();

  // Variable: stores measured temperature in Celsius degrees
  Serial.print("Temperature: ");
  Serial.println(aqualaboModbusSensors.sensorC4E.temperature, 2);
  
  // Variable: stores measured conductivity in μS/cm
  Serial.print("Conductivity: ");
  Serial.println(aqualaboModbusSensors.sensorC4E.conductivity, 2);
  
  
 if(millis() - previousMillis > interval) {
     previousMillis = millis();

     Serial.print("Sending: ");
     printVariables();

     lora.sendUplink((char *)lpp.getBuffer(), lpp.getSize(), 0, 1);
    }

    recvStatus = lora.readData(outStr);
    if(recvStatus) {
     Serial.println("Received: ");
     Serial.println(outStr);
    }
  
  // Check Lora RX
  lora.update();
}

void printVariables()
{
  lpp.reset();

  int humidity = aqualaboModbusSensors.sensorC4E.conductivity;
  Serial.print(F("conductivity="));
  Serial.print(humidity, 2);
  lpp.addRelativeHumidity(3, humidity);

  int temp = aqualaboModbusSensors.sensorC4E.temperature;
  Serial.print(F(", Tempetarure="));
  Serial.print(temp, 2);
  lpp.addTemperature(4, temp);


}
