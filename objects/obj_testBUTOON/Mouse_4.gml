
switch (upgrade_associado) {
        case UPGRADES.A:
            {
				//AUMENTAR A VIDA DA BASE EM 20%		
				global.baseStatus[0] *= global.adicao_UPDA
				obj_base.vida = global.baseStatus[0]
				break;
			}
            
        case UPGRADES.B:
			{
				//+1 soldado	
				global.baseStatus[3] += global.adicao_UPDB
				break;
			}
        case UPGRADES.C:
			{
				
				//+10% xp	
				global.InimigoStatus[4] *= global.adicao_UPDC
				break;
			}
        case UPGRADES.D:
			{
				//+2% de eficiencia pra cada upgrade
		
				global.adicao_UPDA *= 1.1
				global.adicao_UPDB += 1;
				global.adicao_UPDC *= 1.1
				global.adicao_UPDD1 *= 1.1;
				global.adicao_UPDD2 *= .90;
				global.adicao_UPDF *= 1.1;
				show_debug_message(" Vida add "+string(global.adicao_UPDA)+" Soldado add "+string(global.adicao_UPDB)+ "XP add"+string(global.adicao_UPDC))
				break;
			}
        case UPGRADES.E:
            {
				//+10% de vel atq e -5% de cooldown
				obj_atiradorPAI.velTiro = global.baseStatus[4]
				obj_atiradorPAI.tempo_de_recarga = global.baseStatus[6]
				if(global.baseStatus[4] >= 80)
				{
					global.baseStatus[4] = 80
				}
				else{
					global.baseStatus[4] *= global.adicao_UPDD1
				}
				
				if(global.baseStatus[6] <= 6)
				{
					global.baseStatus[6] = 6
				}else{
				global.baseStatus[6] *= global.adicao_UPDD2
				}
				break;
			}
		case UPGRADES.F:
			{
				obj_atiradorPAI.dano = global.baseStatus[2]
				global.baseStatus[2] *= global.adicao_UPDF
				break;	
			}
        default:
            
            break;
    }
instance_destroy(obj_testBUTOON)
global.upouDeNivel = false;