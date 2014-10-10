
public class MainScene : SEScene
{


	SESprite fish1;
	SESprite fish2;
	SESprite fish3;
	SESprite fish4;
	SESprite text;
	double trans = 0;
	
	public void initialize(SEResourceCache rsc) {
	base.initialize(rsc);
	add_sprite_for_color(Color.instance("#3300FF"), get_scene_width(), get_scene_height());
	rsc.prepare_image("fish1", "fish1", get_scene_width()*0.5,get_scene_height()*0.5);	
	rsc.prepare_image("fish2", "fish2", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("fish3", "fish3", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("fish4", "fish4", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_font("myfont", "arial color=black", 40);
	
	fish1 = add_sprite_for_image(SEImage.for_resource("fish1"));
	fish2 = add_sprite_for_image(SEImage.for_resource("fish2"));
	fish3 = add_sprite_for_image(SEImage.for_resource("fish3"));
	fish4 = add_sprite_for_image(SEImage.for_resource("fish4"));
	text = add_sprite_for_text("Fish Scenes", "myfont");
	
	fish1.move(0,0);
	fish2.move(0,get_scene_height()*0.5);
	fish3.move(get_scene_width()*0.5,0);
	fish4.move(get_scene_width()*0.5,get_scene_height()*0.5);
	text.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {

		base.on_pointer_press(pi);
		
		if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new One());
		}
		else if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Two());		
		}
		else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Three());
		}
		else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Four());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}