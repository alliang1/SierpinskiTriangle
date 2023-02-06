 int bam = (int)(Math.random()*250);
 int lam = (int)(Math.random()*250);
 int tam = (int)(Math.random()*250);
 int wee = 20;
public void setup()
{
size(600,600);
background(0);
}
public void draw()
{
sierpinski(0,600,600);
}
public void mouseMoved()//optional
{

  wee = wee + 5;
  
}
public void mouseClicked(){
  fill(0);
  triangle(-10,600,610,600,300,-10);
  wee =20;
}
public void sierpinski(int x, int y, int len)
{
  
 noStroke();
  if(len <= wee){
   triangle(x,y,x+len,y,x+len/2,y-len);
  }
  
  
  else{

    fill(bam,lam,tam);
  sierpinski(x,y,len/2);
  fill(lam,tam,bam);
  sierpinski(x+len/2,y,len/2);
  fill(tam,bam,lam);
  sierpinski(x+len/4,y-len/2,len/2);
  }
 
}
