/// @description Iniciar Música de Fundo

// 1. CARREGAR GRUPO DE ÁUDIO
// O GameMaker precisa garantir que o grupo de áudio 'Musica' esteja pronto.

// 2. TENTAR PARAR MÚSICAS ANTERIORES
// Isso evita que a música se sobreponha caso o objeto seja recriado.
audio_stop_all();

// 3. INICIAR A MÚSICA
// audio_play_sound(sound_index, priority, loop);
// priority: 100 é um bom valor para música (maior prioridade que SFX).
// loop: true se você marcou loop nas propriedades, senão defina como false/true aqui.

audio_play_sound(snd_musica, 100, true);