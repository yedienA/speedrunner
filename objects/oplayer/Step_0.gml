ysp+=0.1
xsp=0
 
 
if keyboard_check(vk_left)
{
	xsp=-3
}
 
if keyboard_check(vk_right)
{
	xsp=+3
}
 
if place_meeting(x,y+1,oSolid)
{
	ysp=0
	if keyboard_check(vk_up)
	{
		ysp=-3
	}
}
 
move_and_collide(xsp,ysp,oSolid)
 
 // Move the player with arrow keys
if (keyboard_check(vk_left)) {
    x -= 4;
}

if (keyboard_check(vk_right)) {
    x += 4;
}

if (keyboard_check(vk_up)) {
    y -= 4;
}

if (keyboard_check(vk_down)) {
    y += 4;
}
