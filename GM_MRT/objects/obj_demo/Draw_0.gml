///@desc Draw demo

//Width and height for surfaces
var _w = room_width;
var _h = room_height;

//Make sure the surfaces exist
if !surface_exists(surf0) surf0 = surface_create(_w,_h);
if !surface_exists(surf1) surf1 = surface_create(_w,_h);
if !surface_exists(surf2) surf2 = surface_create(_w,_h);
if !surface_exists(surf3) surf3 = surface_create(_w,_h);

//Apply MRT shader
shader_set(shd_mrt);
//Set output surfaces
surface_set_target_ext(0, surf0);
surface_set_target_ext(1, surf1);
surface_set_target_ext(2, surf2);
surface_set_target_ext(3, surf3);

//Draw sprite for demo
draw_self();

//Reset surface and shader
surface_reset_target();
shader_reset();

//Divide into quarters
_w /= 2;
_h /= 2;
//Draw one surface in each quadrant
draw_surface_part(surf0,00,00,_w,_h,00,00);
draw_surface_part(surf1,_w,00,_w,_h,_w,00);
draw_surface_part(surf2,00,_h,_w,_h,00,_h);
draw_surface_part(surf3,_w,_h,_w,_h,_w,_h);