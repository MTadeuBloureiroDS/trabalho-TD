if(global.upouDeNivel == false)
{
	 
	 
	 if(ct <= 0)
	 {
		 randomize();

	    var _spawn = irandom_range(32, 320);
    
	    show_debug_message("CRIEI");
	    
		
		if(global.ondas >= 0 && global.ondas < 2)
		{
			instance_create_layer(672, _spawn, "lyr_base", obj_inimigo1);
		}else if(global.ondas >= 2 && global.ondas < 4)
		{
			var _inimigos = choose(obj_Adenovirus, obj_inimigo1)
			instance_create_layer(672, _spawn, "lyr_base", _inimigos);
		}else if(global.ondas >= 4 && global.ondas < 8)
		{
			var _inimigos = choose(obj_Adenovirus, obj_inimigo1, obj_influenza)
			instance_create_layer(672, _spawn, "lyr_base", _inimigos);
		}else if(global.ondas >= 8 && global.ondas < 12)
		{
			var _inimigos = choose(obj_Adenovirus, obj_inimigo1, obj_influenza, obj_Herpesvirus)
			instance_create_layer(672, _spawn, "lyr_base", _inimigos);
		}else if(global.ondas >= 12 && global.ondas < 16)
		{
			var _inimigos = choose(obj_Adenovirus, obj_inimigo1, obj_influenza, obj_Herpesvirus, obj_HIV)
			instance_create_layer(672, _spawn, "lyr_base", _inimigos);
		}else if(global.ondas >= 16)
		{
			var _inimigos = choose(obj_Adenovirus, obj_inimigo1, obj_influenza, obj_Herpesvirus, obj_HIV, obj_Coronavirus)
			instance_create_layer(672, _spawn, "lyr_base", _inimigos);
		}
	    // O alarme SÓ É RESETADO se o spawn ocorreu
	    // (Isso garante que ele continua contando nos próximos loops)
	ct = irandom_range(global.SpawndeInimigos[0], global.SpawndeInimigos[1]);

	}else
	{
		ct--;
			show_debug_message(global.SpawndeInimigos[0], global.SpawndeInimigos[1])
	}







	for(var i = 0; i < 5; i++)
	{
		global.InimigoStatusBase[i] = global.InimigoStatus[i]
	}

	//waves
	

	if(global.inimigosMOTOS >= numNECESSARIO)
	{
		global.ondas++;
		global.inimigosMOTOS = 0;
	
	}
	//precisa fazer com que ele pegue o valor da wave que passou, e não deixe ela repitir se ainda esta nessa wave
	if(global.ondas > 0 && global.ondas % 2 == 0 && global.ondas != onda_selecionada)
	{
		onda_selecionada = global.ondas
		// 1. Aumenta o multiplicador de dificuldade (ex: + 20% a cada 5 ondas)
		var _aumento = .4; // 40%
	
		// Aumentamos o multiplicador
		global.multiplicadorDificuldade += _aumento;
	
		// 2. Atualiza os atributos dos inimigos usando o novo multiplicador:
	
		// Aumenta a VIDA (posição 0) - USAMOS O VALOR BASE!
		global.InimigoStatus[0] = ceil(global.InimigoStatusBase[0] * 3.5);
		
		// Aumenta a XP (posição 4) - USAMOS O VALOR BASE!
		global.InimigoStatus[4] = round(global.InimigoStatusBase[4] * (global.multiplicadorDificuldade));
		
		numNECESSARIO *= 1.1;
		
		for(var i = 0; i <2;i++)
		{
			global.SpawndeInimigos[i] *=   .95;
			if(global.ondas >= 10)
			{
				global.SpawndeInimigos[i] *=   .70;
				global.InimigoStatus[0] = ceil(global.InimigoStatusBase[0] * 7);
			}else if(global.ondas >= 16)
			{
				global.SpawndeInimigos[i] *=   .30;
				global.InimigoStatus[4] = round(global.InimigoStatusBase[4] * 0.2);
				global.InimigoStatus[0] = ceil(global.InimigoStatusBase[0] * 250);
			}
			show_debug_message(global.SpawndeInimigos[i])
		}
	}
	
}
