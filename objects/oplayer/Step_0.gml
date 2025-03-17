//get inputs
rightkey = keyboard_check( vk_right );
leftkey = keyboard_check( vk_left );
jumpKeyPressed = keyboard_check_pressed( vk_space );

//X movment
	//Direction
	moveDir = rightkey - leftkey;

	//get xspd
	xspd = moveDir * moveSpd;

	//X collision
	var _subPixel = 0.5;
	if place_meeting( x + xspd, y, owall )
	{
		//scoot up to wall precisely
		var _pixelCheck = _subPixel * sign(xspd);
		while !place_meeting( x + _pixelCheck, y, owall)//while=loop
		{
			x += _pixelCheck;
		}
	
		//Set xspd to zero to "collide"
		xspd = 0;
	}

	//move
	x += xspd;
	
	
//Y movment
	//gravity
	yspd += grav;
	
	//Jump
	if jumpKeyPressed && place_meeting( x, y+1, owall )
	{
		yspd =jspd;
	}
	
	// Y collision
	var _subPixel = .5;
	if place_meeting( x, y + yspd, owall )
	{
		//scoot up to the wall precisley
		var _pixelCheck = _subPixel * sign(yspd);
		while !place_meeting( x, y + _pixelCheck, owall )
		{
			y += _pixelCheck;
		}
		
		//set  yspd to 0 to collide
		yspd = 0;
	}
	
		//move
	y += xspd;