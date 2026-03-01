#include <RH_ASK.h>
#include <SPI.h>  // Not actually used but needed to compile

RH_ASK driver;
int ledPin = 8, servoPin = 3;  // LED and Servo Pins

// position servo takes by default (on reset), and takes to hit the motor
int resetServo = 160, hitBell = 240;

int bellStrikeCount = 8;  // Number of strikes
bool activateBell = false;


void setup() {
  Serial.begin(9600);  // Serial is at specific baud rate
  pinMode(servoPin, OUTPUT);
  // pinMode(ledPin, OUTPUT);
  analogWrite(servoPin, resetServo);
  if (!driver.init()) {
    Serial.println("RF Receiver init failed");
  } else Serial.println("Receiver Initialized");
}

void loop() {
  // analogWrite(ledPin, 0);
  uint8_t buf[13];
  uint8_t buflen = sizeof(buf);
  if (driver.recv(buf, &buflen)) {
    String passcode = "";
    for (int i = 0; i < buflen; i++) {
      passcode += (char)buf[i];
    }

    Serial.print("Message: ");
    Serial.println(passcode);
    Serial.println(passcode == "GROUP6PROJECT");
    // activateBell = true;
    activateBell = (passcode == "GROUP6PROJECT");
  }

  if (activateBell) {
    for (int count = 0; count < bellStrikeCount; count++) {
      Serial.println(count);
      for (int i = resetServo; i <= hitBell; i=i+3) {
        analogWrite(servoPin, i);
        delay(4);
      }
      delay(300);

      Serial.println("Reset");
      for (int i = hitBell; i >= resetServo; i=i-3) {
        analogWrite(servoPin, i);
        delay(4);  // Delay between steps for smoother movement
      }
      delay(2000);
    }
    activateBell = false;
  }
}
