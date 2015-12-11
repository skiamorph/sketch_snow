PShape snowFlake;
float sf_w=285.0;
float sf_h=302.0;
void setup(){
  size($(window).width(),$(window).height());
  frameRate(10);
  snowFlake=loadShape("snowFlake.svg");
}
void draw(){
fill(0,0,255,50);
rect(0,0,width,height);
snowFlake.disableStyle();
colorMode(HSB, 100);
noStroke(); 
shapeMode(CENTER);
boolean shift = true;
float y_shift =cos(PI/6)*sf_w;
float x_shift =sin(PI/6)*(sf_h);
for (float y = 0.0; y < height+ y_shift; y+= (y_shift)){
  

  for (float x=0.0; x < width + sf_w; x += x_shift) {
  
    float mouseDist=(abs(x-mouseX)+abs(y-mouseY))/2;
    float size = (sf_w+sf_h)/4;
    if(mouseDist<=1*size){
      fill(60,70,100);
    }
    else if ( mouseDist<=3*size) { 
      fill(60,60,175);
    }
    else
    {
      fill(60,50,255);
    }
     if (shift){

      shape(snowFlake,x+x_shift,y,sf_w,sf_h);
      
  }
  else{
    shape(snowFlake,x,y,sf_w,sf_h);
  }
  
  shift=!shift;
}

}
}
