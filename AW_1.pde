/*AW4 Code for Science Museum
By Viraj Joshi (http://virajvjoshi.com)
*/

//Initialisation
import processing.serial.*;
Serial myPort;

boolean clicked1 = false;
boolean clicked2 = false;
boolean clicked3 = false;
boolean clicked4 = false;
boolean clicked5 = false;
boolean clicked6 = false;

boolean Clicked;
int x1, y1, x2, y2;


void setup() {
  //Stage Setup
  size(1000, 1000);
  smooth();
  

  //Serial Setup
  String portName = Serial.list()[1]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 115200);
}

void draw() {
  //More Stage Setup
PImage img;
img = loadImage("bg.jpg");
background(img);
  
  cursor(CROSS);


/*-------Button1:RGBLED-------*/
  if (mouseX>400 && mouseY>90 && mouseX<600 && mouseY<290) {
    //Fill with transparent white if clicked
    if (clicked1) {
      fill(255, 255, 255, 10);//Hover On Colour
      myPort.clear();     
      myPort.write('1');
      println ("conncection1!");
    }
    else {
      fill(255, 255, 255, 10);//Hover Off Colour
    }
    if (mousePressed) {
      clicked1 = !clicked1; //Toggle Boolean State
    }
  }
  else {
    if (clicked1) {
      fill(255,255,255,10);//On Colour
    } 
    else {
      fill(200,200,200,10);//Off Colour
    }
  }
  fill(255,255,255,1);
  rect(400, 90, 200, 200);// Draw Base Button
     
/*-------Button2Button-------*/
  //if (mouseX>145 && mouseY>260 && mouseX<345 && mouseY<360) {
  //  //Fill with transparent white if clicked
  //  if (clicked2) {
  //    fill(255, 255, 255, 10);//Hover On Colour
  //    myPort.clear();      
  //    myPort.write('2');
  //    println ("conncection2!");
  //  }
  //  else {
  //    fill(255, 255, 255, 10);//Hover Off Colour
  //  }
  //  if (mousePressed) {
  //    clicked2 = !clicked2; //Toggle Boolean State
  //  }
  //}
  //else {
  //  if (clicked2) {
  //    fill(255,255,255,10);//On Colour
  //  } 
  //  else {
  //    fill(200,200,200,10);//Off Colour
  //  }
  //}
  //rect(145, 260, 200, 200);// Draw Base Button
 
  /*-------Button3 2-ColourLED-------*/
  if (mouseX>145 && mouseY>550 && mouseX<345 && mouseY<750) {
    //Fill with transparent white if clicked
    if (clicked3) {
      fill(255, 255, 255, 10);//Hover On Colour
      myPort.clear();      
      myPort.write('3');
      println ("conncection3!");
    }
    else {
      fill(255, 255, 255, 10);//Hover Off Colour
    }
    if (mousePressed) {
      clicked3 = !clicked3; //Toggle Boolean State
    }
  }
  else {
    if (clicked3) {
      fill(255,255,255,10);//On Colour
    } 
    else {
      fill(200,200,200,10);//Off Colour
    }
  }
  rect(145, 550, 200, 200);// Draw Base Button
     
/*-------Button4LEDArray-------*/
  if (mouseX>400 && mouseY>710 && mouseX<600 && mouseY<910) {
    //Fill with transparent white if clicked
    if (clicked4) {
      fill(255, 255, 255, 10);//Hover On Colour
      myPort.clear();
      myPort.write('4');
      println ("conncection4!");
    }
    else {
      fill(255, 255, 255, 10);//Hover Off Colour
    }
    if (mousePressed) {
      clicked4 = !clicked4; //Toggle Boolean State
    }
  }
  else {
    if (clicked4) {
      fill(255,255,255,10);//On Colour
    } 
    else {
      fill(200,200,200,10);//Off Colour
    }
  }
  rect(400, 710, 200, 200);// Draw Base Button
  
  
/*-------Button5Motor-------*/
  if (mouseX>655 && mouseY>550 && mouseX<855 && mouseY<750) {
    //Fill with transparent white if clicked
    if (clicked5) {
      fill(255, 255, 255, 10);//Hover On Colour
      myPort.clear();
      myPort.write('5');
      println ("conncection5!");
    }
    else {
      fill(255, 255, 255, 10);//Hover Off Colour
    }
    if (mousePressed) {
      clicked5 = !clicked5; //Toggle Boolean State
    }
  }
  else {
    if (clicked5) {
      fill(255,255,255,10);//On Colour
    } 
    else {
      fill(200,200,200,10);//Off Colour
    }
  }
  rect(655, 550, 200, 200);// Draw Base Button
  
/*-------Button6NeoPixel-------*/
  if (mouseX>655 && mouseY>260 && mouseX<855 && mouseY<460) {
    //Fill with transparent white if clicked
    if (clicked6) {
      fill(255, 255, 255, 10);//Hover On Colour
      myPort.clear();
      myPort.write('6');
      println ("conncection6!");
    }
    else {
      fill(255, 255, 255, 10);//Hover Off Colour
    }
    if (mousePressed) {
      clicked6 = !clicked6; //Toggle Boolean State
    }
  }
  else {
    if (clicked6) {
      fill(255,255,255,10);//On Colour
    } 
    else {
      fill(200,200,200,10);//Off Colour
    }
  }
  rect(655, 260, 200, 200);// Draw Base Button

  /*-------Drawing AirWires-------*/  
  if (Clicked) {
    //First Point
    strokeWeight(7);
    stroke(0);
    point(245, 360);
    
    //Moving Line
    strokeWeight(2);
    stroke(0);
    line(245, 360, mouseX, mouseY);
    return;
  }
  
  //Second Point + AirWire Connection  
  strokeWeight(7);
  stroke(0);
  point(x2, y2);
  line(245, 360, x2, y2);
  noStroke();
}

/*-------Drawing AirWires-------*/  
void mouseClicked() {
  if (Clicked) {
    x2 = mouseX;
    y2 = mouseY;
    Clicked = false;
    return;
  }
  x1 = mouseX;
  y1 = mouseY;
  Clicked = true;
}
