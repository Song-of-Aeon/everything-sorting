var width = WIDTH*.4;
var height = HEIGHT*.9;
scrollage = pos*linesize;
var page = {
	surf: surface_create(width, height),
	width: width,
	height: height,
	margin: new vec2(16, 10),
	x: WIDTH*.05,
	y: HEIGHT*.05,
}
surface_set_target(page.surf);
draw_clear_alpha(c_black, 1);
iterate global.stuff to {
	var thing = global.stuff[i];
	draw_string(page.margin.x, page.margin.y+i*linesize, thing.name);
}
surface_reset_target();
draw_surface_part(page.surf, 0, scrollage, page.width, page.height, page.x, page.y);
surface_free(page.surf);


width = WIDTH*.2;
height = HEIGHT*.9;
var scoredif = 40;
var scores = {
	surf: surface_create(width, height),
	width: width,
	height: height,
	margin: new vec2(16, 10),
	x: WIDTH*.05,
	y: HEIGHT*.05,
}
surface_set_target(scores.surf);
draw_clear_alpha(c_black, 1);
iterate global.stuff to {
	var thing = global.stuff[i];
	var z=0;
	draw_string(scores.margin.x+scoredif*z++, scores.margin.y+i*linesize, thing.concept);
	draw_string(scores.margin.x+scoredif*z++, scores.margin.y+i*linesize, thing.writing);
	draw_string(scores.margin.x+scoredif*z++, scores.margin.y+i*linesize, thing.characters);
	draw_string(scores.margin.x+scoredif*z++, scores.margin.y+i*linesize, thing.plot);
	draw_string(scores.margin.x+scoredif*z++, scores.margin.y+i*linesize, thing.worldbuilding);
	draw_string(scores.margin.x+scoredif*z++, scores.margin.y+i*linesize, thing.consistency);
	draw_string(scores.margin.x+scoredif*z++, scores.margin.y+i*linesize, thing.best);
	draw_string(scores.margin.x+scoredif*z++, scores.margin.y+i*linesize, thing.overall);
	draw_string(scores.margin.x+scoredif*z++, scores.margin.y+i*linesize, thing.myrank);
	draw_string(scores.margin.x+scoredif*z++, scores.margin.y+i*linesize, thing.SPWRGSPWRB);
	draw_string(scores.margin.x+scoredif*z++, scores.margin.y+i*linesize, thing.misc);
}
surface_reset_target();
draw_surface_part(scores.surf, 0, scrollage, scores.width, scores.height, scores.x, scores.y);
surface_free(scores.surf);

