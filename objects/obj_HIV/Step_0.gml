//se tiver no upgrade, ele para
if(global.upouDeNivel == false)
{
//ele vai pra frente
// A escala atual se move em direção à escala base (o tamanho padrão).
	image_xscale = lerp(image_xscale, escala_base_x, .3);
	image_yscale = lerp(image_yscale, escala_base_y, .3);
	image_blend = c_white

	x-=velh;

	if(vida <= 0)
		{
		sprite_index = spr_inimigo4_morto
		velh=0
		if(image_index >= image_number-2)
			{
				instance_create_layer(x,y-30,"lyr_base",obj_liquido_HIV)
				image_index = image_number-1
				image_alpha = 0
				global.podemorrer = true;
			}
		}
}