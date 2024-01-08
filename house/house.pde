//lav et rum //<>// //<>// //<>//
Room house = new Room("Room", false, 100, 300);


void setup() {
  size(800, 800);
  
}

void draw() {
  background(205);
  // tegn taget
  fill(50);
  triangle(50, 290, 250, 150, 450, 290);
  // tegn rum
  house.drawRoom();
}

void mouseClicked() {
  //farve til rect
  fill(105);
  rect(80, 680, 300, 30);
  //ryd op
  fill(250);

  // find ud af om vi tænder eller slukker lyset
  if (house.isRoomClicked(mouseX, mouseY))
    if (house.light) {
      house.setLight(false);
      text("Turning off the light in "+house.getRoomName(), 100, 700);
    } else {
      house.setLight(true);
      text("Turning on the light in "+house.getRoomName(), 100, 700);
    }
}
