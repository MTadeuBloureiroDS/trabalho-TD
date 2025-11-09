if(global.upouDeNivel == false)
{
	if(!other.debuff_hiv_active)
	{
		other.dano *= .5
		other.velTiro *= .5
		other.tempo_de_recarga *= 1.5
		show_debug_message("encostei, otario")
		other.debuff_hiv_active = true
	
	}
}