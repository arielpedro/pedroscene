public class One : SEScene
{

	SESprite text;
	SESprite mainscene;
	SESprite sprite;

	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
			add_sprite_for_color(Color.instance("#6633FF"), get_scene_width(), get_scene_height());
			
			rsc.prepare_image("back", "back", get_scene_width()*0.2,get_scene_height()*0.2);
			rsc.prepare_image("fish1", "fish1", get_scene_width()*0.5,get_scene_height()*0.65);
			rsc.prepare_font("myfont", "arial  color=#000000", 80);
			
			mainscene = add_sprite_for_image(SEImage.for_resource("back"));
		    sprite = add_sprite_for_image(SEImage.for_resource("fish1"));
			text = add_sprite_for_text("FIRST FISH", "myfont");

			mainscene.move(get_scene_width()*0.75,get_scene_height()*0.75);
		    sprite.move(get_scene_width()*0.5,0);
			text.move(0,0);
	}
	
	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		
		if(pi.is_inside(0.75*get_scene_width(),0.75*get_scene_height(),0.75*get_scene_width(),0.75*get_scene_height())) {
			switch_scene(new MainScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}