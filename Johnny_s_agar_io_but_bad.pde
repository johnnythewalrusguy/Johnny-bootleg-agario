int x = 250;
int y = 250;
int Xloc=int(random(00,500));
int Xloc2=int(random(100,500));
int random=int(random(0,500));
int randomsize=int(random(30,90));
int Yloc=int(random(30,400));
int ox=int(random(500));
int oy=int(random(500));
int ex=int(random(500));
int ey=int(random(500));
int bigness=25;
boolean drawenemy=true;
boolean circle=true;
boolean wpressed=false;
boolean spressed=false;
boolean apressed=false;
boolean dpressed=false;
void setup(){
size(500,500);  
}
void draw(){
if(!drawenemy){
  ex=100000;
  ey=100000;
}
background(0,0,0);
fill(255,255,255);
circle(x,y,bigness);
circle(ox,oy,15);
if (dist(x,y,ox,oy)<25+(bigness/2)){
ox=int(random(500));
oy=int(random(500));
bigness=bigness+5;
}
fill (255,0,0);
circle(ex,ey,50);
if ((dist(x,y,ex,ey)<25+(bigness/2)) && bigness<=50){
exit();
 }
else if ((dist(x,y,ex,ey)<(bigness/2))&& bigness>50){
  drawenemy=false;
}
  
if (wpressed){
  y=y-3;
}
if (apressed){
  x=x-3;
}

if (spressed){
  y=y+3;
}
if (dpressed){
  x=x+3;
}

if(ex<x){
  ex=ex+1;
}
if(ex>x){
  ex=ex-1;
}
if(ey<y){
  ey=ey+1;
}
if(ey>y){
  ey=ey-1;
}
}
void keyPressed(){
if (key =='w'||key=='W'){
wpressed=true;
}
if (key =='s'||key=='S'){
spressed=true;
}
if (key =='a'||key=='A'){
apressed=true;
}
if (key == 'd'||key=='D'){
dpressed=true;
}
}
void keyReleased(){
    if (key =='w'||key=='W'){
 wpressed=false;
}
if (key =='s'||key=='S'){
spressed=false;
}
if (key =='a'||key=='A'){
apressed=false;
}
if (key == 'd'||key=='D'){
dpressed=false;
}
}
