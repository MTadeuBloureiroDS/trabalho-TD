

global.baseStatus = 
[
/*Vida*/100,				//0
/*Resistencia*/1,			//1
/*Dano*/1,					//2
/*Numero de atiradores*/1,	//3
/*Vel de disparo*/6,		//4
/*Regen*/1,					//5
/*cooldown*/ 30	//6
]

global.InimigoStatus = 
[
/*Vida*/10,			//0
/*Resistencia*/1,	//1
/*Regen*/1,			//2
/*Velocidade*/.50,	//3
/*xp que dropa*/50	//4

]
//global.upgradeStatus = 
//[
//		//0 1 2 3 4 5 6
///*upg A*/[1.2,1,1,1,1,1,1],
///*upg B*/[1,1,1.2,1,1,1,1],
///*upg C*/[1,1,1,1,1.2,1,1],
///*upg D*/[1,1,1,1,1,1.2,1],
///*upg E*/[1,1,1,1,1,1,1],
//]

enum UPGRADES{
	A,//aumenta vida
	B,//aumenta dano
	C,//aumenta numero de soldados
	D,//aumenta regen
	E,//diminui cooldown
	F //aumentar dano
}
enum INIMIGOS{
	Adenovirus,
	Influenza,
	Herpesvirus,
	HIV,
	Coronavirus
}
enum ESTADO 
{
	INVISIVEL,
	VISIVEL
	
}

//global.DescUPGRADES =
//[
//	["Vida","+20% de Vida Máxima"],
//	["Dano","+20% de Dano"],
//	["Soldado","+1 soldado proteína"],
//	["Regen","+20% de regeneração"],
//	["Cooldown","-20% de tempo de recarga dos soldados"],
//]

global.SpawndeInimigos = [220,260]
global.mira_ID = obj_PaiInimigo;
global.ondas = 0;
global.xp = 0;
global.inimigosMOTOS = 0;
global.nivel = 0;
global.requerimentoPNIVEL = 100;
global.multiplicadorDificuldade = 1;
global.upouDeNivel = false;
global.opcoes_de_upgrade = [];
global.adicao_UPDA = 1.2;
global.adicao_UPDB = 1;
global.adicao_UPDC = 1.1;
global.adicao_UPDD1 = 1.05;
global.adicao_UPDD2 = .95;
global.adicao_UPDF = 1.45;
global.escudo = 5;
global.xpDROP = global.InimigoStatus[4];
global.dano = global.baseStatus[2]
global.velTiro = global.baseStatus[4]
global.tempo_de_recarga = global.baseStatus[6]
global.podeSerDEBUFF = 0
global.ID = 0
function UparNivel()
{
	if(global.xp >= global.requerimentoPNIVEL)
	{
				global.nivel++;
				global.xp -= global.requerimentoPNIVEL;
				global.requerimentoPNIVEL *= 1.2;
				global.upouDeNivel = true;
				obj_LevelMachine.ct = 0;
	}	
	
}