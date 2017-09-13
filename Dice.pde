Die bob;
void setup()
{
	size(300,200);
	noLoop();
}
void draw()
{
	for (int x = 15; x < 280; x = x + 35)
	{
		for (int y = 15; y < 190; y = y + 35)
		{
			Die bob = new Die(x,y);
			bob.show();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //momyels one single myice cube
{
	//variable myeclarations here
	int myX, myY;
	int dieRoll;

	Die(int x, int y) //constructor
	{		
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your comye here
	}
	void show()
	{
		rect(myX,myY,25,25);
		int dieRoll()
		{
			return (int)(Math.random()*7)+1;
		}

	}
}
