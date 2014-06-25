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
        <label class="control-label"  for="inputPaisnto">País nacimiento:</label>
        <div class="controls">
            <input type="text" id="paisnto" name="paisnto" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputGenero">Género:</label>
        <div class="controls">
            <select id="genero" name="genero" type="text" autofocus="autofocus">
                <option value="">Seleccione su género...</option>
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
        <label class="control-label"  for="inputCodpostal">Código Postal:</label>
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
                <option value="A Coruña">A Coruña</option>
                <option value="Álava">Álava</option>
                <option value="Albacete">Albacete</option>
                <option value="Alicante">Alicante</option>
                <option value="Almería">Almería</option>
                <option value="Asturias">Asturias</option>
                <option value="Ávila">Ávila</option>
                <option value="Badajoz">Badajoz</option>
                <option value="Barcelona">Barcelona</option>
                <option value="Burgos">Burgos</option>
                <option value="Cáceres">Cáceres</option>
                <option value="Cádiz">Cádiz</option>
                <option value="Cantabria">Cantabria</option>
                <option value="Castellón">Castellón</option>
                <option value="Ceuta">Ceuta</option>
                <option value="Ciudad Real">Ciudad Real</option>
                <option value="Córdoba">Córdoba</option>
                <option value="Cuenca">Cuenca</option>
                <option value="Girona">Girona</option>
                <option value="Granada">Granada</option>
                <option value="Guadalajara">Guadalajara</option>
                <option value="Guipúzcoa">Guipúzcoa</option>
                <option value="Huelva">Huelva</option>
                <option value="Huesca">Huesca</option>
                <option value="Illes Balears">Illes Balears</option>
                <option value="Jaén">Jaén</option>
                <option value="La Rioja">La Rioja</option>
                <option value="Las Palmas">Las Palmas</option>
                <option value="León">León</option>
                <option value="Lleída">Lleída</option>
                <option value="Lugo">Lugo</option>
                <option value="Madrid">Madrid</option>
                <option value="Málaga">Málaga</option>
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
        <label class="control-label"  for="inputTelefono">Teléfono:</label>
        <div class="controls">
            <input type="text" id="telefono" name="telefono" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputTelefono2">Otro teléfono:</label>
        <div class="controls">
            <input type="text" id="telefono2" name="telefono2" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputExpediente">Número Expediente:</label>
        <div class="controls">
            <input type="text" id="expediente" name="expediente" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputFamprofe">Familia:</label>
        <div class="controls">
            <select id="famprofe" name="famprofe" type="text" autofocus="autofocus">
                <option value="">Seleccione una familia...</option>
                <option value="Administración">Administración</option>
                <option value="Comercio">Comercio</option>
                <option value="Informática">Informática</option>
                <option value="Sanidad">Sanidad</option>
            </select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputCicloform">Ciclo</label>
        <div class="controls">
            <select id="cicloform" name="cicloform" type="text" autofocus="autofocus">
                <option value="">Seleccione un ciclo...</option>
                <option value="Gestión Administrativa (GM)">Gestión Administrativa (Grado Medio)</option>
                <option value="Administración y Finanzas (GS)">Administración y Finanzas (Grado Superior)</option>
                <option value="Secretariado (GS)">Secretariado (Gradu Superior)</option>
                <option value="Comercio y Marketing (GM)">Comercio y Marketing (Grado Medio)</option>
                <option value="Comercio Internacional (GS)">Comercio Internacional (Grado Superior)</option>
                <option value="Gestión Comercial y Marketing (GS)">Gestión Comercial y Marketing (Grado Superior)</option>
                <option value="Servicios al Consumidor (GS)">Servicios al Consumidor (Grado Superior)</option>
                <option value="Sistemas Microinformáticos y Redes (GM)">Sistemas Microinformáticos y Redes (Grado Medio)</option>
                <option value="Administración de Sistemas Informáticos y Redes (GS)">Administración de Sistemas Informáticos y Redes (Grado Superior)</option>
                <option value="Desarrollo de Aplicaciones Web (GS)">Desarrollo de Aplicaciones Web (Grado Superior)</option>
                <option value="Cuidados auxiliares de enfermería (GM)">Cuidados auxiliares de enfermería (Grado Medio)</option>
                <option value="Farmacia y Parafarmacia (GM)">Farmacia y Parafarmacia (Grado Medio)</option>
                <option value="Documentación Sanitaria (GS)">Documentación Sanitaria (Grado Superior)</option>
                <option value="Laboratorio de Diagnóstico Clínico (GS)">Laboratorio de Diagnóstico Clínico (Grado Superior)</option>
                <option value="Ortoprotésica (GS)">Ortoprotésica (Grado Superior)</option>
                <option value="Prótesis Dental (GS)">Prótesis Dental (Grado Superior)</option>
                <option value="Radioterapia (GS)">Radioterapia (Grado Superior)</option>
                <option value="Higiene Bucodental (GS)">Higiene Bucodental (Grado Superior)</option>
                <option value="Imagen para el Diagnóstico (GS)">Imagen para el Diagnóstico (Grado Superior)</option>
            </select>
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Introducir</button>
        </div>
    </div>
</form>