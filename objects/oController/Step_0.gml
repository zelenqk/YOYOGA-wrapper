dt = (delta_time / targetDt) / 1000000;

if (keyboard_check_pressed(vk_shift)){
	var root = layer_get_flexpanel_node("MAIN")
	var struct = flexpanel_node_get_struct(root);
	var str = json_stringify(struct.nodes[0], true);
	clipboard_set_text(str);
}


if (instance_exists(oButton)) oButton.node = button;