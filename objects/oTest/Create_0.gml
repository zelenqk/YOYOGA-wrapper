var lr = layer_get_flexpanel_node("MAIN");
lr = flexpanel_node_get_struct(lr);

var text = json_stringify(lr, true);
show_message(text);