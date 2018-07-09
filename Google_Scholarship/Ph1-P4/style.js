var color, height, width,pCanvas;
pCanvas = $('#pixelCanvas');
$('#sizePicker').submit(function (event) {
    event.preventDefault();
    height = $('#inputHeight').val();
    width = $('#inputWidth').val();
    makeGrid(height, width);
});

function makeGrid(x, y) {
    $('tr').remove();
    for (var i = 0; i <= x; i++) {
        pCanvas.append('<tr id=table' + i + '></tr>');
        for (var j = 1; j <= y; j++) {
            $('#table' + i).append('<td id=tb'+j+'></td>');

        }
    }

    $('td').click(function addColor() {
        color = $('#colorPicker').val();
        if ($(this).attr('style')) {
            $(this).removeAttr('style');
        } else {
            $(this).attr('style', 'background-color:' + color);
        }
    });

}
