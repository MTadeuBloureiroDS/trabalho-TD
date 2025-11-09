if(global.upouDeNivel == false)
{	

	UparNivel();
	vida_maxima = global.baseStatus[0]
	if(global.baseStatus[3] > numDeSoldados)
	{
		podeInvocar = true; 
		if(podeInvocar)
		{
			alarm[0] = 1
			numDeSoldados++;
		}
	}
	
	if(vida <= 0)
	{
		room_goto(rm_menuInicial);
	}

}