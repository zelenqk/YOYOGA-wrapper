globalvar mouses, mouseN;

mouseN = 10;
mouses = array_create(mouseN);

function mouse_in_box(box){
	for(var i = 0; i < mouseN; i++){
		if (!mouses[i]){
			var pib = point_in_box(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), box.x, box.y, box.w, box.h);
		
			if (pib) return i;
		}
	}
	
	return -1;
}

function mouse_in_rectangle(tx, ty, w, h){
	for(var i = 0; i < mouseN; i++){
		if (!mouses[i]){
			var pib = point_in_box(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), tx, ty, w, h);
		
			if (pib) return i;
		}
	}
	
	return -1;
}

function point_in_box(px, py, tx, ty, w, h){
	return point_in_rectangle(px, py, tx, ty, tx + w, ty + h);
}