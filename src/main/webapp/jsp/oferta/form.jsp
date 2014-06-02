<form class="form-horizontal" action="#" id="formulario" name="formulario">
    <div class="control-group">
        <label class="control-label" for="inputId_usuario">ID Usuario:</label>
        <div class="controls">
            <input type="text" id="id_usuario" name="id_usuario" placeholder="" />
            <a class="btn btn-mini" id="id_usuario_button" href="#"><i class="icon-search"></i></a>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">Empresa:</label>
        <div class="controls">
            <span id="id_usuario_desc" class="alert alert-info"></span>                                       
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputPuesto">Puesto:</label>
        <div class="controls">
            <input type="text" id="puesto" name="puesto" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputCategoria">Categoría:</label>
        <div class="controls">
            <select id="categoria" name="categoria" type="text" autofocus="autofocus">
                <option value="">Seleccione una opción...</option>
                <option value="Administración">Administración</option>
                <option value="Comercio">Comercio</option>
                <option value="Informática">Informática</option>
                <option value="Sanidad">Sanidad</option>
            </select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputVacantes">Vacantes:</label>
        <div class="controls">
            <input type="text" id="vacantes" name="vacantes" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputDescripción">Descripción:</label>
        <div class="controls">
            <input type="text" id="descripcion" name="descripcion" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputRequisitos">Requisitos</label>
        <div class="controls">
            <input type="text" id="requisitos" name="requisitos" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputExperiencia">Experiencia:</label>
        <div class="controls">
            <input type="text" id="experiencia" name="experiencia" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputSalario">Salario:</label>
        <div class="controls">
            <input type="text" id="salario" name="salario" size="15" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputPoblacion">Población:</label>
        <div class="controls">
            <input type="text" id="poblacion" name="poblacion" size="15" placeholder="Población" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label"  for="inputProvincia">Provincia:</label>
        <div class="controls">
            <input type="text" id="provincia" name="provincia" size="15" placeholder="Provincia" />
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <button type="submit" id="submitForm" class="btn submitForm">Introducir</button>
        </div>
    </div>
</form>