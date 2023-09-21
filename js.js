$(document).ready(() => {
    var isBlackMode = false;
    console.log('Hello World');

    // SELECTORES
    //$('#mainTitle').html('Hello World jQuery loaded!');
    $('h1').html('Hello World jQuery loaded!');
    $('h2').html('se cambia');
    $('h1').attr('style', 'color:yellow;background-color:black;');
    // $('h1').html('Hello World jQuery loaded!');

    // EVENTOS
    $(document).on('click', '#btn', function () {

        if (isBlackMode) {
            $('body').attr('style', 'color:black;background-color:white;');
            $('#btn').html('poner negro')
        } else {
            $('body').attr('style', 'color:white;background-color:black;');
            $('#btn').html('poner blanco')
        }
        isBlackMode = !isBlackMode;
    });
});
