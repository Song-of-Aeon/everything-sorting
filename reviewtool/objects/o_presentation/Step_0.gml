c_inputupdate();
c_input();


if !surface_exists(funky) {
	funky = surface_create(scsize.x, scsize.y);
	funky2 = surface_create(scsize.x, scsize.y);
	funky3 = surface_create(816, 624);
	funky4 = surface_create(640, 480);
	funky5 = surface_create(600, 400);
	funky6 = surface_create(300, 200);
	funky7 = surface_create(300, 200);
	funky8 = surface_create(200, 200);
	funky9 = surface_create(300, 200);
}

page = max(0, page+right.hit-left.hit);


if page > sprite_get_number(s_pages)-1 {
	wait++;
}
if wait > 7 sec waitwo++;

if waitwo > 2 sec funking = true; //24


var duration = 32 sec; //32
if funking && count < duration-1 {
	c
	
	if count == 10 sec {
		log("setting");
		music_set(mus.taishi);
	}
	
	horrifi_enable(true);
	
	progress = easemult(ac_bilerp, count, duration, 1);
	zoomlerp = 1-progress*.85;
	pos.x = scsize.x*zoomlerp;
	pos.y = scsize.y*zoomlerp;
	var baseamount = .2;
	var camprogress = easemult(ac_getaround, progress, 1, 1);
	camera_set_view_size(view_camera[0], 1920*(1-baseamount)*(camprogress)+1920*baseamount, 1080*(1-baseamount)*(camprogress)+1080*baseamount);
	//camera_set_view_pos(view_camera[0], 1920/2-(1080/2*abs(pos.x-1)), 1080/2-(1080/2*abs(pos.y-1)));
	
	var xmult = 2.125;
	var ymult = 9.95;
	camera_set_view_pos(view_camera[0], 1920/xmult-camera_get_view_width(view_camera[0])/xmult, 1080/ymult-camera_get_view_height(view_camera[0])/ymult);
	//log(pos, zoom);
	var dontcare = easemult(ac_stayup, progress, 1, 1);
	horrifi_bloom_set(true,26.56*dontcare,0.30*dontcare,0.72*dontcare);
	horrifi_chromaticab_set(true,0.64*dontcare);
	horrifi_scanlines_set(true,0.10*dontcare);
	horrifi_vhs_set(true,0.10*dontcare);
	horrifi_vignette_set(true,0.30*dontcare,0.87*dontcare);
	horrifi_crt_set(false,2*dontcare);
	horrifi_noise_set(true,0.17*dontcare);
	
	//cmm();
}





