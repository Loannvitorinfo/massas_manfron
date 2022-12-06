function validarLogin(){

    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;

    var paramsLogin = {
        email:email,
        password:password
    }

    var configsRequest = {
        method:'POST',
        headers:{
            'Content-Type':'application/x-www-form-urlencoded'
        },
        body:Object.keys(paramsLogin)
            .map(k => `${encodeURIComponent(k)}=${encodeURIComponent(paramsLogin[k])}`)
            .join('&')
    }

    fetch('/massas_manfron/backend/login.php', configsRequest)
        .then((response) => response.json())
        .then((data) => { 
            
            if( data.status == 'success' ){

                setTimeout(() => {
                    window.location.href = '/massas_manfron/pagina_produtos';
                }, 1000);

            }else{

                alert('Não foi possível identificar o usuário com os dados informados...');

            }
        })
        .catch((err) => {
            alert('Ocorreu um erro ao tentar realizar login...');
            console.error(err);
        })

}