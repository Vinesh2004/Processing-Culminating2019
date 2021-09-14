/*
  Description: This program has different effects that showcase my name, Vinesh. It uses all the concepts I've learned in class such as inputs & outputs, loops and if statements.
 Many of my variable names have a lowercase letter at the beginning which correspond with the letter in my name to show which variables are used for what. 
 Author: Vinesh Vivekanand
 Date of last edit: January 21st 2020 
 */

float backgroundColour, backgroundColour1, backgroundColour2;
float wormSegX1, wormSegX2, wormSegX3, wormSegX4, wormSegX5, wormSegX6;
float wormSegY1, wormSegY2, wormSegY3, wormSegY4, wormSegY5, wormSegY6;
float vCircle1, vCircle2, vCircle3, vCircle4;
float vCircle1Size, vCircle2Size, vCircle3Size, vCircle4Size;
float vColourGradient, nColourGradient2;
boolean gradient=true;
boolean gradient2=true;
boolean treeGrowth=true;
boolean keyClicked=false;
boolean rainFall=false;
boolean radianMove=true;
boolean radianMove2=true;
boolean radianMove3=false;
boolean Fire=false;
boolean Icicle=false;
boolean rFire=false;
boolean eFire=false;
boolean FireColourBoolean=false;
boolean fireUpBoolean=true;
float treeGrowthSizeX, treeGrowthSizeY;
float treeGrowthSizeX2, treeGrowthSizeY2;
float cloudColours;
float nCircle, nCircle2, nCircle3, nCircle4;
float rainDrop1, rainDrop2;
float sRadians;
float sRadians2;
float FireColour;
float fireUp;
float IcicleMove;
float IcicleMove2;
float eSemiCircles;
float eSemiCirclesY1;
float eSemiCirclesY2;
float clockNumbers;
float clockHand;
float clockHandSize;
float hTetris1, hTetris2, hTetris3, hTetris4, hTetris5, hTetris6, hTetris7, hTetris8, hTetris9, hTetris10, hTetris11, hTetris12;
float hArc;
float underline;
float underline2;
float circleColour;
void settings() {
  size(1450, 700);
}

void setup() {

  wormSegX1=423;
  wormSegX2=423;
  wormSegX3=423;
  wormSegX4=423;
  wormSegX5=423;
  wormSegX6=423;

  wormSegY1=324;
  wormSegY2=341;
  wormSegY3=358;
  wormSegY4=375;
  wormSegY5=392;
  wormSegY6=409;

  vCircle1=1300;
  vCircle1Size=70;
  vCircle2=1300;
  vCircle2Size=90;
  vCircle3=753;
  vCircle3Size=90;
  vCircle4=-50;
  vCircle4Size=140;
  vColourGradient=0;
  nColourGradient2=0;

  treeGrowthSizeX=10;
  treeGrowthSizeY=5;
  treeGrowthSizeX2=10;
  treeGrowthSizeY2=5;
  cloudColours=0;

  nCircle=575;
  nCircle2=575;
  nCircle3=710;
  nCircle4=710;

  rainDrop1=212;
  rainDrop2=212;

  sRadians=90;
  sRadians2=270;

  FireColour=0;
  fireUp=-10;
  IcicleMove=0;
  IcicleMove2=10;

  hTetris1=-20;
  hTetris2=-80;
  hTetris3=-140;
  hTetris4=-400;
  hTetris5=-260;
  hTetris6=-320;
  hTetris7=-380;
  hTetris8=-440;
  hTetris9=-500;
  hTetris10=-560;
  hTetris11=-620;
  hTetris12=-720;

  eSemiCircles=170;
  eSemiCirclesY1=404;
  eSemiCirclesY2=404;

  backgroundColour=0;
  backgroundColour1=0;
  backgroundColour2=0;

  clockNumbers=0;
  clockHand=0;
  clockHandSize=4;
  hArc=360;
  underline=0;
  underline2=0;
  
  circleColour=0;
}

