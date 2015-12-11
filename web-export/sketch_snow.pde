PShape snowFlake;
float sf_w=191.1;
float sf_h=201.1;
void setup(){
  size($(window).width(),$(window).height());
  colorMode(HSB, 360, 100, 100);
  background(218,55,80);
  frameRate(12);
  snowFlake=loadShape("snowFlake.svg");
  
}
void draw(){
//fill(0,0,255,50);
//rect(0,0,width,height);
snowFlake.disableStyle();
	colorMode(HSB, 360, 100, 100);
noStroke(); 
shapeMode(CENTER);
int shift = 1;
float y_shift =cos(PI/6)*sf_w;
float x_shift =sin(PI/6)*(sf_h);
for (float y = 0.0; y < height+ y_shift; y+= (y_shift)){
  

  for (float x=0.0; x < width + sf_w; x += sf_w) {
  
    float mouseDist=(abs(x-mouseX)+abs(y-mouseY))/2;
     float size = (sf_w+sf_h)/4;
/*    if(mouseDist<=1*size){
      fill(218,25,79,100);
    }
    else if ( mouseDist<=3*size) { 
      fill(218,random(20,25),random(85,95),75);
    }
    else
    {
      fill(218,random(20,22),random(90,100),50);
    } */
	if(mouseDist<=1*size){
      fill(218,85,95,100);
    }
    else if ( mouseDist<=3*size) { 
      fill(218,random(60,85),random(85,90),50);
    }
    else
    {
      fill(218,random(55,80),random(85,90),50);
    }
	  if (shift==1){

		  shape(snowFlake,x+x_shift,y,sf_w,sf_h);
		  
	  }
	  else{
		shape(snowFlake,x,y,sf_w,sf_h);
	  }
	  
	
}
  shift=shift*-1;
}
}

