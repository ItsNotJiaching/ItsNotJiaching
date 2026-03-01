#include <RH_ASK.h>
#include <SPI.h>  // Not actually used but needed to compile
#include "Adafruit_APDS9960.h"

Adafruit_APDS9960 apds;
RH_ASK driver;

void setup() {
  Serial.begin(9600);  // Debugging only
  if (!driver.init())
    Serial.println("init failed");
  if (!apds.begin()) {
    Serial.println("failed to initialize device! Please check your wiring");
  } else Serial.println("Device initialized!");
  apds.enableProximity(true);
  apds.enableGesture(true);
}


void loop() {
  uint8_t gesture = apds.readGesture();
  if (gesture == APDS9960_DOWN || gesture == APDS9960_UP || gesture == APDS9960_LEFT || gesture == APDS9960_RIGHT) {
    const char *msg = "GROUP6PROJECT";
    driver.send((uint8_t *)msg, strlen(msg));
    driver.waitPacketSent();
    Serial.print("Hi: ");
    Serial.println(driver.txGood());
    Serial.println(gesture);
    delay(500);
  }
}