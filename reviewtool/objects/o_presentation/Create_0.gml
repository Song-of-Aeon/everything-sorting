//application_surface_draw_enable(false);

window_set_fullscreen(true);



/*horrifi_bloom_set(true,26.56,0.30,0.72);
horrifi_chromaticab_set(true,0.64);
horrifi_scanlines_set(true,0.10);
horrifi_vhs_set(true,0.10);
horrifi_vignette_set(true,0.30,0.87);
horrifi_crt_set(false,2);
horrifi_noise_set(true,0.17);*/

scsize = new vec2(1920, 1080);

size = new vec2(2000, 500);
funky = surface_create(scsize.x, scsize.y);
funky2 = surface_create(scsize.x, scsize.y);
funky3 = surface_create(816, 624);
funky4 = surface_create(640, 480);
funky5 = surface_create(600, 400);
funky6 = surface_create(300, 200);
funky7 = surface_create(300, 200);
funky8 = surface_create(200, 200);
funky9 = surface_create(300, 200);



//cam

zoom = 1;
zoomlerp = 1;
pos = new vec2(scsize.x*zoom, scsize.y*zoom);
thingpos = new vec2(300, 200);
maxzoom = 10;
count = 0;

funking = false;

page = 0;
wait = 0;
waitwo = 0;
screenoffset = new vec2(-50, -400);
progress = 0;

var xmult = 2.125;
var ymult = 9.95;
var baseamount = .2;

camera_set_view_size(view_camera[0], 1920*(1-baseamount)*(0)+1920*baseamount, 1080*(1-baseamount)*(0)+1080*baseamount);
camera_set_view_pos(view_camera[0], 1920/xmult-camera_get_view_width(view_camera[0])/xmult, 1080/ymult-camera_get_view_height(view_camera[0])/ymult);

nu song("taishi", "taishi", [m_taishi]);

if true exit;
funking = true;
waitwo = 10 sec;
wait = 99 sec;
count = 32 sec-10;

