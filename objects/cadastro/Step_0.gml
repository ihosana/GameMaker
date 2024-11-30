// Apagar
if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(global.username) > 0) {
        // Apagar o último caractere do nome de usuário
        global.username = string_delete(global.username, string_length(global.username), 1);
    }
}

// Escrever
if (keyboard_string != "") {
    if (string_length(global.username) < max_length) {
        // Adiciona o texto digitado ao nome de usuário
        global.username += keyboard_string;
        keyboard_string = "";  // Limpa a string de teclas digitadas
    }
}

// Acionar o cadastro
if (keyboard_check_pressed(vk_enter)) {
    cadastro_user();
}
