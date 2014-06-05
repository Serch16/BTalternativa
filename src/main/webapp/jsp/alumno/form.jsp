<form class="form-horizontal" action="#" id="formulario" name="formulario">
    <div class="control-group">
        <label class="control-label" for="inputId_usuario">Id Usuario:</label>
        <div class="controls">           
            <input readonly="true" id="id_usuario" class="input-mini" 
                   name="id_usuario" type="text" size="5" maxlength="5" />
            <a class="btn btn-mini" id="id_usuario_button" href="#"><i class="icon-search"></i></a>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">Correo usuario:</label>
        <div class="controls">
            <span id="id_usuario_desc" class="alert alert-info"></span>                                       
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputDni">DNI o NIE:</label>
        <div class="controls">
            <input type="text" id="dni" name="dni" size="9" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputNombre">Nombre:</label>
        <div class="controls">
            <input type="text" id="nombre" name="nombre" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputApellido1">Primer Apellido:</label>
        <div class="controls">
            <input type="text" id="apellido1" name="apellido1" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputApellido2">Segundo Apellido:</label>
        <div class="controls">
            <input type="text" id="apellido2" name="apellido2" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="descripcion">Fecha: </label> 
        <div class="controls">
            <input id="fecha" name="fecha" type="text" size="10" maxlength="50" value="" /> 
        </div>
    </div>
    <script>$("#fecha").datepicker({
            showOn: 'both',
            buttonImageOnly: true,
            changeYear: true,
            numberOfMonths: 1});
    </script>
    <div class="control-group">
        <label class="control-label"  for="inputPaisnto">Pa�s nacimiento:</label>
        <div class="controls">
            <input type="text" id="paisnto" name="paisnto" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputGenero">G�nero:</label>
        <div class="controls">
            <select id="genero" name="genero" type="text" autofocus="autofocus">
                <option value="">Seleccione una opci�n...</option>
                <option value="Hombre">Hombre</option>
                <option value="Mujer">Mujer</option>
            </select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputDomicilio">Domicilio:</label>
        <div class="controls">
            <input type="text" id="domicilio" name="domicilio" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputCodpostal">C�digo Postal:</label>
        <div class="controls">
            <input type="text" id="codpostal" name="codpostal" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputLocalidad">Localidad:</label>
        <div class="controls">
            <input type="text" id="localidad" name="localidad" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputProvincia">Provincia:</label>
        <div class="controls">
            <input type="text" id="provincia" name="provincia" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputTelefono">Tel�fono:</label>
        <div class="controls">
            <input type="text" id="telefono" name="telefono" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputTelefono2">Otro tel�fono:</label>
        <div class="controls">
            <input type="text" id="telefono2" name="telefono2" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputExpediente">N�mero Expediente:</label>
        <div class="controls">
            <input type="text" id="expediente" name="expediente" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputFamprofe">Familia:</label>
        <div class="controls">
            <select id="famprofe" name="famprofe" type="text" autofocus="autofocus">
                <option value="">Seleccione una opci�n...</option>
                <option value="Administraci�n">Administraci�n</option>
                <option value="Comercio">Comercio</option>
                <option value="Inform�tica">Inform�tica</option>
                <option value="Sanidad">Sanidad</option>
            </select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputCicloform">Ciclo</label>
        <div class="controls">
            <select id="cicloform" name="cicloform" type="text" autofocus="autofocus">
                <option value="">Seleccione una opci�n...</option>
                <option value="Gesti�n Administrativa (GM)">Gesti�n Administrativa (Grado Medio)</option>
                <option value="Administraci�n y Finanzas (GS)">Administraci�n y Finanzas (Grado Superior)</option>
                <option value="Secretariado (GS)">Secretariado (Gradu Superior)</option>
                <option value="Comercio y Marketing (GM)">Comercio y Marketing (Grado Medio)</option>
                <option value="Comercio Internacional (GS)">Comercio Internacional (Grado Superior)</option>
                <option value="Gesti�n Comercial y Marketing (GS)">Gesti�n Comercial y Marketing (Grado Superior)</option>
                <option value="Servicios al Consumidor (GS)">Servicios al Consumidor (Grado Superior)</option>
                <option value="Sistemas Microinform�ticos y Redes (GM)">Sistemas Microinform�ticos y Redes (Grado Medio)</option>
                <option value="Administraci�n de Sistemas Inform�ticos y Redes (GS)">Administraci�n de Sistemas Inform�ticos y Redes (Grado Superior)</option>
                <option value="Desarrollo de Aplicaciones Web (GS)">Desarrollo de Aplicaciones Web (Grado Superior)</option>
                <option value="Cuidados auxiliares de enfermer�a (GM)">Cuidados auxiliares de enfermer�a (Grado Medio)</option>
                <option value="Farmacia y Parafarmacia (GM)">Farmacia y Parafarmacia (Grado Medio)</option>
                <option value="Documentaci�n Sanitaria (GS)">Documentaci�n Sanitaria (Grado Superior)</option>
                <option value="Laboratorio de Diagn�stico Cl�nico (GS)">Laboratorio de Diagn�stico Cl�nico (Grado Superior)</option>
                <option value="Ortoprot�sica (GS)">Ortoprot�sica (Grado Superior)</option>
                <option value="Pr�tesis Dental (GS)">Pr�tesis Dental (Grado Superior)</option>
                <option value="Radioterapia (GS)">Radioterapia (Grado Superior)</option>
                <option value="Higiene Bucodental (GS)">Higiene Bucodental (Grado Superior)</option>
                <option value="Imagen para el Diagn�stico (GS)">Imagen para el Diagn�stico (Grado Superior)</option>
            </select>
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Introducir</button>
        </div>
    </div>
</form>
