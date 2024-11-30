// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cadastro_user(){
    if (global.username !="") {
        show_message("Cadastro realizado com sucesso, "+global.username);
    } else {
        show_message("Por favor, preencha o nome de usuário!");
    }
}