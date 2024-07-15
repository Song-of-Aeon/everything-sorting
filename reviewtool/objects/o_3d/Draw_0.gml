//var target = distabs(angle, 1000);
var cam = camera_get_active();
var mat = matrix_build_lookat(x, y, z, x+cos(mousex/dpi), y-sin(mousex/dpi), z-sin(mousey/dpi), 0, 0, -1);
//+,global.cameray +,global.cameraz
var matwo = matrix_build_projection_perspective_fov(85, window_get_width()/window_get_height(), 1, 32000);
camera_set_view_mat(cam, mat);
camera_set_proj_mat(cam, matwo);
camera_apply(cam);