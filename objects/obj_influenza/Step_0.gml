//se tiver no upgrade, ele para
if(global.upouDeNivel == false)
{
	
//ele vai pra frente
x-=velh;

if(vida <= 0)
	{
	sprite_index = spr_inimigo3_morto
	velh=0
	if(image_index >= image_number-1)
		{
			image_index = image_number-1
			global.podemorrer = true;
		}
	}
	// A escala atual se move em direção à escala base (o tamanho padrão).
	image_xscale = lerp(image_xscale, escala_base_x, .3);
	image_yscale = lerp(image_yscale, escala_base_y, .3);
	image_blend = c_white

}