void draw() {
  background(backgroundColour, backgroundColour1, backgroundColour2); // allows for the change iun background 
  stroke(255);
  strokeWeight(5);
  noFill();
  rect(435, 305, 50, 200);

  if (mouseX>=435 && mouseX<=485 && mouseY>=305 && mouseY<=505) { // make random circles if mouse hovers over the 'i'
    fill(234, 211, 211);
    rect(435, 305, 50, 200);
    noStroke();
    fill(random(255), random(0), random(0));
    ellipse(random(436, 486), random(305, 500), 25, 25);
  } else if (mouseX>=411 && mouseX<=513 && mouseY>=151 && mouseY<=175 && mousePressed) { // change colour of background if certain area is clicked with mouse
    backgroundColour=149; 
    backgroundColour1=255;
    backgroundColour2=175;
  } else if (mouseX>=411 && mouseX<=513 && mouseY>=186 && mouseY<=204 && mousePressed) { // change colour of background if certain area is clicked with mouse
    backgroundColour=223; 
    backgroundColour1=149;
    backgroundColour2=255;
  } else if (mouseX>=411 && mouseX<=513 && mouseY>=213 && mouseY<=239 && mousePressed) { // change colour of background if certain area is clicked with mouse
    backgroundColour=250; 
    backgroundColour1=182;
    backgroundColour2=109;
  } else if (mouseX>=177 && mouseX<=230 && mouseY>=454 && mouseY<=499 && mousePressed) { // change colour of background if certain area is clicked with mouse
    backgroundColour=255; 
    backgroundColour1=255;
    backgroundColour2=255;
  } else if (mouseX>=51 && mouseX<=106 && mouseY>=154 && mouseY<=190 && mousePressed) { // change colour of background if certain area is clicked with mouse
    backgroundColour=0; 
    backgroundColour1=0;
    backgroundColour2=0;
  } else { // reset the 'i' back to the clear rectangle 
    fill(234, 211, 211);
    rect(435, 305, 50, 200);
  }

  noStroke(); // circles for worm moving around the 'i'
  fill(255, 0, 0);
  ellipse(wormSegX1, wormSegY1, 17, 17);
  fill(240, 139, 39);
  ellipse(wormSegX2, wormSegY2, 17, 17);
  fill(240, 230, 39);
  ellipse(wormSegX3, wormSegY3, 17, 17);
  fill(14, 227, 36);
  ellipse(wormSegX4, wormSegY4, 17, 17);
  fill(14, 161, 227);
  ellipse(wormSegX5, wormSegY5, 17, 17);
  fill(137, 14, 227);
  ellipse(wormSegX6, wormSegY6, 17, 17);

  wormSegY1-=1; // move worm segments 
  wormSegY2-=1;
  wormSegY3-=1;
  wormSegY4-=1;
  wormSegY5-=1;
  wormSegY6-=1;

  if (wormSegY1<=290) { // if statements that control when the worm turns and falls 
    wormSegX1+=1;
    wormSegY1+=1;
  }
  if (wormSegY2<=290) {
    wormSegX2+=1;
    wormSegY2+=1;
  }
  if (wormSegY3<=290) {
    wormSegX3+=1;
    wormSegY3+=1;
  }
  if (wormSegY4<=290) {
    wormSegX4+=1;
    wormSegY4+=1;
  }
  if (wormSegY5<=290) {
    wormSegX5+=1;
    wormSegY5+=1;
  }
  if (wormSegY6<=290) {
    wormSegX6+=1;
    wormSegY6+=1;
  }


  if (wormSegX1>=500) {
    wormSegX1+=0;
    wormSegY1+=3;
  }
  if (wormSegX2>=500) {
    wormSegX2+=0;
    wormSegY2+=3;
  }
  if (wormSegX3>=500) {
    wormSegX3+=0;
    wormSegY3+=3;
  }
  if (wormSegX4>=500) {
    wormSegX4+=0;
    wormSegY4+=3;
  }
  if (wormSegX5>=500) {
    wormSegX5+=0;
    wormSegY5+=3;
  }
  if (wormSegX6>=500) {
    wormSegX6+=0;
    wormSegY6+=3;
  }


  if (wormSegY1>=520) {
    wormSegX1-=1;
    wormSegY1+=1;
  }
  if (wormSegY2>=520) {
    wormSegX2-=1;
    wormSegY2+=1;
  }
  if (wormSegY3>=520) {
    wormSegX3-=1;
    wormSegY3+=1;
  }
  if (wormSegY4>=520) {
    wormSegX4-=1;
    wormSegY4+=1;
  }
  if (wormSegY5>=520) {
    wormSegX5-=1;
    wormSegY5+=1;
  }
  if (wormSegY6>=520) {
    wormSegX6-=1;
    wormSegY6+=1;
  }


  if (wormSegX1<=421) {
    wormSegX1+=0;
    wormSegY1-=1;
  }
  if (wormSegX2<=421) {
    wormSegX2+=0;
    wormSegY2-=1;
  }
  if (wormSegX3<=421) {
    wormSegX3+=0;
    wormSegY3-=1;
  }
  if (wormSegX4<=421) {
    wormSegX4+=0;
    wormSegY4-=1;
  }
  if (wormSegX5<=421) {
    wormSegX5+=0;
    wormSegY5-=1;
  }
  if (wormSegX6<=421) {
    wormSegX6+=0;
    wormSegY6-=1;
  }

  for (int iCircle = 424; iCircle < 500; iCircle = iCircle+25) { // loops the circles abovve the 'i'

    stroke(1, 93, 32);
    strokeWeight(7);
    fill(124, 245, 165);
    ellipse(iCircle, 166, 20, 20);
  }

  for (int iTriangle = 424; iTriangle < 500; iTriangle = iTriangle+25) { // loops the triangles abovve the 'i'

    stroke(89, 4, 124);
    strokeWeight(2);
    fill(190, 80, 234);
    triangle(iTriangle, 186, iTriangle+10, 206, iTriangle-10, 206);
  }

  for (int iRectangle = 414; iRectangle < 500; iRectangle= iRectangle+25) { // loops the rectangle abovve the 'i'

    stroke(183, 107, 7);
    strokeWeight(4);
    fill(245, 180, 94);
    rect(iRectangle, 214, 25, 25);
  }



  if (gradient==true) { // allows for the 'v' shape gradient to change back and forth 
    vColourGradient+=2;
  } else if (gradient==false) {
    vColourGradient-=2;
  }
  if (vColourGradient>=253) {
    gradient=false;
  } else if (vColourGradient==0) {
    gradient=true;
  }

  noStroke(); // shapes that make up the 'v'
  fill(vColourGradient, vColourGradient, vColourGradient);
  quad(132, 320, 168, 335, 169, 380, 119, 360);
  fill(vColourGradient);
  quad(88, 255, 137, 247, 115, 325, 153, 304);
  fill(vColourGradient);
  rect(51, 156, 55, 35);
  fill(vColourGradient);
  rect(177, 455, 55, 45);
  fill(vColourGradient);
  triangle(250, 389, 215, 433, 250, 450);
  fill(vColourGradient);
  rect(260, 280, 40, 30);
  fill(vColourGradient);
  triangle(312, 206, 305, 296, 272, 265);
  fill(vColourGradient);
  fill(255, 0, circleColour);
  stroke(255);
  ellipse(vCircle1, 216, vCircle1Size, vCircle1Size); // draw moving red circles 
  ellipse(vCircle2, 416, vCircle2Size, vCircle2Size); 
  ellipse(326, vCircle3, vCircle3Size, vCircle3Size); 
  ellipse(270, vCircle4, vCircle4Size, vCircle4Size); 




  vCircle1-=3; // moves red circle 
  if (vCircle1<=317 && vCircle1>=150) { // defines between what points to change in size 
    vCircle1Size+=2;
  } else if (vCircle1<=1000 && vCircle1>=618) {
    vCircle1Size-=1;
  } else if (vCircle1<=100 && vCircle1>=44) {
    vCircle1=99;
    circleColour=0;
  }
  else{
   circleColour=255; 
  }

  vCircle2-=5; // moves red circle 
  if (vCircle2<=617 && vCircle2>=400) { // defines between what points to change in size 
    vCircle2Size+=2;
  } else if (vCircle2<=900 && vCircle2>=618) {
    vCircle2Size-=2;
  } else if (vCircle2<=180 && vCircle2>=159) {
    vCircle2=172;
    circleColour=255;
  }
  else{
   circleColour=0; 
  }

  vCircle3-=2; // moves red circle 
  if (vCircle3<=437 && vCircle3>=200) { // defines between what points to change in size 
    vCircle3Size-=2;
  } else if (vCircle3<=600 && vCircle3>=518) {
    vCircle3Size+=2;
  } else if (vCircle3<=190 && vCircle3>=170) {
    vCircle3=175;
    circleColour=0;
  }
  else{
   circleColour=255; 
  }

  vCircle4+=3; // moves red circle 
  if (vCircle4<=100 && vCircle4>=0) { // defines between what points to change in size 
    vCircle4Size-=3;
  } else if (vCircle4<=300 && vCircle4>=200) {
    vCircle4Size+=1;
  } else if (vCircle4<=360 && vCircle4>=350) {
    vCircle4=355;
    circleColour=255;
  }
  else{
   circleColour=0; 
  }

  for (int nDirt = 552; nDirt < 608; nDirt = nDirt+15) { // loops the dirt for the 'n'

    noStroke();
    fill(100, 46, 4);
    ellipse(nDirt, 505, 30, 20);
  }

  for (int nDirt = 685; nDirt < 735; nDirt = nDirt+15) { // loops the dirt for the 'n'

    noStroke();
    fill(100, 46, 4);
    ellipse(nDirt, 505, 30, 20);
  }

  fill(20, 180, 13); // tree stems 
  rect(565, 503, treeGrowthSizeX, treeGrowthSizeY);
  rect(700, 503, treeGrowthSizeX2, treeGrowthSizeY2);

  if (keyClicked==true) { // if key is pressed activate this boolean (allows one to not hold the key but just press)
    treeGrowthSizeX+=0.03; // grow the tree
    treeGrowthSizeY-=1;
    treeGrowthSizeX2+=0.015;
    treeGrowthSizeY2-=0.5;
    rainFall=true;
    hTetris1+=1; // bring the tetris pieces down 
    hTetris2+=1;
    hTetris3+=1;
    hTetris4+=1;
    hTetris5+=1;
    hTetris6+=1;
    hTetris7+=1;
    hTetris8+=1;
    hTetris9+=1;
    hTetris10+=1;
    hTetris11+=1;
    hTetris12+=1;
   println(keyClicked); // print line to see if spacebar has been clicked on not
  } else {
    println(keyClicked); // print line to see if spacebar has been clicked on not
  }
  
  if (gradient2==true) { // controls gradient of the tree
    nColourGradient2+=2;
  } else if (gradient2==false) {
    nColourGradient2-=2;
  }
  if (nColourGradient2>=100) {
    gradient2=false;
  } else if (nColourGradient2==0) {
    gradient2=true;
  }

  if (treeGrowthSizeY<=-270) { // when tree reaches certain point, grow leaves and tree designs  
    treeGrowthSizeX=18;
    treeGrowthSizeY=-270;
    fill(nColourGradient2+191, nColourGradient2+110, nColourGradient2+48); // make the gradient of colour change 
    rect(565, 250, 18, 5);
    rect(565, 300, 18, 5);
    rect(565, 350, 18, 5);
    rect(565, 400, 18, 5);
    rect(565, 450, 18, 5);
    rect(565, 500, 18, 5);
    fill(nColourGradient2+17, nColourGradient2+118, nColourGradient2+12); // make the gradient of colour change 
    rect(565, 255, 18, 5);
    rect(565, 305, 18, 5);
    rect(565, 355, 18, 5);
    rect(565, 405, 18, 5);
    rect(565, 455, 18, 5);
    rect(565, 505, 18, 5);

    fill(20, 180, 13);
    ellipse(nCircle, 270, 19, 10);
    ellipse(nCircle, 330, 19, 10);
    ellipse(nCircle, 390, 19, 10);
    ellipse(nCircle, 445, 19, 10);
    nCircle+=0.1; // move the leaves outwards 
    ellipse(nCircle2, 286, 19, 10);
    ellipse(nCircle2, 339, 19, 10);
    ellipse(nCircle2, 371, 19, 10);
    ellipse(nCircle2, 422, 19, 10);
    ellipse(nCircle2, 476, 19, 10);
    nCircle2-=0.1; // move the leaves outwards 
  }

  if (nCircle>=591) { // when the leaves grow to a certain point stop 
    nCircle=591;
  }
  if (nCircle2<=558) { // when the leaves grow to a certain point stop 
    nCircle2=558;
  }

  if (treeGrowthSizeY2<=-300) { // when tree 2 reaches certain point, grow leaves and tree designs  
    treeGrowthSizeX2=19;
    treeGrowthSizeY2=-300;

    fill(nColourGradient2+191, nColourGradient2+110, nColourGradient2+48);
    rect(700, 215, 19, 5);
    rect(700, 265, 19, 5);
    rect(700, 315, 19, 5);
    rect(700, 365, 19, 5);
    rect(700, 415, 19, 5);
    rect(700, 465, 19, 5);
    fill(nColourGradient2+17, nColourGradient2+118, nColourGradient2+12);
    rect(700, 220, 19, 5);
    rect(700, 270, 19, 5);
    rect(700, 320, 19, 5);
    rect(700, 370, 19, 5);
    rect(700, 420, 19, 5);
    rect(700, 470, 19, 5);

    fill(20, 180, 13);
    ellipse(nCircle3, 234, 19, 10);
    ellipse(nCircle3, 285, 19, 10);
    ellipse(nCircle3, 330, 19, 10);
    ellipse(nCircle3, 388, 19, 10);
    ellipse(nCircle3, 490, 19, 10);
    nCircle3+=0.1;
    ellipse(nCircle4, 260, 19, 10);
    ellipse(nCircle4, 305, 19, 10);
    ellipse(nCircle4, 346, 19, 10);
    ellipse(nCircle4, 430, 19, 10);

    nCircle4-=0.1;
    rainFall=false;
  }

  if (nCircle3>=728) { // when the leaves grow to a certain point stop 
    nCircle3=728;
  }
  if (nCircle4<=693) { // when the leaves grow to a certain point stop 
    nCircle4=693;
  }  

  int nCloudsX=556; // loop the clouds that rain on the tree
  int nCloudsY=150;
  while (nCloudsX<=700) { 
    nCloudsX+=25;

    nCloudsY=180;  
    while (nCloudsY<=211) {
      fill(cloudColours);

      ellipse(nCloudsX, nCloudsY, 50, 50); 
      nCloudsY+=25;
    }
  }

  if (rainFall==true) { // when this boolean is true move the rain drops down 
    fill(2, 174, 234);
    ellipse(591, rainDrop1, 5, 10);
    ellipse(600, rainDrop1-20, 5, 10);
    ellipse(610, rainDrop1-40, 5, 10);
    ellipse(620, rainDrop1-20, 5, 10);
    ellipse(630, rainDrop1-40, 5, 10);
    ellipse(640, rainDrop1-10, 5, 10);
    ellipse(654, rainDrop1, 5, 10);
    ellipse(660, rainDrop1-20, 5, 10);
    ellipse(670, rainDrop1-40, 5, 10);
    ellipse(680, rainDrop1-20, 5, 10);
    ellipse(690, rainDrop1-40, 5, 10);
    ellipse(700, rainDrop1-10, 5, 10);
    rainDrop1+=30; // move down 
    ellipse(571, rainDrop2, 5, 10);
    ellipse(580, rainDrop2-30, 5, 10);
    ellipse(615, rainDrop2-10, 5, 10);
    ellipse(618, rainDrop2-40, 5, 10);
    ellipse(600, rainDrop2-30, 5, 10);
    ellipse(630, rainDrop2-10, 5, 10);
    ellipse(664, rainDrop2, 5, 10);
    ellipse(670, rainDrop2-40, 5, 10);
    ellipse(675, rainDrop2-20, 5, 10);
    ellipse(678, rainDrop2-30, 5, 10);
    ellipse(700, rainDrop2-10, 5, 10);
    ellipse(720, rainDrop2-50, 5, 10);
    rainDrop2+=20; // move down 
    cloudColours=100; // if its raining make cloud grey
  } else { // if its not raining make the clouds white 
    cloudColours=255;
  }


  if (rainDrop1>=526) { // when the rain drops hit the dirt come back to the cloud 
    rainDrop1=212;
  } else if (rainDrop2>=526) {
    rainDrop2=212;
  }

  fill(sRadians-88, sRadians-40, sRadians+142); // arcs that form the 's'
  strokeWeight(10);
  stroke(sRadians+165, sRadians-90, sRadians-90); 
  arc(1040, 270, 150, 150, radians(sRadians), radians(300));  
  arc(1040, 425, 150, 150, radians(sRadians2), radians(480));
  stroke(108, 39, 137); //purple
  arc(1040, 270, 140, 140, radians(sRadians+30), radians(300-30));  
  arc(1040, 425, 140, 140, radians(sRadians2+30), radians(480-30)); 
  stroke(255, 247, 0); 
  strokeWeight(5);
  arc(1040, 270, 130, 140, radians(sRadians+40), radians(300-40));  
  arc(1040, 425, 130, 140, radians(sRadians2+40), radians(480-40)); 


  if (radianMove==true) {  // alows radian/arcs to move back and forth 
    sRadians+=2;
    sRadians2+=2;
  } else if (radianMove==false) {
    sRadians-=2;
    sRadians2-=2;
  }

  if (sRadians>=299) { // sets the farthest distance before switcching direction 
    radianMove=false;
  } else if (sRadians<=91) {
    radianMove=true;
  }

  if (Fire==true) { // if key f is pressed it activates this boolean which starts a loop of fire 
    int FireX=-25;
    int FireY=625;
    while (FireX<=1450) { // loops fire triangles
      FireX+=50;

      FireY=645;  
      while (FireY<=700) {
        fill(FireColour+255, FireColour+205, FireColour+0);
        stroke(FireColour+255, FireColour+170, FireColour);
        triangle(FireX, FireY-(fireUp-20), FireX-25, FireY+25, FireX+25, FireY+25); 
        FireY+=25;
      }

      FireY-=1;
    }

    int FireX2=0;
    int FireY2=625;
    while (FireX2<=1450) { // loops smaller fire triangles 
      FireX2+=50;

      FireY2=650;  
      while (FireY2<=700) {
        fill(FireColour+255, FireColour+111, FireColour);
        stroke(FireColour+252, FireColour+36, FireColour+36);
        triangle(FireX2, FireY2-fireUp, FireX2-25, FireY2+25, FireX2+25, FireY2+25); 
        FireY2+=25;
      }
    }
  }


  if (FireColourBoolean==true) {  // allows the fire to move up and down
    FireColour-=2;
    fireUp-=2;
    IcicleMove-=0.1; // icicle moves at the same time and speed as fire
  } else if (FireColourBoolean==false) {  
    FireColour+=2;
    fireUp+=2;
    IcicleMove+=0.1;
  }
  if (FireColour>=50) { // sets parameters to change colour of fire 
    FireColourBoolean = true;
  } else if (FireColour<=10) {
    FireColourBoolean = false;
  }

  fill(sRadians+165, sRadians+77, sRadians-87); // changes colour of 'e' at same speed as the 's' arcs
  noStroke(); 
  ellipse(852, 404, 170, 170);
  fill(255);
  arc(852, eSemiCirclesY1, eSemiCircles, eSemiCircles, radians(180), radians(360));  //semicricles for e 
  arc(852, eSemiCirclesY2, eSemiCircles, eSemiCircles, radians(360), radians(540)); 
  fill(0);
  textSize(20);
  text(12, clockNumbers+844, clockNumbers+340); // text numbers for the clock
  text(1, clockNumbers+886, clockNumbers+352);
  text(2, clockNumbers+908, clockNumbers+373);
  text(3, clockNumbers+915, clockNumbers+407);
  text(4, clockNumbers+907, clockNumbers+443);
  text(5, clockNumbers+882, clockNumbers+470);
  text(6, clockNumbers+846, clockNumbers+478);
  text(7, clockNumbers+804, clockNumbers+470);
  text(8, clockNumbers+ 784, clockNumbers+443);
  text(9, clockNumbers+775, clockNumbers+407);
  text(10, clockNumbers+784, clockNumbers+374);
  text(11, clockNumbers+808, clockNumbers+345);
  fill(255);
  strokeWeight(clockHandSize);
  stroke(clockHand);
  line(852, eSemiCirclesY2+8, 933, 425); // clock hand 


  if (keyClicked==true) { // if the keyPressed boolean is activated do this...

    eSemiCircles-=0.5;
    clockNumbers+=1000; // moves numbers off screen 
    if (eSemiCircles<=90 && eSemiCircles>=88) { // moves semi cricles to form 'e'
      eSemiCircles=90;
      eSemiCirclesY1-=0.5;
      eSemiCirclesY2+=0.5;
    }

    if (eSemiCirclesY1<=381) { // makes the semi circles stop at certain points 
      eSemiCirclesY1=380;
    }
    if (eSemiCirclesY2>=416) {
      eSemiCirclesY2=417;
      clockHand=255;
      clockHandSize+=0.1;
    }

    if (clockHandSize>=15) { // makes the clock hand grow 
      clockHandSize=16;
      stroke(255, 0, 0);
      hArc-=0.3;
    }

    int hLetterX=1294; // loop the dots in the second rectangle in the letter 'h'
    int hLetterY=297;
    while (hLetterX<=1342) { 
      hLetterX+=10;

      hLetterY=334;  
      while (hLetterY<=492) {
        stroke(clockHand);
        ellipse(hLetterX, hLetterY, 5, 5); 
        hLetterY+=10;
      }
    }  
    stroke(124, 29, 29);
    strokeWeight(20);
    noFill();
    arc(1259, 322, 140, 130, radians(hArc), radians(360)); // used to enable the curve part of the 'h'
    if (hArc<=181) {
      hArc=180;
    }
  } else {
    stroke(random(0, 255), random(0, 255), random(0, 255));
    underline+=2;
    line(underline2, 542, underline, 542);
  }

  if (underline>=1370) {
    underline=1370;
    underline2+=2;
  }

  fill(255, 0, 0); // makes different coloured shapes and stops them at certain points (tetris effect)
  noStroke();
  rect(1161, hTetris1, 60, 20);

  if (hTetris1>=474 && hTetris1<=476) { // sets where the shape will stop
    hTetris1=475; // stops the shape
  }
  fill(14, 232, 52); // changes colour and draws new shape
  rect(1161, hTetris2, 40, 40);

  if (hTetris2>=433 && hTetris2<=437) {
    hTetris2=435;
  }
  fill(49, 194, 232);
  rect(1201, hTetris3, 20, 60);
  rect(1181, hTetris3, 20, 20); 

  if (hTetris3>=414 && hTetris3<=416) {
    hTetris3=415;
  }
  fill(250, 255, 0); 
  rect(1161, hTetris4, 20, 100); 

  if (hTetris4>=274 && hTetris4<=276) {
    hTetris4=275;
  }
  fill(255, 166, 0); 
  rect(1161, hTetris5-20, 20, 60); 
  rect(1181, hTetris5, 20, 20); 

  if (hTetris5>=394 && hTetris5<=396) {
    hTetris5=395;
  }
  fill(255, 0, 0); 
  rect(1181, hTetris6-20, 40, 20); 
  rect(1201, hTetris6, 20, 20); 

  if (hTetris6>=394 && hTetris6<=396) {
    hTetris6=395;
  }
  fill(49, 194, 232); 
  rect(1201, hTetris7, 20, 20); 

  if (hTetris7>=354 && hTetris7<=356) {
    hTetris7=355;
  }
  fill(0, 81, 237); 
  rect(1181, hTetris8, 20, 40); 
  rect(1201, hTetris8-20, 20, 40);  

  if (hTetris8>=334 && hTetris8<=336) {
    hTetris8=335;
  }
  fill(159, 14, 170); 
  rect(1181, hTetris9-20, 20, 60); 
  rect(1201, hTetris9, 20, 20); 

  if (hTetris9>=294 && hTetris9<=296) {
    hTetris9=295;
  }
  fill(0, 81, 237);
  rect(1161, hTetris10, 40, 40);

  if (hTetris10>=234 && hTetris10<=236) {
    hTetris10=235;
  }
  fill(255, 166, 0);
  rect(1161, hTetris11-40, 20, 60);
  rect(1181, hTetris11, 20, 20);

  if (hTetris11>=214 && hTetris11<=216) {
    hTetris11=215;
  }
  fill(14, 232, 52);
  rect(1181, hTetris12, 20, 60);

  if (hTetris12>=154 && hTetris12<=156) {
    hTetris12=155;
  }


  if (Icicle==true) { // if 'i' is pressed on the keyboard then draw these for loops

    for (int IcicleX = -25; IcicleX < 1500; IcicleX+=100) { // loops the icicles with different sizes 
      noStroke();
      fill(158, 213, 237);
      triangle(IcicleX-IcicleMove, 100, IcicleX-(IcicleMove+10), 0, IcicleX+(IcicleMove+10), 0);
    }

    for (int IcicleX = -25; IcicleX < 1500; IcicleX+=90) { 
      noStroke();
      fill(158, 213, 237);
      triangle(IcicleX-IcicleMove, 60, IcicleX-(IcicleMove+8), 0, IcicleX+(IcicleMove+8), 0);
    }

    for (int IcicleX = -25; IcicleX < 1500; IcicleX+=60) { 
      noStroke();
      fill(158, 213, 237);
      triangle(IcicleX-IcicleMove, 30, IcicleX-(IcicleMove+5), 0, IcicleX+(IcicleMove+5), 0);
    }

    for (int IcicleX = 6; IcicleX < 1500; IcicleX+=110) {
      noStroke();
      fill(158, 213, 237);
      triangle(IcicleX-IcicleMove, 90, IcicleX-(IcicleMove+5), 0, IcicleX+(IcicleMove+5), 0);
    }

    for (int IcicleX = 6; IcicleX < 1500; IcicleX+=45) { 
      noStroke();
      fill(158, 213, 237);
      triangle(IcicleX-IcicleMove, 70, IcicleX-(IcicleMove+5), 0, IcicleX+(IcicleMove+5), 0);
    }
  }
}

void mousePressed() { // helps show the X and Y values of shapes when drawing 
  println(mouseX);
  println(mouseY);
}
void keyPressed() { // if a key is pressed activate a certain boolean and make it true

  if (key== ' ') {
    keyClicked=true;
  } else if (key == 'f' || key == 'F') {
    Fire=true;
  } else if (key == 'i' || key == 'I') {
    Icicle=true;
  } 
}
