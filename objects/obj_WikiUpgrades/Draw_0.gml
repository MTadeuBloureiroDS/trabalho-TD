draw_self()
draw_set_font(fnt_descricao_upgrade)
switch(global.cliques)
{
	case 0:
	{
		
		draw_text(sprite_width/2+20,y-130,"Envoltório nuclear:")
		draw_text(x - 229,y-60,"Dupla membrana q envolve o núcleo. Entre elas, existe um\nespaço com cerca de 20-40 mm chamado cisterna perinuclear.\nAmbas as membranas  são formadas por lipídio.\nA mais externa apresenta vários ribossomos, já a mais interna,\npossui uma rede de proteínas chamadas lâmina\nnuclear. Sua principal função é proteger o núcleo.\n\n\nBuff no jogo: Aumenta em 20% a vida máxima do núcleo.")
		
		break;
	}
	case 1:
	{
		draw_text(sprite_width/2+20,y-130,"Poros Nucleares:")
		draw_text(x - 229,y-100,"Os complexos de poros nucleares (NPCs) são gigantescas\nestruturas multiproteicas incrustadas no envoltório nuclear.\nCom um diâmetro de cerca de 120 nanômetros, atuam como\nos únicos canais de transporte seletivo entre o nucleoplasma\ne o citoplasma. Controlam o tráfego de macromoléculas, como\nproteínas e RNA, garantindo que as proteínas de defesa\n(nucleoporinas) sejam produzidas no citossol e importadas para\no núcleo, e que os produtos genéticos (RNA) sejam exportados\npara a síntese proteica.\n\nBuff: +1 soldado")
		break;
	}
	case 2:
	{

		draw_text(sprite_width/2+38,y-130,"Nucléolo:")
		draw_text(x - 229,y-100,"O nucléolo é a 'fábrica de ribossomos' do núcleo,\num aglomerado de proteínas e RNA onde as sub-unidades\nribossômicas são produzidas e montadas. Como os ribossomos\nsão as estruturas que realizam a síntese de proteínas, o\ntamanho e a atividade do nucléolo são diretamente proporcionais\nà capacidade de uma célula de produzir novas proteínas e se\ndesenvolver.\n\n\n\nBuff: +10% de xp")
		break;
	}
	case 3:
	{

		draw_text(sprite_width/2+38,y-130,"Nucleoplasma:")
		draw_text(x - 229,y-100,"gel semelhante ao citoplasma, é no nucleoplasma que\nencontramos a cromatina, definida como DNA associado a\nproteínas histonas. O nucleoplasma transporta materiais para\nas estruturas nucleares que os utilizam, como as enzimas\nnecessárias para a replicação do DNA.\n\n\n\n\nBuff:+10% de eficiência para todos os upgrades apartir de\nagora (menos o poros nucleares, que aumenta +1)")
		break;
	}
	case 4:
	{
		draw_text(sprite_width/2+38,y-130,"Matriz Nuclear:")
		draw_text(x - 229,y-100,"A matriz nuclear é uma rede de proteínas insolúveis que forma\num arcabouço fibroso no interior do núcleo. Essa\nestrutura dinâmica serve como um esqueleto interno,\norganizando a cromatina em domínios funcionais e ancorando as\nenzimas responsáveis pela replicação e transcrição do DNA.\n\n\n\n\n\nBuff: +5% de velocidade de ataque e -5% de cooldown")
		break;
	}
	case 5:
	{
		draw_text(sprite_width/2+38,y-130,"Cromatina:")
		draw_text(x - 229,y-100,"A cromatina é a estrutura fundamental que armazena a\ninformação genética do núcleo, consistindo em filamentos de\nDNA associados a proteínas. A eucromatina, a porção menos\ncondensada e geneticamente mais ativa, é o local onde a\ntranscrição das instruções para a produção de proteínas ocorre\nde forma mais intensa.\n\n\n\n\nBuff: +45% de dano")
		break;
	}
	case 6:
	{
		global.cliques = 0;
		break;
	}
	
}