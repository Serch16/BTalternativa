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
        <label class="control-label"  for="inputDni">DNI:</label>
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
        <label class="control-label" for="descripcion">Fecha nacimiento: </label> 
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
                <option value="">Seleccione su g�nero...</option>
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
            <select id="provincia" name="provincia" type="text" autofocus="autofocus">
                <option value="">Seleccione una provincia...</option>
                <option value="A Coru�a">A Coru�a</option>
                <option value="�lava">�lava</option>
                <option value="Albacete">Albacete</option>
                <option value="Alicante">Alicante</option>
                <option value="Almer�a">Almer�a</option>
                <option value="Asturias">Asturias</option>
                <option value="�vila">�vila</option>
                <option value="Badajoz">Badajoz</option>
                <option value="Barcelona">Barcelona</option>
                <option value="Burgos">Burgos</option>
                <option value="C�ceres">C�ceres</option>
                <option value="C�diz">C�diz</option>
                <option value="Cantabria">Cantabria</option>
                <option value="Castell�n">Castell�n</option>
                <option value="Ceuta">Ceuta</option>
                <option value="Ciudad Real">Ciudad Real</option>
                <option value="C�rdoba">C�rdoba</option>
                <option value="Cuenca">Cuenca</option>
                <option value="Girona">Girona</option>
                <option value="Granada">Granada</option>
                <option value="Guadalajara">Guadalajara</option>
                <option value="Guip�zcoa">Guip�zcoa</option>
                <option value="Huelva">Huelva</option>
                <option value="Huesca">Huesca</option>
                <option value="Illes Balears">Illes Balears</option>
                <option value="Ja�n">Ja�n</option>
                <option value="La Rioja">La Rioja</option>
                <option value="Las Palmas">Las Palmas</option>
                <option value="Le�n">Le�n</option>
                <option value="Lle�da">Lle�da</option>
                <option value="Lugo">Lugo</option>
                <option value="Madrid">Madrid</option>
                <option value="M�laga">M�laga</option>
                <option value="Melilla">Melilla</option>
                <option value="Murcia">Murcia</option>
                <option value="Navarra">Navarra</option>
                <option value="Ourense">Ourense</option>
                <option value="Palencia">Palencia</option>
                <option value="Pontevedra">Pontevedra</option>
                <option value="Salamanca">Salamanca</option>
                <option value="Santa Cruz de Tenerife">Santa Cruz de Tenerife</option>
                <option value="Segovia">Segovia</option>
                <option value="Sevilla">Sevilla</option>
                <option value="Soria">Soria</option>
                <option value="Tarragona">Tarragona</option>
                <option value="Teruel">Teruel</option>
                <option value="Toledo">Toledo</option>
                <option value="Valencia">Valencia</option>
                <option value="Valladolid">Valladolid</option>
                <option value="Vizcaya">Vizcaya</option>
                <option value="Zamora">Zamora</option>
                <option value="Zaragoza">Zaragoza</option>
            </select>
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
                <option value="">Seleccione una familia...</option>
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
                <option value="">Seleccione un ciclo...</option>
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