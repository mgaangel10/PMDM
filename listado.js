console.log('hola');
$(document).ready(function () {
    $.ajax({
        url: 'https://swapi.dev/api/people',
        type: 'GET'
    }).done(function (resp) {
        var listadoPomemon = resp.results;
        var indice = 1;
        listadoPomemon.forEach(function (characters) {
            
            
            // var template = '<p><h1>' + pokemon.name + '</h1></p>';
            var template = ` <div class="card bg-black text-white border border-white m-2 " style="width: 19rem;">
            <div class="img">
                <img src="https://starwars-visualguide.com/assets/img/characters/${indice}.jpg" class="card-img-top rounded-4" alt="..."  >
            </div>
            <div class=" card card-body bg-black text-white" >
                <p class="card-text text-center "> <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <ion-icon name="help-circle-outline"></ion-icon>
                      </button>
                      
                      <!-- Modal -->
                      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h1 class="modal-title fs-5 text-black" id="exampleModalLabel">${characters.name}</h1>
                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                              ...
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><ion-icon name="arrow-undo-outline"></ion-icon></button>
                              <button type="button" class="btn btn-primary"><ion-icon name="checkmark-done-outline"></ion-icon></button>
                            </div>
                          </div>
                        </div>
                      </div></p>
            
          </div>
          </div>
        `;
        indice++;
            $('#lista-pokemon').append(template);
            
        });
    });

});