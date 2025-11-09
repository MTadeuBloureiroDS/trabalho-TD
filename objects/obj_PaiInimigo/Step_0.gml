//se tiver no upgrade, ele para
if(global.upouDeNivel == false)
{
//ele vai pra frente
x-=velh;


// A escala atual se move em direção à escala base (o tamanho padrão).
image_xscale = lerp(image_xscale, escala_base_x, .3);
image_yscale = lerp(image_yscale, escala_base_y, .3);
image_blend = c_white



}