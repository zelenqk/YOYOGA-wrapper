mouse = mouse_in_rectangle(x, y, sprite_width, sprite_height);
hover = (mouse != -1);

if (hover) {
	image_alpha += ((0.5 - image_alpha) * dt) * ease;
	if (device_mouse_check_button(mouse, mb_any)) image_alpha += ((0.25 - image_alpha) * dt) * ease;
	
	if (mouse_check_button_pressed(mb_left)){
		onClick();	
	}
}else{
	image_alpha += ((1 - image_alpha) * dt) * ease;
}