function cadastrarProduto(){

    var nome = document.getElementById('name').value;
    var descricao = document.getElementById('descricao').value;
    var categoria = document.getElementById('categoria').value;
    var valor = document.getElementById('valor').value;
    var quantidade = document.getElementById('quantidade').value;

    var paramsCadastro = {
        nome:nome,
        descricao:descricao,
        categoria:categoria,
        valor:valor,
        quantidade:quantidade
    }

    var configsRequest = {
        method:'POST',
        headers:{
            'Content-Type':'application/x-www-form-urlencoded'
        },
        body:Object.keys(paramsCadastro)
            .map(k => `${encodeURIComponent(k)}=${encodeURIComponent(paramsCadastro[k])}`)
            .join('&')
    }

    fetch('/massas_manfron/backend/cadastro_produto.php', configsRequest)
        .then((response) => response.json())
        .then((data) => { 
            
            if( data.status == 'success' ){

                alert('Ação concluida:\n' + data.resposta);
                window.location.href = '';

            }else{

                alert('Não foi possível concluir a ação:\n' + data.resposta);

            }
        })
        .catch((err) => {
            alert('Ocorreu um erro ao tentar realizar a operação...');
            console.error(err);
        })

}

function cancelarCadastro(){
    
    if(confirm('Deseja sair dessa pagina e cancelar o cadastro?')){
        window.location.href = '/massas_manfron/pagina_produtos';
    }

}