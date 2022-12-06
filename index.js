function checarSessao(){
    
    fetch('/massas_manfron/backend/validar_sessao.php')
        .then((response) => response.json())
        .then((data) => {
            if(data.status != 'success'){
                alert('Necessário realizar login para acessar a pagina de cadastro de produto...');
                window.location.href = '/massas_manfron/pagina_acesso';
            }
        })
        .catch((err) =>{
            console.error(err);
        });

}

function acessarPaginaLogin(){
    window.location.href = '/massas_manfron/pagina_acesso';
}