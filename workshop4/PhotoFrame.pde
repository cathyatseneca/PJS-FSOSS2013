PolkaDot [] dots=new PolkaDot[10];
Tri [] tri=new Tri[10];
Flower [] flowers=new Flower[10];
Organizer album;
FireWorks [] fireworks=new FireWorks[2];
Poem p;
void setup(){
  size(window.innerWidth,window.innerHeight);
  p=new Poem("ozymandius.txt");
  album=new Organizer();
  for(int i=0;i<3;i++){
    fireworks[i]=new FireWorks();
  }
  for(int i=0;i<10;i++){
    dots[i]=new PolkaDot(random(0,width),random(0,height));
    tri[i]=new Tri(random(0,width),random(0,height));
    flowers[i]=new Flower(random(10,width), random(10,height/2));
  }
  p.setPosition(100,20);
}
void draw(){
  background(0,0,0);
  for(int i=0;i<10;i++){
    dots[i].draw();
    tri[i].draw();
    flowers[i].draw();
  }
  for(int i=0;i<2;i++){
    fireworks[i].draw();
  }
  p.draw();
  album.draw();
 }


