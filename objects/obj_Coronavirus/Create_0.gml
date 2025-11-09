aleatorio = random_range(.5,2.5)
_choose = 1;
velh = (global.InimigoStatus[3]);
vida = (global.InimigoStatus[0] * aleatorio) * 10;
resistencia = (global.InimigoStatus[2]* aleatorio) * 5;
podeMATAR = true
global.xpDROP = (global.InimigoStatus[4]*aleatorio)*10;
image_xscale = aleatorio
image_yscale = aleatorio
alarm[0] = 20;
estado = ESTADO.VISIVEL
// Evento Create do obj_InimigoPAI

// Variáveis de Escala Padrão
escala_base_x = image_xscale; // Salva a escala X inicial
escala_base_y = image_yscale; // Salva a escala Y inicial
