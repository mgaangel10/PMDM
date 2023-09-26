$(document).ready(function (){
    var aespañol = false;

    
    //evento para cambiar el boton
    $(document).on('click', '#btn', function (){
        if (aespañol) {
            $('#btn').html('Español a Cesar');
           

        } else {
            $('#btn').html('Cesar a Español');
           

            
        }
        aespañol=!aespañol;
    })

   
    


})  

$(document).ready(function(){
    //evento para cuando le de al boton de enviar
    $(document).on('click','#cifrar',function(){
        var abecedario = ['A', 'B', 'C', 'D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];

        var palabraIgual = $('#texto').val().toUpperCase();
        var saltos = parseInt($('#saltos').val());
        var palabraResultado='';
    for (var index = 0; index < palabraIgual.length; index++) {

         var letra = palabraIgual[index];

         var indice = abecedario.indexOf(letra);

         // si el caracter que queremos guardar se encuentra en el abecedario hace el if si no lo encuentra como por ejemplo numeros , o signos, hace el else
        if (indice!= -1) {
            // se le pone el += para que vaya guardando todos los carecteres que encuente iguales , si solo pusieramos el = solo guaradria el ultimo caracter 
            // es decir si ponemos que descrife ABC utilzando el += guardaria todas las letras descifradas . Pero si solo ponemos el = solo guardaria la letra descrifada de la C qu seria F 

            palabraResultado+=abecedario[(indice + saltos)% abecedario.length]
            
        } else{

            palabraResultado+=letra
        }
        
    }
    $('#textotraducido').html(palabraResultado)

   })
   
    })

   


