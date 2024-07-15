//view_set_hport(view_current, 100)

var outsidesize = 7; //5

var counteroffset

surface_set_target(funky2);
//draw_rectangle_color(0, 0, scsize.x, scsize.y, c_red, c_blue, c_green, c_yellow, false);
draw_clear(c_black);
draw_spr(0, 0, s_seeing);
surface_reset_target();
/*draw_surface_stretched(
	funky2,
	scsize.x/2-pos.x/2*outsidesize-screenoffset.x,
	scsize.y/2-pos.y/2*outsidesize,
	pos.x*outsidesize, pos.y*outsidesize,
);*/
draw_surface(funky2, 0, 0);
/*var friend = sprite_create_from_surface(funky2, 0, 0, 1920, 1080, true, false, 0, 0);
draw_sprite_stretched(
	friend, 0,
	scsize.x/2-pos.x/2*outsidesize+screenoffset.x*progress-screenoffset.x,
	scsize.y/2-pos.y/2*outsidesize+screenoffset.y*progress-screenoffset.y,
	pos.x*outsidesize, pos.y*outsidesize,
);
sprite_delete(friend);*/
surface_set_target(funky);
draw_spr(0, 0, s_fakedesktop);
draw_spr(scsize.x*.5, scsize.y*.475, s_pages, clamp(page, 0, 5), .9, .9);
if !waitwo && wait > 5 sec && !irandom(20) draw_clear(c_black);
if waitwo {
	draw_spr(0, 0, s_bluescreen);
}
//draw_clear(c_red);
//draw_clear(c_grey);
//draw_spr(500, 300, s_sans);
surface_reset_target();
horrifi_set();
/*draw_surface_stretched(
	funky,
	scsize.x/2-pos.x/2+screenoffset.x*progress,
	scsize.y/2-pos.y/2+screenoffset.y*progress,
	pos.x, pos.y,
);*/
#macro andx +scsize.x/2-pos.x/2+screenoffset.x*progress
#macro andy +scsize.y/2-pos.y/2+screenoffset.y*progress
#macro tempx scsize.x/2-pos.x/2+screenoffset.x*progress
#macro tempy scsize.y/2-pos.y/2+screenoffset.y*progress
var stretch = [
	new vec2(723, 87),
	new vec2(1089, 66),
	new vec2(760, 233),
	new vec2(1075, 221),
]
/*draw_surface_normal(
	funky,
	new vec2(tempx+stretch[0].x*progress, tempy+stretch[0].y*progress),
	new vec2(tempx+pos.x+stretch[1].x*progress, tempy+stretch[1].y*progress),
	new vec2(tempx+stretch[2].x*progress, tempy+pos.y+stretch[2].y*progress),
	new vec2(tempx+pos.x+stretch[3].x*progress, tempy+pos.y+stretch[3].y*progress),
);
draw_surface_normal(
	funky,
	new vec2(tempx+stretch[0].x*progress, tempy+stretch[0].y*progress),
	new vec2(tempx+stretch[1].x*progress, tempy+stretch[1].y*progress),
	new vec2(tempx+stretch[2].x*progress, tempy+stretch[2].y*progress),
	new vec2(tempx+stretch[3].x*progress, tempy+stretch[3].y*progress),
);*/
/*draw_surface_normal(
	funky,
	new vec2(stretch[0].x*progress, stretch[0].y*progress),
	new vec2(stretch[1].x*progress, stretch[1].y*progress),
	new vec2(stretch[2].x*progress, stretch[2].y*progress),
	new vec2(stretch[3].x*progress, stretch[3].y*progress),
);*/

/*draw_surface_normal(
	funky,
	new vec2(lerp(723, stretch[0].x, max(progress*10, 1)), lerp(87, stretch[0].y, max(progress*10, 1))),
	new vec2(lerp(723+1920*.2, stretch[0].x, max(progress*10, 1)), lerp(87, stretch[0].y, max(progress*10, 1))),
	new vec2(lerp(723, stretch[0].x, max(progress*10, 1)), lerp(87+1080*.2, stretch[0].y, max(progress*10, 1))),
	new vec2(lerp(723+1920*.2, stretch[0].x, max(progress*10, 1)), lerp(87+1080*.2, stretch[0].y, min(progress*10, 1))),
);*/
var amount = clamp((progress-.05)*6, 0, 1);
draw_surface_normal(
	funky,
	new vec2(lerp(723, stretch[0].x, amount), lerp(87, stretch[0].y, amount)),
	new vec2(lerp(723+1920*.2, stretch[1].x, amount), lerp(87, stretch[1].y, amount)),
	new vec2(lerp(723, stretch[2].x, amount), lerp(87+1080*.2, stretch[2].y, amount)),
	new vec2(lerp(723+1920*.2, stretch[3].x, amount), lerp(87+1080*.2, stretch[3].y, amount)),
);
//draw_surface_stretched(funky, 713, 67, 1920*.2, 1080*.2);
/*draw_surface_normal(
	funky,
	new vec2(713 andx, 67 andy),
	new vec2(1089 andx, 46 andy),
	new vec2(750 andx, 213 andy),
	new vec2(1075 andx, 201 andy),
);*/

draw_set_alpha(count/14 sec);

surface_set_target(funky3);
draw_spr(0, 0, s_rpgmaker);
surface_reset_target();

surface_set_target(funky4);
draw_spr(0, 0, s_hub);
surface_reset_target();

surface_set_target(funky5);
draw_spr(0, 0, s_cobalt);
surface_reset_target();


draw_surface_normal(
	funky3,
	new vec2(405, 634),
	new vec2(600, 635),
	new vec2(425, 768),
	new vec2(616, 771),
);
draw_surface_normal(
	funky4,
	new vec2(1326, 635),
	new vec2(1507, 674),
	new vec2(1305, 744),
	new vec2(1488, 781),
);
draw_surface_normal(
	funky5,
	new vec2(731, 551),
	new vec2(874, 577),
	new vec2(727, 639),
	new vec2(867, 660),
);

draw_set_alpha(count/(14 sec)*.9);

surface_set_target(funky6);
draw_spr(0, 0, s_pong);
surface_reset_target();

surface_set_target(funky7);
draw_spr(0, 0, s_pong);
surface_reset_target();

surface_set_target(funky8);
draw_spr(0, 0, s_pong);
surface_reset_target();

surface_set_target(funky9);
draw_spr(0, 0, s_pong);
surface_reset_target();

gpu_set_blendmode(bm_add);

draw_surface_normal(
	funky6,
	new vec2(546, 444),
	new vec2(652, 417),
	new vec2(559, 547),
	new vec2(670, 518),
);

draw_surface_normal(
	funky7,
	new vec2(626, 248),
	new vec2(761, 276),
	new vec2(602, 366),
	new vec2(745, 406),
);

draw_surface_normal(
	funky8,
	new vec2(794, 310),
	new vec2(900, 320),
	new vec2(775, 459),
	new vec2(884, 490),
);

draw_surface_normal(
	funky9,
	new vec2(1071, 313),
	new vec2(1228, 339),
	new vec2(1092, 460),
	new vec2(1229, 494),
);


gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

horrifi_reset();

//draw_spr(30, 30, s_bigtext);