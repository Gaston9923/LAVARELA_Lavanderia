//TABLA REGISTROS
$(document).ready(function() {    
     $('#tablaRegistros').DataTable({
        responsive: "true",
        dom: 'Bfrtilp',       
        buttons:[ 
			{
				extend:    'excelHtml5',
				text:      '<i class="fas fa-file-excel"></i> ',
				titleAttr: 'Exportar a Excel',
				className: 'btn btn-success'
			},
			{
				extend:    'pdfHtml5',
				text:      '<i class="fas fa-file-pdf"></i> ',
				titleAttr: 'Exportar a PDF',
				className: 'btn btn-danger'
            },
            {
				extend:    'print',
				text:      '<i class="fa fa-print"></i> ',
				titleAttr: 'Imprimir',
				className: 'btn btn-info'
            },
            {
                extend: 'colvis',
                text:      '<i class="fa fa-list-alt"></i> ',
                collectionLayout: 'fixed two-column',
                titleAttr: 'Seleccionar columnas visibles',
                className: 'btn btn-secondary'
            }
			
		],
    //para cambiar el lenguaje a español
        language: {
                "lengthMenu": "Mostrar _MENU_ registros",
                "zeroRecords": "No se encontraron resultados",
                "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                "sSearch": "Buscar:",
                "oPaginate": {
                    "sFirst": "Primero",
                    "sLast":"Último",
                    "sNext":"Siguiente",
                    "sPrevious": "Anterior"
			     },
			     "sProcessing":"Procesando...",
            }
    });
    
    
});



//TABLA CLIENTES
$(document).ready(function() {    
    $('#tablaCli').DataTable({
        responsive: "true",
        dom: 'Bfrtilp',
        buttons:[ 
			{
				extend:    'excelHtml5',
				text:      '<i class="fas fa-file-excel"></i> ',
				titleAttr: 'Exportar a Excel',
				className: 'btn btn-success'
			},
			{
				extend:    'pdfHtml5',
				text:      '<i class="fas fa-file-pdf"></i> ',
				titleAttr: 'Exportar a PDF',
				className: 'btn btn-danger'
            },
            {
				extend:    'print',
				text:      '<i class="fa fa-print"></i> ',
				titleAttr: 'Imprimir',
				className: 'btn btn-info'
            },
            {
                extend: 'colvis',
                text:      '<i class="fa fa-list-alt"></i> ',
                collectionLayout: 'fixed two-column',
                titleAttr: 'Seleccionar columnas visibles',
                className: 'btn btn-secondary'
            }
			
		],
    //para cambiar el lenguaje a español
        language: {
                "lengthMenu": "Mostrar _MENU_ registros",
                "zeroRecords": "No se encontraron resultados",
                "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                "sSearch": "Buscar:",
                "oPaginate": {
                    "sFirst": "Primero",
                    "sLast":"Último",
                    "sNext":"Siguiente",
                    "sPrevious": "Anterior"
			     },
			     "sProcessing":"Procesando...",
            }
    });     
});

//TABLA GASTOS
$(document).ready(function() {    
     $('#tablaGastos').DataTable({
        responsive: "true",
        dom: 'Bfrtilp',       
        buttons:[ 
			{
				extend:    'excelHtml5',
				text:      '<i class="fas fa-file-excel"></i> ',
				titleAttr: 'Exportar a Excel',
				className: 'btn btn-success'
			},
			{
				extend:    'pdfHtml5',
				text:      '<i class="fas fa-file-pdf"></i> ',
				titleAttr: 'Exportar a PDF',
				className: 'btn btn-danger'
            },
            {
				extend:    'print',
				text:      '<i class="fa fa-print"></i> ',
				titleAttr: 'Imprimir',
				className: 'btn btn-info'
            },
            {
                extend: 'colvis',
                text:      '<i class="fa fa-list-alt"></i> ',
                collectionLayout: 'fixed two-column',
                titleAttr: 'Seleccionar columnas visibles',
                className: 'btn btn-secondary'
            }
			
		],
    //para cambiar el lenguaje a español
        language: {
                "lengthMenu": "Mostrar _MENU_ registros",
                "zeroRecords": "No se encontraron resultados",
                "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                "sSearch": "Buscar:",
                "oPaginate": {
                    "sFirst": "Primero",
                    "sLast":"Último",
                    "sNext":"Siguiente",
                    "sPrevious": "Anterior"
			     },
			     "sProcessing":"Procesando...",
            }
    });
    
    
});

//TABLA SERVICIOS
$(document).ready(function() {    
     $('#tablaServicios').DataTable({
        responsive: "true",
        dom: 'Bfrtilp',       
        buttons:[ 
			{
				extend:    'excelHtml5',
				text:      '<i class="fas fa-file-excel"></i> ',
				titleAttr: 'Exportar a Excel',
				className: 'btn btn-success'
			},
			{
				extend:    'pdfHtml5',
				text:      '<i class="fas fa-file-pdf"></i> ',
				titleAttr: 'Exportar a PDF',
				className: 'btn btn-danger'
            },
            {
				extend:    'print',
				text:      '<i class="fa fa-print"></i> ',
				titleAttr: 'Imprimir',
				className: 'btn btn-info'
            },
            {
                extend: 'colvis',
                text:      '<i class="fa fa-list-alt"></i> ',
                collectionLayout: 'fixed two-column',
                titleAttr: 'Seleccionar columnas visibles',
                className: 'btn btn-secondary'
            }
			
		],
    //para cambiar el lenguaje a español
        language: {
                "lengthMenu": "Mostrar _MENU_ registros",
                "zeroRecords": "No se encontraron resultados",
                "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                "sSearch": "Buscar:",
                "oPaginate": {
                    "sFirst": "Primero",
                    "sLast":"Último",
                    "sNext":"Siguiente",
                    "sPrevious": "Anterior"
			     },
			     "sProcessing":"Procesando...",
            }
    });
    
//    function eliminar(idRegistro){
//        
//        if (confirm("Esta seguro que desea eliminar el registro?")) {
//            window.location="/LAVARELA.110534/EliminarRegistroServlet?idRegistro="+idRegistro;
//        }
//    }
    
//    $(document).ready(function (){
//        $("tr #btnEliminar").click(function(){
//        var idRegistro = $(this).parent().find("#idProducto").val();
//        eliminar(idRegistro);  
//        });
//        function eliminar(idRegistro){
//            var url= "/LAVARELA.110534/EliminarRegistroServlet?idRegistro=${i.idRegistro}";
//            $.ajax({
//                type: 'GET';
//                url: url;
//                data: "idRegistro"+idRegistro;   
//                success: function (data, textStatus, jqXHR){
//                    alert("Registro Eliminado!");
//                }
//                })
//                    
//        })
//        
//    });
    
    
});