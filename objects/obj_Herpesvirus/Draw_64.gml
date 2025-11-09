// Evento Draw GUI do obj_inimigo...

// --- 1. OBTÉM AS COORDENADAS DA CÂMERA E SCALA ---

// Assume que você está usando a camera 0
var cam = view_camera[0]; 

// Posição da Câmera (onde o mundo começa a ser desenhado)
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

// Largura/Altura do que a Câmera vê (seu 640x360)
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Largura/Altura da GUI (sua Viewport 1280x720)
var gui_w = display_get_gui_width(); 
var gui_h = display_get_gui_height();

// Fator de escala (no seu caso, 1280/640 = 2, e 720/360 = 2)
var scale_x = gui_w / cam_w;
var scale_y = gui_h / cam_h;

// --- 2. CONVERTE A POSIÇÃO DO INIMIGO PARA GUI ---

// (Posição do Inimigo na Room - Posição da Câmera) * Escala
var xx = (x - cam_x) * scale_x;
var yy = (y - cam_y) * scale_y;

// --- 3. DESENHA O HUD NO LOCAL CORRETO ---

// Exemplo: Desenhar o texto 20 pixels acima do inimigo
var y_offset = 20 * scale_y; // Ajusta o offset pela escala Y

draw_set_halign(fa_center);
draw_set_color(c_white);

// Desenha a vida do inimigo
// (Ajustamos a posição Y subtraindo o offset)
draw_text(xx, yy - y_offset - 20, string(estado)); 

// Você pode desenhar a barra de vida aqui também!
// draw_healthbar(xx - 20, yy - y_offset + 5, xx + 20, yy - y_offset + 10, ...);

// --- 4. LIMPEZA ---
draw_set_halign(fa_left); // Sempre volte ao padrão!