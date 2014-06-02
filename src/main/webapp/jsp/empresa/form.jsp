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
        <label class="control-label" for="inputNombre">Empresa:</label>
        <div class="controls">
            <input type="text" id="nombre" name="nombre" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputCif">CIF:</label>
        <div class="controls">
            <input type="text" id="cif" name="cif" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputDireccion">Dirección:</label>
        <div class="controls">
            <input type="text" id="direccion" name="direccion" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputCpostal">Código postal:</label>
        <div class="controls">
            <input type="text" id="cpostal" name="cpostal" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputLocalidad">Localidad:</label>
        <div class="controls">
            <input type="text" id="localidad" name="localidad" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputProvincia">Provincia:</label>
        <div class="controls">
            <input type="text" id="provincia" name="provincia" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputWeb">Web:</label>
        <div class="controls">
            <input type="text" id="web" name="web" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputTelefono">Teléfono:</label>
        <div class="controls">
            <input type="text" id="telefono" name="telefono" placeholder="fijo o móvil" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputTelefono2">Otro télf.:</label>
        <div class="controls">
            <input type="text" id="telefono2" name="telefono2" placeholder="fijo o móvil" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputSector">Sector:</label>
        <div class="controls">
            <input type="text" id="sector" name="sector" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputNombrecontacto">Nombre de contacto:</label>
        <div class="controls">
            <input type="text" id="nombrecontacto" name="nombrecontacto" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Introducir</button>
        </div>
    </div>
</form>