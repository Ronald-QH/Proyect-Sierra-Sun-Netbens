/*Tables scripts*/
$(document).ready(function() {
  $('#table1').DataTable({
    "language": {
      "lengthMenu": "Numero de datos para visualizar _MENU_ ",
      "zeroRecords": "No se encontro elemento",
      "info": "Pagina _PAGE_ de _PAGES_",
      "infoEmpty": "No hay datos disponibles",
      "infoFiltered": "(Se econtraron _TOTAL_ elementos de _MAX_ )",
      "sSearch": "Buscar",
      "oPaginate": {
        "sFirst": "Primero",
        "sLast": "Ultimo",
        "sNext": "Siguiente",
        "sPrevious": "Anterior"
      },
      "sProcessing": "Procesando...."
    }
  });
});


$(document).ready(function() {
  $('#table2').DataTable({
    "language": {
      "lengthMenu": "Numero de datos para visualizar MENU ",
      "zeroRecords": "No se encontro elemento",
      "info": "Pagina PAGE de PAGES",
      "infoEmpty": "No hay datos disponibles",
      "infoFiltered": "(Se econtraron TOTAL elementos de MAX )",
      "sSearch": "Buscar",
      "oPaginate": {
        "sFirst": "Primero",
        "sLast": "Ultimo",
        "sNext": "Siguiente",
        "sPrevious": "Anterior"
      },
      "sProcessing": "Procesando...."
    }
  });
});

/*Tables scripts end*/


/*Scripsts boutons tables validations*/
$(function () {
    'use strict';
    window.addEventListener('load', function () {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function (form) {
            form.addEventListener('submit', function (event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                if (form.checkValidity() === true) {
                    var data = new FormData($('#frmnew')[0]);
                    $.ajax({
                        url: "CArticol",
                        type: "post",
                        data: data,
                        contentType: false,
                        processData: false,
                        success: function (data) {
                            alert(data);
                        }
                    });
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);
});


$(function () {
    $('tr #btnDelet').click(function (e) {
        e.preventDefault();
        var opcion = confirm("Desea eliminar el articulo"); 
        if (opcion) {
            var fila=$(this).parent().parent();
            var idArtic = fila.find('#id_Artic').text();
            var data = {idArtic:idArtic};
            $.post("DeletArticol", data, function(res, est, jqXHR) {
                alert(res);
                fila.remove();
            });
        }

    });
});


/*

$('#EditModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget); // Button that triggered the modal
  var recipient = button.data('whatever'); // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this);
  modal.find('.modal-title').text('Formulario para ' + recipient);
});
*/


/*Scripsts boutons tables validations end*/
