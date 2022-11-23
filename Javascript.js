function validarFormulario(){
    var nomePessoa = document.forms["formCadastro"]["nome"].value;
    if (nomePessoa ==""){
        alert("Por favor insira seu nome.");
        return true;
    }
}