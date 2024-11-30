// Variáveis para armazenar o nome de usuário
username ="ihosana";
var input_field = 1; // Para saber se estamos digitando o nome de usuário
// Captura as teclas pressionadas
if (keyboard_check_pressed(vk_backspace)) {
    // Apaga o último caractere
    username = string_delete(username, string_length(username), 1);
}

if (keyboard_check_pressed(vk_enter)) {
    // Quando o jogador pressionar Enter, faça o cadastro
    cadastro();
}

// Adiciona o texto digitado ao nome de usuário
if (keyboard_string != "") {
    username += keyboard_string;
}
// Função de cadastro
function cadastro() {
    if (username != "") {
        // Salva o nome de usuário no arquivo
        var file = file_text_open_write("usuario.txt");
        file_text_write_string(file, "usuario=" + username + "\n");
        file_text_close(file);
        
        show_message("Cadastro realizado com sucesso!");
    } else {
        show_message("Por favor, preencha o nome de usuário!");
    }
}


draw_text(100, 100, "Nome de Usuário: " + username);
