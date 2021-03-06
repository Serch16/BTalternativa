var control_alumno_list = function(path) {
    //contexto privado

    var prefijo_div = "#alumno_list ";

    function cargaBotoneraMantenimiento() {
        var botonera = [
//            {"class": "btn btn-mini action01", "icon": "icon-eye-open", "text": ""},
//            {"class": "btn btn-mini action02", "icon": "icon-zoom-in", "text": ""},
            {"class": "btn btn-mini action03", "icon": "icon-pencil", "text": ""},
            {"class": "btn btn-danger btn-mini action04", "icon": "icon-trash icon-white", "text": ""}
        ];
        return botonera;
    }

 function cargaBotoneraBuscando() {
        var botonera = [
            {"class": "btn btn-mini action01", "icon": "icon-ok", "text": ""}
        ];
        return botonera;
    }

    function loadDivView(view, place, id) {
        $(prefijo_div + place).empty().append((view.getObjectTable(id))
                + '<button class="btn btn-primary" id="limpiar">Limpiar</button>');
        $(prefijo_div + '#limpiar').click(function() {
            $(prefijo_div + place).empty();
        });
    }
    function loadForeign(strObjetoForeign, strPlace, control, functionCallback) {
        var objConsulta = objeto(strObjetoForeign, path);
        var consultaView = vista(objConsulta, path);

        cabecera = '<button id="full-width" type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3 id="myModalLabel">Elección</h3>';
        pie = '<button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Cerrar</button>';
        listado = consultaView.getEmptyList();
        loadForm(strPlace, cabecera, listado, pie, true);

        $(prefijo_div + strPlace).css({
            'right': '20px',
            'left': '20px',
            'width': 'auto',
            'margin': '0',
            'display': 'block'
        });

        var consultaControl = control(path);
        consultaControl.inicia(consultaView, 1, null, null, 10, null, null, null, functionCallback, null, null, null);

    }
    function loadModalForm(view, place, id, action) {
        
        jQuery.validator.addMethod("caracteresespeciales",
                function(value, element) {
                    return /^[A-Za-z\d=#$%@_ -]+$/.test(value);
                },
                "Nada de caracteres especiales, por favor"
                );

        jQuery.validator.addMethod("nifES",
                function(value, element) {
                    "use strict";
                    value = value.toUpperCase();
                    if (!value.match('((^[A-Z]{1}[0-9]{7}[A-Z0-9]{1}$|^[T]{1}[A-Z0-9]{8}$)|^[0-9]{8}[A-Z]{1}$)')) {
                        return false;
                    }
                    if (/^[0-9]{8}[A-Z]{1}$/.test(value)) {
                        return ("TRWAGMYFPDXBNJZSQVHLCKE".charAt(value.substring(8, 0) % 23) === value.charAt(8));
                    }
                    return false;
                },
                "Por favor, introduce un DNI correcto"
                );
        
        cabecera = '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>';
        if (action == "edit") {
            cabecera += '<h3 id="myModalLabel">Edición de ' + view.getObject().getName() + "</h3>";
        } else {
            cabecera += '<h3 id="myModalLabel">Alta de ' + view.getObject().getName() + "</h3>";
        }
        pie = '<button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Cerrar</button>';

        loadForm(place, cabecera, view.getEmptyForm(), pie, false);
        if (action == "edit") {
            view.doFillForm(id);
        } else {
            $(prefijo_div + '#id').val('0').attr("disabled", true);
            $(prefijo_div + '#nombre').focus();
        }
        //clave ajena usuario
        cargaClaveAjena('#id_usuario', '#id_usuario_desc', 'usuario')

        $(prefijo_div + '#id_usuario_button').unbind('click');
        $(prefijo_div + '#id_usuario_button').click(function() {
            loadForeign('usuario', '#modal02', control_usuario_list, callbackSearchUsuario);
            function callbackSearchUsuario(id) {
                $(prefijo_div + '#modal02').modal('hide');
                $(prefijo_div + '#modal02').data('modal', null);
                $(prefijo_div + '#id_usuario').val($(this).attr('id'));
                cargaClaveAjena('#id_usuario', '#id_usuario_desc', 'usuario');
                return false;
            }
            return false;
        });

        // Validación del formulario.
        //http://jqueryvalidation.org/documentation/
        $('#formulario').validate({
            rules: {
                id_usuario: {
                    required: true,
                    // maxlength: 255
                },
                nombre: {
                    required: true,
                    maxlength: 20,
                    minlength: 3
                },
                dni: {
                    required: true,
                    maxlength: 9,
                    caracteresespeciales: true,
                    nifES: true
                },
                apellido1: {
                    required: true,
                    maxlength: 20,
                    minlength: 3
                },
                apellido2: {
                    required: true,
                    maxlength: 20,
                    minlength: 3
                },
                domicilio: {
                    required: true,
                    maxlength: 150
                },
                localidad: {
                    required: true,
                    maxlength: 150
                },
                provincia: {
                    required: true,
                    maxlength: 255
                },
                paisnto: {
                    required: true,
                    maxlength: 50,
                    minlength: 3
                },
                telefono: {
                    required: true,
                    maxlength: 9,
                    minlength: 9
                },
                telefono2: {
                    maxlength: 9,
                    minlength: 9
                },
                expediente: {
                    required: true,
                    maxlength: 4,
                    minlength: 4,
                    digits: true
                },
                familia: {
                    required: true,
                    maxlength: 255
                },
                ciclo: {
                    required: true,
                    maxlength: 255
                },
                genero: {
                    required: true,
                    maxlength: 255
                },
                fecha: {
                    required: true
                }, 
                codpostal: {
                    required: true,
                    maxlength: 5,
                    minlength: 5,
                    digits: true
                }
            },
            messages: {
                id_usuario: {
                    required: "Elige un Id. Usuario."
                },
                nombre: {
                    required: "Introduce un Nombre.",
                    minlength: "Mínimo 3 caracteres, ej.: Ana",
                    maxlength: "Máximo 20 caracteres"
                },
                dni: {
                    required: "Introduce tu DNI"
                },
                apellido1: {
                    required: "Introduce un Apellido.",
                    minlength: "Mínimo 3 caracteres",
                    maxlength: "Máximo 20 caracteres"
                },
                apellido2: {
                    required: "Introduce un Apellido.",
                    minlength: "Mínimo 3 caracteres",
                    maxlength: "Máximo 20 caracteres"
                },
                domicilio: {
                    required: "Introduce una Direccion.",
                },
                localidad: {
                    required: "Introduce una Localidad",
                    maxlength: "Tiene que ser menos de 150 caracteres"
                },
                provincia: {
                    required: "Introduce una Provincia",
                    maxlength: "Tiene que ser menos de 150 caracteres"
                },
                paisnto: {
                    required: "Introduce un Pais",
                    maxlength: "Tiene que ser menos de 50 caracteres"
                },
                telefono: {
                    required: "Introduce un Telefono",
                    maxlength: "Tiene que ser 9 dígitos",
                    minlength: "Tiene que ser 9 dígitos",
                    digits: "Sólo números"
                },
                telefono2: {
                    maxlength: "Tiene que ser 9 dígitos",
                    minlength: "Tiene que ser 9 dígitos",
                    digits: "Sólo números"
                },
                fecha: {
                    required: "Introduce una fecha de nacimiento"
                },
                genero: {
                    required: "Introduce el Género"
                },
                codpostal: {
                    required: "Introduce tu código postal",
                    maxlength: "Máximo 5 dígitos",
                    minlength: "Cómo mínimo 5 dígitos",
                    digits: "Introduce un código postal"
                },
                expediente: {
                    required: "Introduce un número de expediente",
                    maxlength: "Máximo 4 digitos",
                    digits: "Número de expediente incorrecto"
                },
                familia: {
                    required: "Introduce el Familia"
                },
                ciclo: {
                    required: "Introduce el Género"
                }
            },
            highlight: function(element) {
                $(element).closest('.control-group').removeClass('success').addClass('error');
            },
            success: function(element) {
                element
                        .text('OK!').addClass('valid')
                        .closest('.control-group').removeClass('error').addClass('success');
            }
        });

        $(prefijo_div + '#submitForm').unbind('click');
        $(prefijo_div + '#submitForm').click(function() {
            if ($('#formulario').valid()) {
                enviarDatosUpdateForm(view, prefijo_div);
            }
            return false;
        });
    }
    function cargaClaveAjena(lugarID, lugarDesc, objetoClaveAjena) {
        if ($(prefijo_div + lugarID).val() !== "") {
            objInfo = objeto(objetoClaveAjena, path).getOne($(prefijo_div + lugarID).val());
            props = Object.getOwnPropertyNames(objInfo);
            $(prefijo_div + lugarDesc).empty().html(objInfo[props[1]]);
        }
    }
    function removeConfirmationModalForm(view, place, id) {
        cabecera = "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>" +
                "<h3 id=\"myModalLabel\">Borrado de " + view.getObject().getName() + "</h3>";
        pie = "<div id=\"result\">¿Seguro que desea borrar el registro?</div>" +
                '<button id="btnBorrarSi" class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Sí</button>' +
                '<button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">No</button>';
        loadForm(place, cabecera, view.getObjectTable(id), pie, false);
        $(prefijo_div + '#btnBorrarSi').unbind('click');
        $(prefijo_div + '#btnBorrarSi').click(function() {
            resultado = view.getObject().removeOne(id);
            cabecera = "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>" + "<h3 id=\"myModalLabel\">Respuesta del servidor</h3>";
            pie = "<button class=\"btn btn-primary\" data-dismiss=\"modal\" aria-hidden=\"true\">Cerrar</button>";
            loadForm('#modal02', cabecera, "Código: " + resultado["status"] + "<br />" + resultado["message"] + "<br />", pie, true);
        });
    }

    function loadModalView(view, place, id) {
        cabecera = "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>" +
                "<h3 id=\"myModalLabel\">Detalle de " + view.getObject().getName() + "</h3>";
        pie = "<button class=\"btn btn-primary\" data-dismiss=\"modal\" aria-hidden=\"true\">Cerrar</button>";
        loadForm(place, cabecera, view.getObjectTable(id), pie, true);
    }

    return {
        inicia: function(view, pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, callback, systemfilter, systemfilteroperator, systemfiltervalue) {

            var thisObject = this;

            //controlar que no estemos en una página fuera de órbita

            if (parseInt(pag) > parseInt(view.getObject().getPages(rpp, filter, filteroperator, filtervalue))) {
                pag = view.getObject().getPages(rpp, filter, filteroperator, filtervalue);
            }

            //muestra la botonera de páginas

            $(prefijo_div + "#pagination").empty().append(view.getLoading()).html(view.getPageLinks(pag, rpp, filter, filteroperator, filtervalue, systemfilter, systemfilteroperator, systemfiltervalue));

            //muestra el listado principal

            if (callback) {
                $(prefijo_div + "#datos").empty().append(view.getLoading()).html(view.getPageTable(pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, systemfilter, systemfilteroperator, systemfiltervalue/*, cargaBotoneraBuscando()*/));
            } else {
                $(prefijo_div + "#datos").empty().append(view.getLoading()).html(view.getPageTable(pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, systemfilter, systemfilteroperator, systemfiltervalue, cargaBotoneraMantenimiento()));
            }

            //muestra la frase con el número de registros de la consulta

            $(prefijo_div + "#registers").empty().append(view.getLoading()).html(view.getRegistersInfo(filter, filteroperator, filtervalue, systemfilter, systemfilteroperator, systemfiltervalue));

            //muestra la frase de estado de la ordenación de la tabla

            $(prefijo_div + "#order").empty().append(view.getLoading()).html(view.getOrderInfo(order, ordervalue));

            //muestra la frase de estado del filtro de la tabla aplicado

            $(prefijo_div + "#filter").empty().append(view.getLoading()).html(view.getFilterInfo(filter, filteroperator, filtervalue));

            //asignación eventos de la botonera de cada línea del listado principal
            if (callback) {
                $(prefijo_div + '.btn.btn-mini.action01').unbind('click');
                $(prefijo_div + '.btn.btn-mini.action01').click(callback);
            } else {
                $(prefijo_div + '.btn.btn-mini.action01').unbind('click');
                $(prefijo_div + '.btn.btn-mini.action01').click(function() {
                    loadDivView(view, '#datos2', $(this).attr('id'));
                });

                $(prefijo_div + '.btn.btn-mini.action02').unbind('click');
                $(prefijo_div + '.btn.btn-mini.action02').click(function() {
                    loadModalView(view, '#modal01', $(this).attr('id'));
                });

                $(prefijo_div + '.btn.btn-mini.action03').unbind('click');
                $(prefijo_div + '.btn.btn-mini.action03').click(function() {
                    loadModalForm(view, '#modal01', $(this).attr('id'), "edit");
                });

                $(prefijo_div + '.btn.btn-mini.action04').unbind('click');
                $(prefijo_div + '.btn.btn-mini.action04').click(function() {
                    removeConfirmationModalForm(view, '#modal01', $(this).attr('id'));
                });

            }

            //asignación de evento del enlace para quitar el orden en el listado principal

            $(prefijo_div + '#linkQuitarOrden').unbind('click');
            $(prefijo_div + '#linkQuitarOrden').click(function() {
                thisObject.inicia(view, pag, null, null, rpp, filter, filteroperator, filtervalue, callback, systemfilter, systemfilteroperator, systemfiltervalue);
            });

            //asignación de evento del enlace para quitar el filtro en el listado principal

            $(prefijo_div + '#linkQuitarFiltro').unbind('click');
            $(prefijo_div + '#linkQuitarFiltro').click(function() {
                thisObject.inicia(view, pag, order, ordervalue, rpp, null, null, null, callback, systemfilter, systemfilteroperator, systemfiltervalue);
            });

            //asignación de eventos de la ordenación por columnas del listado principal

            $.each(view.getObject().getFieldNames(), function(index, valor) {
                $(prefijo_div + '.orderAsc').unbind('click');
                $(prefijo_div + '.orderAsc' + index).click(function() {
                    rpp = $(prefijo_div + "#rpp option:selected").text();
                    thisObject.inicia(view, pag, valor, "asc", rpp, filter, filteroperator, filtervalue, callback, systemfilter, systemfilteroperator, systemfiltervalue);
                });
                $(prefijo_div + '.orderDesc').unbind('click');
                $(prefijo_div + '.orderDesc' + index).click(function() {
                    rpp = $(prefijo_div + "#rpp option:selected").text();
                    thisObject.inicia(view, pag, valor, "desc", rpp, filter, filteroperator, filtervalue, callback, systemfilter, systemfilteroperator, systemfiltervalue);
                });

            });

            //asignación del evento de click para cambiar de página en la botonera de paginación

            $(prefijo_div + '.pagination_link').unbind('click');
            $(prefijo_div + '.pagination_link').click(function() {
                var id = $(this).attr('id');
                rpp = $(prefijo_div + "#rpp option:selected").text();
                thisObject.inicia(view, id, order, ordervalue, rpp, filter, filteroperator, filtervalue, callback, systemfilter, systemfilteroperator, systemfiltervalue);
                return false;
            });

            $(prefijo_div + '.pagination_link').keypress(function(event) {
                if (event.wich == 100) {
                    var id = $(this).attr('id');
                    rpp = $(prefijo_div + "#rpp option:selected").text();
                    thisObject.inicia(view, id + 1, order, ordervalue, rpp, filter, filteroperator, filtervalue, callback, systemfilter, systemfilteroperator, systemfiltervalue);
                    return false;
                }
            });

            //boton de crear un nuevo elemento

            if (callback) {
                $(prefijo_div + '#crear').css("display", "none");
            } else {
                $(prefijo_div + '#crear').unbind('click');
                $(prefijo_div + '#crear').click(function() {
                    loadModalForm(view, prefijo_div + '#modal01', $(this).attr('id'));
                });
            }

            //asignación del evento de filtrado al boton

            $(prefijo_div + '#btnFiltrar').unbind('click');
            $(prefijo_div + "#btnFiltrar").click(function() {
                filter = $(prefijo_div + "#selectFilter option:selected").text();
                filteroperator = $(prefijo_div + "#selectFilteroperator option:selected").text();
                filtervalue = $(prefijo_div + "#inputFiltervalue").val();
                thisObject.inicia(view, pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, callback, systemfilter, systemfilteroperator, systemfiltervalue);
                return false;
            });

            //asigación de evento de refresco de la tabla cuando volvemos de una operación en ventana modal

            $(prefijo_div + '#modal01').unbind('hidden');
            $(prefijo_div + '#modal01').on('hidden', function() {

                rpp = $(prefijo_div + "#rpp option:selected").text();
                thisObject.inicia(view, pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, callback, systemfilter, systemfilteroperator, systemfiltervalue);
            });

            //asignación del evento de cambio del numero de regs por página

            $(prefijo_div + '#rpp').unbind('change');
            $(prefijo_div + '#rpp').on('change', function() {
                rpp = $(prefijo_div + "#rpp option:selected").text();
                thisObject.inicia(view, pag, order, ordervalue, rpp, filter, filteroperator, filtervalue, callback, systemfilter, systemfilteroperator, systemfiltervalue);
            });
        }
    };
};