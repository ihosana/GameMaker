// Variável para armazenar o nome de usuário
login_username = "";
usuario_cadastrado = false; // Para saber se já existe um nome de usuário salvo

// Verificar se o arquivo de cadastro já existe
if (file_exists("usuario.txt")) {
    var file = file_text_open_read("usuario.txt");
    
    // Lê o nome de usuário do arquivo
    while (!file_text_eof(file)) {
        var line = file_text_read_string(file);
        if (string_pos("usuario=", line) == 1) {
            login_username = string_delete(line, 1, 8); // Remove "usuario="
            usuario_cadastrado = true;
        }
    }
    
    file_text_close(file);
}
