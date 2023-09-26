function getRandomIntInclusive(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    Math.floor(Math.random() * (max - min + 1) + min);
    return Math.floor(Math.random() * (max - min + 1) + min);
   
  }
 console.log(getRandomIntInclusive(0,10));

 function getRandomIntInclusive1(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    Math.floor(Math.random() * (max - min + 1) + min);
    return Math.floor(Math.random() * (max - min + 1) + min);
  }
 var num2 = getRandomIntInclusive1();
  var num1 =getRandomIntInclusive();

 $(document).ready(function (){
   
    $(document).on('click','#btn', function (){
        var titulo = $('#titulo').val();
        var descripcion = $('#descripcion').val();
        var url = $('#url').val();
        
        $('#guardado').html(titulo);
        
    })
    

 })
  