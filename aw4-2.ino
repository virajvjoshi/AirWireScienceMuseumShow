//AirWireCode4.0 
/*AW4 Code for Science Museum
By Viraj Joshi (http://virajvjoshi.com)
*/

//1 RGBLED
int redpin = 11;
int val;

//2 Button
const int buttonPin = 10;
int buttonState = 0;

//3 2-ColourLED
int  yellowpin  = 9; 
int  val2;

//4 LED Array
const int LEDpin = 8;

//5 Servo
#include <Servo.h>;
const int servoPin = 7;
Servo servo;
int counter = 0;

//6 Neopixel
int  npxlpin  = 6; 

//Other Declaration
char data = 0;


void setup()
{
//1 RGBLED
  pinMode(redpin, OUTPUT);
  
//2 Button
  pinMode(buttonPin, INPUT);

//3 Servo
  servo.attach (servoPin);

//4 LED Array
  pinMode(LEDpin, OUTPUT);

//5 2-Colour LED
  pinMode(yellowpin, OUTPUT);

////6 NPxl
  pinMode(npxlpin, OUTPUT);
  
  Serial.begin(115200);
}

void loop()
{
//Read Processing Data
  if (Serial.available() > 0) {
    data = Serial.read();
    Serial.println(data);
  }

//1 Button and RGBLED
  if (data == '1') {
  int buttonState;   
  buttonState = digitalRead(buttonPin);
  if (buttonState == LOW)
  {
    digitalWrite(redpin, HIGH);
  }
  else {
    digitalWrite(redpin, LOW);
  }
  }

//3 Button and 2-ColourLED
  if (data == '3') {
    int buttonState;   
  buttonState = digitalRead(buttonPin);
  if (buttonState == LOW)
  {
    digitalWrite(yellowpin, HIGH);
  }
  else {
    digitalWrite(yellowpin,LOW);
  }
  }  

//4 Button and LEDArray
  if (data == '4') {
  int buttonState;   
  buttonState = digitalRead(buttonPin);
  if (buttonState == LOW)
  {
    digitalWrite(LEDpin, HIGH);
  }
  else {
    digitalWrite(LEDpin,LOW);
  }
  }

//5 Button and Servo
  if (data == '5') {
    int buttonState;   
  buttonState = digitalRead(buttonPin);
  if (buttonState == LOW)
  {
    servo.write(75);
  }
  else {
    servo.write(0);
  }
  }

//6 NeoPixel
  if (data == '6') {
    int buttonState;   
  buttonState = digitalRead(buttonPin);
  if (buttonState == LOW)
  {
    digitalWrite(npxlpin, HIGH);
  }
  else {
    digitalWrite(npxlpin,LOW);
  }
  }
  }

