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