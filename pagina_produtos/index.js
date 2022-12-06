function getHtmlCardProduto(){

    var htmlCard = '<div class="card col" style="width: 18rem;">';
    htmlCard += '<div class="card-body">';
    htmlCard += '<h5 class="card-title"><b>Categoria:</b> <categoria></h5>';
    htmlCard += '<p class="card-text"><b>Nome Produto:</b> <nome></p>';
    htmlCard += '<p class="card-text"><b>Descrição Produto:</b> <descricao></p>';
    htmlCard += '<p class="card-text"><b>Valor Produto:</b> <valor></p>';
    htmlCard += '<hr><textarea id="txt<id_comentario>" cols="40" rows="10" placeholder="Comente algo..."></textarea><hr>';
    htmlCard += '<br><span onclick="avaliarProduto(<id>);" class="btn btn-success">Postar Avaliação<span><br>';
    htmlCard += '</div>';
    htmlCard += '</div>';

    return htmlCard;
}

function avaliarProduto(id){
    
    var comentario = document.getElementById('txt'+id).value;

    if(comentario == undefined || comentario == ''){
        alert('Por favor comente algo...');
        return;
    }
    
    var paramsAvaliacao = {
        acao:'avaliar',
        id:id,
        comentario:comentario
    }

    var configsRequest = {
        method:'POST',
        headers:{
            'Content-Type':'application/x-www-form-urlencoded'
        },
        body:Object.keys(paramsAvaliacao)
            .map(k => `${encodeURIComponent(k)}=${encodeURIComponent(paramsAvaliacao[k])}`)
            .join('&')
    }

    fetch('/massas_manfron/backend/avaliacoes.php', configsRequest)
        .then((response) => response.json())
        .then((data) => { 
            
            if( data.status == 'success' ){
                alert('Avaliação enviada com sucesso...');
                document.getElementById('txt'+id).value = '';
            }else{
                alert('Não foi possível concluir a ação:\n' + data.resposta);
            }
        })
        .catch((err) => {
            alert('Ocorreu um erro ao tentar realizar a operação...');
            console.error(err);
        })

}

function listarProdutosPorCategoria(categoria){

    var url = '/massas_manfron/backend/listar_produtos.php?tipo_pesquisa=nome_categoria';
    url += '&param='+categoria;

    fetch(url)
        .then((response) => response.json())
        .then((data) => { 
            
            if( data.status == 'success' ){

                document.getElementById('titulo-listagem').innerText = "Produtos Encontrados";

                var htmlProdutos = '';

                for(var i=0; i<data.registros.length; i++){
                    
                    var htmlCard = getHtmlCardProduto();

                    htmlCard = htmlCard.replace('<categoria>', data.registros[i].nmCategoria);
                    htmlCard = htmlCard.replace('<nome>', data.registros[i].nmProduto);
                    htmlCard = htmlCard.replace('<descricao>', data.registros[i].descProduto);
                    htmlCard = htmlCard.replace('<valor>', data.registros[i].valor);
                    htmlCard = htmlCard.replace('<id_comentario>', data.registros[i].cdProduto);
                    htmlCard = htmlCard.replace('<id>', data.registros[i].cdProduto);

                    htmlProdutos += htmlCard;

                }

                document.getElementById('container-produtos').innerHTML = htmlProdutos;

            }else{
                document.getElementById('titulo-listagem').innerText = "";
                document.getElementById('container-produtos').innerHTML = "";
                alert('Não foi possível concluir a ação:\n' + data.resposta);

            }
        })
        .catch((err) => {
            document.getElementById('titulo-listagem').innerText = "";
            document.getElementById('container-produtos').innerHTML = "";
            alert('Ocorreu um erro ao tentar realizar a operação...');
            console.error(err);
        })

}

function listarProdutosPorNome(){

    var nomeProduto = document.getElementById('nomeProduto').value;

    var url = '/massas_manfron/backend/listar_produtos.php?tipo_pesquisa=nome_produto';
    url += '&param='+nomeProduto;

    fetch(url)
        .then((response) => response.json())
        .then((data) => { 
            
            if( data.status == 'success' ){

                document.getElementById('titulo-listagem').innerText = "Produtos Encontrados";

                var htmlProdutos = '';

                for(var i=0; i<data.registros.length; i++){
                    
                    var htmlCard = getHtmlCardProduto();

                    htmlCard = htmlCard.replace('<categoria>', data.registros[i].nmCategoria);
                    htmlCard = htmlCard.replace('<nome>', data.registros[i].nmProduto);
                    htmlCard = htmlCard.replace('<descricao>', data.registros[i].descProduto);
                    htmlCard = htmlCard.replace('<valor>', data.registros[i].valor);
                    htmlCard = htmlCard.replace('<id>', data.registros[i].cdProduto);

                    htmlProdutos += htmlCard;

                }

                document.getElementById('container-produtos').innerHTML = htmlProdutos;

            }else{
                document.getElementById('titulo-listagem').innerText = "";
                document.getElementById('container-produtos').innerHTML = "";
                alert('Não foi possível concluir a ação:\n' + data.resposta);

            }
        })
        .catch((err) => {
            document.getElementById('titulo-listagem').innerText = "";
            document.getElementById('container-produtos').innerHTML = "";
            alert('Ocorreu um erro ao tentar realizar a operação...');
            console.error(err);
        })

}

function novoProduto(){
    window.location.href = '/massas_manfron/pagina_cadastro_produto';
}