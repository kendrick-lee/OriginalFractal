public void setup(){
	size(600,600);
	rectMode(CENTER);
}
color one;
color two;
color three;
public void draw(){
	background(0);
	myFractal(300,300,480);

}

public void mousePressed(){
	one = color((int) (Math.random()*256),(int) (Math.random()*256),(int) (Math.random()*256));
	two = color((int) (Math.random()*256),(int) (Math.random()*256),(int) (Math.random()*256));
	three = color((int) (Math.random()*256),(int) (Math.random()*256),(int) (Math.random()*256));
}

public void myFractal(int x, int y, int siz){
	fill(one);
	rect(x,y,siz,siz,siz/4,siz/4,siz/4,siz/4);
	fill(two);
	ellipse(x, y, siz, siz);
	fill(three);
	rect(x,y,siz/2,siz/2,siz/4,siz/4,siz/4,siz/4);
	
	if(siz > 10){
		myFractal(x-siz,y,siz/2);
		myFractal(x+siz,y,siz/2);
		myFractal(x,y-siz,siz/2);
		myFractal(x,y+siz,siz/2);
	}
}