class Validatotr {

    constructor(){
        this.Validatios = [
            "data-min-length",
        ]
    }

    //iniciar a validação de todos os campos
    validate(form ) {
        //pegar os inputs
        let inputs =  form.getElementsByTagName('input');

        //transformo o HTMLColletion -> array
        let inputsArray = [...inputs];

        //loop nos inputs e validação mediante ao que for encontrado
        inputsArray.forEach(function(input) {
           
        //loop em todos as validações existentes
        for(let i=0; this.Validatios.length > i; i++) {
            //verifica se a validação atual existe no input
            if(input.getAttribute(this.Validatios[i]) !=null) {

                //limpando a string para  virar um método
                let method = this.validatios[i].replace('data', '').replace('-','');

                //valor do input
                let value = input.getAttribute(this.validations[i]);

                //invocar o método
                this[method](input, value);
               
            }
        }
        }, this );
    }
    //verifica se um input possui um número mínimo de caracteres
    minlenght(input, minValue){

        let inputLength = input.valur.length;

        let errorMessage = 'O campo precisa ter pelo menos ${minValue} caracteres';

        if(inputLength < minValue) {
            this.printMesssage(input, errorMessage);
        }
    }
    
    // método para imprimir mensagens de erro
    printMesssage(input, msg) {

        let template = docmuent.querySelection('.error-validation').cloneNode(true);

        template.textContent = msg;

        let imputParent = input.parentNode;

        template.classList.remove('template');

        inputParent.appendChild(template);

    }

}


let form = document.getElementById("register-form")
let submit = document.getElementById("btn-submit")

let Validator = new Validator();

submit.addEventListener('click', function(e){

    e.preventDefault();

    console.log('funcionou');

    validator.validate(form);

});
/*Inserir CPF*/
function mascara(i){
    var v=i.value;
    if(isNaN(v[v.length-1])){
        i.value=v.substring(0, v.length-1);
        return;
    }

    i.setAttribute("maxlength", "14");
    if (v.length==3 || v.length==7) i.value += ".";
    if (v.length==11) i.value += "-";
}
/*Inserir telefone */
function mascaraTelefone(event) {
    let tecla=event.key;
    let telefone=event.target.value.replace(/\D+/g,"");

    
    if (/^[0-9]$/i.test(tecla)) {
        telefone = telefone + tecla;
        let tamanho = telefone.length;

        if (tamanho >= 12) {
            return false;
        }
        
        if (tamanho > 10) {
            telefone = telefone.replace(/^(\d\d)(\d{5})(\d{4}).*/, "($1) $2-$3");
        } else if (tamanho > 5) {
            telefone = telefone.replace(/^(\d\d)(\d{4})(\d{0,4}).*/, "($1) $2-$3");
        } else if (tamanho > 2) {
            telefone = telefone.replace(/^(\d\d)(\d{0,5})/, "($1) $2");
        } else {
            telefone = telefone.replace(/^(\d*)/, "($1");
        }

        event.target.value = telefone;
    }

    if (!["Backspace", "Delete"].includes(tecla)) {
        return false;
    }
}

// Area CEP
function mascaraCEP(event){
    function Trim(strTexto)
    {
        return strTexto.replace(/^\s+|\s+$/g,'');
    }
    
    function IsCEP(srtCEP, blnVazio)
    {
        var objER = /^[0-9]{2}\.[0-9]{3}-[0-9]{3}$/;

        strCEP = Trim(strCEP)
        if(strCEP.length > 0)
        {
            if(objER.test(strCEP))
                return true;
            else
                return false;
        }
    else
        return blnVazio;
    }
}