function yoga_wrapper(layername) constructor{
	rootLayer = layer_get_id(layername);
	root = layer_get_flexpanel_node(layername);
	
	self.sprite = function(sprite, style = -1, spriteStyle = -1, node = root){
		sprite = sprite_element(sprite, style, spriteStyle);
		append_flexpanel(node, sprite);
		
		return sprite;
	}
	
	self.text = function(text, font, style = -1, textStyle = -1, node = root){
		text = text_element(text, font, style, textStyle);
		append_flexpanel(node, text);
		
		return text;
	}
	
	self.object = function(object, style = -1, objectStyle = -1, node = root){
		object = object_element(object, style, objectStyle);
		append_flexpanel(node, object);
		
		return object;
	}
}

//ELEMENTS
function sprite_element(sprite, style = -1, spriteStyle = -1){
	var element = { 
		type: "Sprite", 
		spriteIndex: sprite, 
		spriteColour: -1,
	};
	
	if (spriteStyle != -1) set_style(element, spriteStyle);
	
	return element_flexpanel(element, style);
}

function text_element(text, font, style = -1, textStyle = -1){
	var element = { 
		type: "Text", 
		textText: text,
		textColour: -1,
		textFontIndex: font,
	};
	
	if (textStyle != -1) set_style(element, textStyle);
	
	return element_flexpanel(element, style);
}

function object_element(object, style = -1, objectStyle = -1){
	var element = { 
		type: "Instance",
		instanceObjectIndex: object,
		instanceColour: -1.0,
	};
	
	if (objectStyle != -1) set_style(element, objectStyle);
	
	return element_flexpanel(element, style);
}

//UTIL
function append_flexpanel(flexpanel, child){
	var index = flexpanel_node_get_num_children(flexpanel);
	flexpanel_node_insert_child(flexpanel, child, index);
}

function element_struct(struct, style){
	var element = {
		"alignItems": "center",
		"justifyContent": "center",
		"layerElements": [struct],
	}
	
	if (style != -1) set_style(element, style);
	
	return element;
}

function element_flexpanel(struct, style = -1){
	var element = element_struct(struct, style);
	
	return flexpanel_create_node(element);
}

function set_style(element, style){
	var names = struct_get_names(style);
	var namesN = array_length(names)
	
	for(var i = 0; i < namesN; i++){
		var name = names[i];
		element[$ name] = style[$ name];
	}

	return element;
}
