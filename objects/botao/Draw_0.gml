
draw_self();

if (mouse_x >= x && mouse_x <= x + 128 && mouse_y >= y && mouse_y <= y + 64) {
draw_set_color(c_black);
draw_set_valign(fa_middle);
draw_text(x, y,"Enviar");
}else{
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_text(x, y,"Enviar");
}
