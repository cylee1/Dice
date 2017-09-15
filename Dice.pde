Die bob;
PFont myFont;
void setup()
{
	size(300,210);
	noLoop();
//	String[] fontList = PFont.list();
//	printArray(fontList);
	myFont = createFont("8BIT WONDER Nominal", 12);
}
void draw()
{
	int sum = 0;
	background(192,192,192);
	for (int x = 15; x < 280; x = x + 35)
	{
		for (int y = 15; y < 190; y = y + 35)
		{
			Die bob = new Die(x,y);
			bob.show();
			if(bob.dieRoll < 211)
			{
				sum = sum + bob.dieRoll;
			}
		}
	}
	fill(0);
 	textFont(myFont);
	text("Total " + sum, 190, 200);
}

void mousePressed()
{
	redraw();
}
class Die //momyels one single myice cube
{
	//variable myeclarations here
	int myX, myY,dieRoll;

	Die(int x, int y) //constructor
	{		
		myX = x;
		myY = y;
	}
	void roll()
	{
	 	dieRoll = (int)(Math.random()*6)+1;
	}
	void show()
	{
		fill(255);
		rect(myX,myY,25,25);
		roll();
		if (dieRoll == 1)
			{
				fill(180,0,0);
				rect(myX + 10, myY + 10, 5, 5);
			}
		else if(dieRoll == 2)
			{
				fill(0);
				rect(myX + 5, myY + 5, 5, 5);
				rect(myX + 15, myY + 15, 5, 5);
			}
		else if(dieRoll == 3)
		{
			fill(0);
			rect(myX + 3, myY + 3, 5, 5);
			rect(myX + 10, myY + 10, 5, 5);
			rect(myX + 17, myY + 17, 5, 5);
		}
		else if(dieRoll == 4)
		{
			fill(0);
			rect(myX + 3, myY + 3, 5, 5);
			rect(myX + 3, myY + 17, 5, 5);
			rect(myX + 17, myY + 3, 5, 5);
			rect(myX + 17, myY + 17, 5, 5);
		}
		else if(dieRoll == 5)
		{
			fill(0);
			rect(myX + 3, myY + 3, 5, 5);
			rect(myX + 3, myY + 17, 5, 5);
			rect(myX + 17, myY + 3, 5, 5);
			rect(myX + 17, myY + 17, 5, 5);
			rect(myX + 10, myY + 10, 5, 5);
		}
		else if(dieRoll == 6)
		{
			fill(0);
			rect(myX + 3, myY + 3, 5, 5);
			rect(myX + 3, myY + 10, 5, 5);
			rect(myX + 3, myY + 17, 5, 5);
			rect(myX + 17, myY + 3, 5, 5);
			rect(myX + 17, myY + 10, 5, 5);
			rect(myX + 17, myY + 17, 5, 5);
		}
	}
}
