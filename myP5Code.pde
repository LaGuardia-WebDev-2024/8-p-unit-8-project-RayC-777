//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    
    drawFish(200, 200, color(200,0,200)); 
    drawFish(300, 200, color(0,200,200));

    drawStar(400, 320, color(200,10,195));
    drawStar(100, 315, color(100,10,195));

    drawBubble (100, 130)
    
};

 var drawBubble = function(bubbleX, bubbleY){

bubbleY = bubbleY - 1;

//If bubble goes off screen, reset its position
if (bubbleY <0) {
bubbleY = height;
bubbleX = random(width); // optional: reset to a random x position
}
//draw bubble
stroke(100, 150, 255, 80)
fill(100, 150, 255, 100);
ellipse(bubbleX, bubbleY, 50, 50);

 };

//🟢draw Function - will run on repeat
draw = function(){


};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
 drawBubble (mouseX, mouseY)

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



