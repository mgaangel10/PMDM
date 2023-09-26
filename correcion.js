function aletario1 (min,max){
     min = 0;
     max = 10;
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function aletario2 (min1,max1){
     min1 =0
     max1 = 10
    return Math.floor(Math.random() * (max1 - min1 + 1)) + min1;
}

var random1 = aletario1();
var random = aletario2();
 function suma (random,random1){
    var resultado = random+random1;
    return resultado;
 }
 var res= suma();
$(document).ready(function(){
    $('#enunciado').html('Realiza esta suma '+random + ' + '+random1);
    $(document).on('click','#btn',function(){
        var solucion = $('#sol').val();
    if (solucion==suma(random,random1)) {
        $('#btn').addClass('btn btn-success');
    } else {
        $('#btn').addClass('is-invalid');
        $('#btn').html('solucion incorrecta');
    }
    })
    $(document).on('input','#url',function(){
        var urlC=$('#url').val();
    if (urlC != '') {
        $('#btnUrl').addClass('btn btn-primary')
    }
    })
    
    $(document).on('click','#btnUrl', function(){
        var url = $('#url').val();
        url.toLowerCase().replace(' ','-');
        $('#urlG').html(url.toLowerCase().trim().replace(' ','-')+'.com') 
        if (url.toLowerCase().replace(' ','-')=='') {
            $('#btnUrl').addClass('is-invalid');
            $('#btnUrl').html('No hay nada que generar');
            
        } else {
           
            $('#urlG').removeClass('d-none')

        }
    })
    

})