if dashing {
	if !left.hold && !down.hold && !up.hold && !right.hold up.hold = true;
} else {
	walkspeed = lerp(walkspeed, 4.4+shift.hold*3, .07);
}
c


if turnleft.hit && dashing < 3 {
	//var dude = distabs();
	//x +=
	walkspeed = 16;
	dashing = 11;
	acc = 1;
	grav = 0;
	spd.v = 0;
}
dashing--;
if dashing == 0 {
	walkspeed = 4.4;
	grav = -.14;
}



//angle += turnright.hold*4-turnleft.hold*4;
left.ang = 180;
down.ang = 90;
up.ang = 270;
right.ang = 0;
var dirs = [left, down, up, right];
var successes = 1;
var str = walkspeed;
iterate dirs to {
	if dirs[i].hold {
		moveangle = lerp_angle(moveangle, dirs[i].ang, 1/successes);
		str--;
		successes++;
	}
}
//moveangle += angle+90;


if !esc.hold {
	mousex += window_mouse_get_x()-(window_get_width()/2);	
	mousey += window_mouse_get_y()-(window_get_height()/2);
	window_mouse_set(window_get_width()/2, window_get_height()/2);
	mousey = clamp(mousey, -1111, 1111);
	window_set_cursor(cr_none);
} else {
	window_set_cursor(cr_default);
}
angle = point_direction(x, y, x+cos(mousex/dpi), y-sin(mousex/dpi));



//var moveangle = angle+lerp(right.hold*90-left.hold*90, down.hold*180, .5);

var strength = abs(right.hold-left.hold)+abs(up.hold-down.hold);
spd.r = lerp(spd.r, strength*str, acc);
var dude = distabs(moveangle+angle+90, spd.r);
spd.h = dude.x;
spd.l = dude.y;

//x += dude.x;
//y += dude.y;
//z += jump.hold*3-shift.hold*3;
spd.v += grav;
if jump.hit && (!aerial || leniance) {
	spd.v = jspd;
	leniance = 0;
	aerial = true;
}
if jump.drop && spd.v > 0 spd.v *= .5;
if aerial leniance--;
if z+spd.v < height {
	z = height;
	spd.v = 0;
	aerial = false;
	leniance = 0;
}

if dashing == 0 acc = .1;

x += spd.h;
y += spd.l;
z += spd.v;
//z++;