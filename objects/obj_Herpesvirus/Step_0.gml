//se tiver no upgrade, ele para
if(global.upouDeNivel == false)
{
	image_xscale = lerp(image_xscale, escala_base_x, .3);
	image_yscale = lerp(image_yscale, escala_base_y, .3);
	image_blend = c_white
	if(vida <= 0)
	{
	sprite_index = spr_inimigo6_morto
	velh=0
	if(image_index >= image_number-1)
		{
			image_index = image_number-1
			image_alpha = 0;
			global.podemorrer = true;
		}
	}
	
	x -= velh
	_contador++;
	randomise();
	if(estado == ESTADO.INVISIVEL)
	{
		
		if(_contador >= 240)
		{
			//show_debug_message("aqui deu certo")
			alarm[0] = 2
			_contador = 0;
		}
	}
		if(estado == ESTADO.VISIVEL)
	{
			if(_contador >= 80)
			{
				alarm[1] = 2
				_contador = 0;
			}
			
	
	}
	if(estado == ESTADO.INVISIVEL && global.mira_ID == self.id)
	{
		global.mira_ID = instance_nearest(x,y,obj_atiradorPAI)
	}
}