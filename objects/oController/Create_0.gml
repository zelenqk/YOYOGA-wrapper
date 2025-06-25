globalvar dt;

font_enable_effects(fntTest, true, {
    outlineEnable: true,
    outlineDistance: 2,
    outlineColour: c_black	
})
draw_set_font(fntTest);

targetDt = (1 / 60); 
dt = (delta_time / targetDt) / 1000000;

main = new yoga_wrapper("MAIN");

// the " * " means its not needed while " ^ " means the default is -1
//	 sprite(sprite, style^, spriteStyle^, parentNode*);
sprite = main.sprite(sTest);

//	 text(text, font, style, textStyle, parentNode*);
text = main.text("Lorem ipsum", fntTest);

//	 object(text, style, objectStyle, parentNode*);
button = main.object(oButton, {
		"width": 300,
		"height": 100,
	},{
	"instanceVariables": {
		"sprite_index": sTest,
		"width": 300,
		"height": 100,
		"onClick": function(){
			show_message("Nice clicking action going over here");	
		}
	}
})

//	 text(text, font, style, textStyle, parentNode*);
label = main.text("Le' buton", fntTest, -1, -1, button);