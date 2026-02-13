//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    
    drawFish(200, 200, color(200,0,200)); 
    drawFish(300, 200, color(0,200,200));

    drawStar(400, 320, color(200,10,195)); //right star
    drawStar(100, 315, color(100,10,195)); //left star

    drawBubble (100, 130);


};

 var drawBubble = function(bubbleX, bubbleY, bubbleSize){

//draw bubble
stroke(100, 150, 255, 80)
fill(100, 150, 255, 120);
ellipse(bubbleX, bubbleY, bubbleSize, bubbleSize);

 };

 //var declarations
 var nemoX = 550;
 var nemoY = 150;
 

//🟢draw Function - will run on repeat
draw = function(){

  //fishy
  fill(255, 111, 29);
  ellipse (nemoX, 150, 45, 35); //body
  fill(0,0,0);
  ellipse (nemoX-10, 150, 10, 10); //eye
  fill(255,255,255);
  stroke(255,255,255)
  line(nemoX, 132, nemoX, 167); //1st stripe
  line (nemoX+10, 133, nemoX+10, 165); //2nd stripe
  fill(255,111,29);
  triangle (nemoX+24, 150, nemoX+40, 140, nemoX+40, 160);// tail

nemoX -= 10;

};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
 drawBubble (mouseX, mouseY, random(6,45))

}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};

//drawStar Function - will run when called
var drawStar = function (starX, starY, starColor){
textSize(60);
fill(starColor);
text("𓇼", starX, starY);
};




