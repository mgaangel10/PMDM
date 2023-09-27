console.log('hola');

$(document).ready(function () {
    $.ajax({
        url: 'https://swapi.dev/api/people',
        type: 'GET'
    }).done(function (resp) {
        var listadoPomemon = resp.results;
        var indice = 1;
        var id=1;
        listadoPomemon.forEach(function (characters) {
            
            
            // var template = '<p><h1>' + pokemon.name + '</h1></p>';
            var template = ` <div class="card bg-black text-white border border-warning-subtle  " id="pinchar" style="width: 19rem;">
            <div class="img">
                <img src="https://starwars-visualguide.com/assets/img/characters/${indice}.jpg" class="card-img-top rounded-4" alt="..."  >
            </div>
            <div class=" card card-body bg-black text-white card d-flex align-items-center justify-content-center" >
                <p class="card-text text-center "> <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary " data-bs-toggle="modal" id="btn" data-bs-target="#exampleModal"  personajeid="${id}">
                    ${characters.name}
                      </button></p>
                      
            
          </div>
          </div>
        `;
        id++;
        indice++;
            $('#lista-pokemon').append(template);
            
        });
        
    });
    $(document).on('click','#btn',function(){
      var idPersonaje = $(this).attr('personajeid');
      
     
      $.ajax({
        url: 'https://swapi.dev/api/people/'+idPersonaje,
        type: 'GET'

      }).done(function(respuesta){    

        $('#mod').html(respuesta.name);
        $('#films').html(respuesta.gender);
        $('#people').html(respuesta.skin_color);
        $('#vehicules').html(respuesta.eye_color);

          
      
        
          
          
       
       
      })
    })
   });