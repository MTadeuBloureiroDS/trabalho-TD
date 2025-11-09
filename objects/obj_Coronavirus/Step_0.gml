if(global.upouDeNivel == false)
{
	
	image_xscale = lerp(image_xscale, escala_base_x, .3);
	image_yscale = lerp(image_yscale, escala_base_y, .3);
	image_blend = c_white
	
	x -= (velh*_choose);
	if(vida <= 0)
		{
		sprite_index = spr_inimigo5_morto
		velh=0
		if(image_index >= image_number-3)
			{
				image_alpha = 0;
				global.podemorrer = true;
			}
		}
}