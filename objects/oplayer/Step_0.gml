//get inputs
rightkey = keyboard_check( vk_right );
leftkey = keyboard_check( vk_left );

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
	