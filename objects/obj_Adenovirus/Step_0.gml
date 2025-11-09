if(global.upouDeNivel == false)
{
	
	// A escala atual se move em direção à escala base (o tamanho padrão).
	image_xscale = lerp(image_xscale, escala_base_x, .3);
	image_yscale = lerp(image_yscale, escala_base_y, .3);
	image_blend = c_white


	//ele vai pra frente
	x-=velh;
	//show_debug_message(vida)
	
	if(escudo > 0)
	{
		podeMATAR = false
		
	}else if(escudo == 0)
	{
		podeMATAR = true	
	}
	if(vida <= 0)
	{
	sprite_index = spr_inimigo2_morto
	velh=0
	if(image_index >= image_number-2)
		{
			image_alpha = 0
			global.podemorrer = true;
		}
	}
}