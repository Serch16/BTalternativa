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
        <label class="control-label" for="inputDireccion">Direcci�n:</label>
        <div class="controls">
            <input type="text" id="direccion" name="direccion" placeholder="" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputCpostal">C�digo postal:</label>
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
        <label class="control-label" for="inputTelefono">Tel�fono:</label>
        <div class="controls">
            <input type="text" id="telefono" name="telefono" placeholder="fijo o m�vil" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputTelefono2">Otro t�lf.:</label>
        <div class="controls">
            <input type="text" id="telefono2" name="telefono2" placeholder="fijo o m�vil" />
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputSector">Sector:</label>
        <div class="controls">
            <select id="sector" name="sector" type="text" autofocus="autofocus">
                <option value="">Seleccione una opci�n...</option>
                <option value="Actividades inmobiliarias">Actividades inmobiliarias</option>
                <option value="Administraci�n gubernamental">Administraci�n gubernamental</option>
                <option value="Agricultura, ganader�a y pesca">Agricultura, ganader�a y pesca</option>
                <option value="Agroalimentario">Agroalimentario</option>
                <option value="Animaci�n">Animaci�n</option>
                <option value="Apuestas y casinos">Apuestas y casinos</option>
                <option value="Arquitectura y planificaci�n">Arquitectura y planificaci�n</option>
                <option value="Artes esc�nicas">Artes esc�nicas</option>
                <option value="Artesan�a">Artesan�a</option>
                <option value="Art�culos de lujo y joyer�a">Art�culos de lujo y joyer�a</option>
                <option value="Art�culos deportivos">Art�culos deportivos</option>
                <option value="Atenci�n sanitaria y hospitalaria">Atenci�n sanitaria y hospitalaria</option>
                <option value="Audiovisual">Audiovisual</option>
                <option value="Automoci�n">Automoci�n</option>
                <option value="Banca">Banca</option>
                <option value="Banca de inversiones">Banca de inversiones</option>
                <option value="Bellas artes">Bellas artes</option>
                <option value="Bibliotecas">Bibliotecas</option>
                <option value="Biotecnolog�a">Biotecnolog�a</option>
                <option value="Capital de riesgo y capital privado">Capital de riesgo y capital privado</option>
                <option value="Construcci�n">Construcci�n</option>
                <option value="Consultor�a de estrategia y operaciones">Consultor�a de estrategia y operaciones</option>
                <option value="Cooperaci�n y desarrollo internacional">Cooperaci�n y desarrollo internacional</option>
                <option value="Cosm�tica">Cosm�tica</option>
                <option value="Cristal, cer�mica y hormig�n">Cristal, cer�mica y hormig�n</option>
                <option value="Departamento de defensa y del espacio exterior">Departamento de defensa y del espacio exterior</option>
                <option value="Deportes">Deportes</option>
                <option value="Desarrollo de programaci�n">Desarrollo de programaci�n</option>
                <option value="Dise�o">Dise�o</option>
                <option value="Dise�o gr�fico">Dise�o gr�fico</option>
                <option value="Editorial">Editorial</option>
                <option value="Educaci�n">Educaci�n</option>
                <option value="Electr�nica de consumo">Electr�nica de consumo</option>
                <option value="El�ctrica">El�ctrica</option>
                <option value="Energ�a renovable y medio ambiente">Energ�a renovable y medio ambiente</option>
                <option value="Entretenimiento">Entretenimiento</option>
                <option value="Equipos inform�ticos">Equipos inform�ticos</option>
                <option value="Fotograf�a">Fotograf�a</option>
                <option value="Gesti�n de inversiones">Gesti�n de inversiones</option>
                <option value="Gran consumo y alimentaci�n">Gran consumo y alimentaci�n</option>
                <option value="Hosteler�a y restaurantes">Hosteler�a y restaurantes</option>
                <option value="Importaci�n y exportaci�n">Importaci�n y exportaci�n</option>
                <option value="Imprenta">Imprenta</option>
                <option value="Industria farmace�tica">Industria farmace�tica</option>
                <option value="Industria qu�mica">Industria qu�mica</option>
                <option value="Industria textil y moda">Industria textil y moda</option>
                <option value="Infraestructuras">Infraestructuras</option>
                <option value="Ingenier�a">Ingenier�a</option>
                <option value="Instalaciones y servicios recreativos">Instalaciones y servicios recreativos</option>
                <option value="Internet">Internet</option>
                <option value="Investigaci�n">Investigaci�n</option>
                <option value="Investigaci�n de mercado">Investigaci�n de mercado</option>
                <option value="Log�stica">Log�stica</option>
                <option value="Maquinaria">Maquinaria</option>
                <option value="Marketing y publicidad">Marketing y publicidad</option>
                <option value="Material y equipo de negocios">Material y equipo de negocios</option>
                <option value="Medicina alternativa">Medicina alternativa</option>
                <option value="Medios de comunicaci�n offline">Medios de comunicaci�n offline</option>
                <option value="Medios de comunicaci�n online">Medios de comunicaci�n online</option>
                <option value="Mercados de capital">Mercados de capital</option>
                <option value="Miner�a y metalurgia">Miner�a y metalurgia</option>
                <option value="Museos e instituciones">Museos e instituciones</option>
                <option value="M�sica">M�sica</option>
                <option value="Naval">Naval</option>
                <option value="ONG y servicios sociales">ONG y servicios sociales</option>
                <option value="Petr�leo y energ�a">Petr�leo y energ�a</option>
                <option value="Pl�stico, papel y madera">Pl�stico, papel y madera</option>
                <option value="Producci�n multimedia">Producci�n multimedia</option>
                <option value="Programas inform�ticos">Programas inform�ticos</option>
                <option value="Protecci�n civil">Protecci�n civil</option>
                <option value="Publicidad, RRPP y eventos">Publicidad, RRPP y eventos</option>
                <option value="Seguros">Seguros</option>
                <option value="Servicios de RRHH">Servicios de RRHH</option>
                <option value="Servicios de asesor�a y auditor�a">Servicios de asesor�a y auditor�a</option>
                <option value="Servicios de seguridad">Servicios de seguridad</option>
                <option value="Servicios financieros">Servicios financieros</option>
                <option value="Servicios jur�dicos">Servicios jur�dicos</option>
                <option value="Servicios medioambientales">Servicios medioambientales</option>
                <option value="Servicios y tecnolog�a de la informaci�n">Servicios y tecnolog�a de la informaci�n</option>
                <option value="Supply Chain">Supply Chain</option>
                <option value="Tabacalera">Tabacalera</option>
                <option value="Telecomunicaciones">Telecomunicaciones</option>
                <option value="Telemarketing">Telemarketing</option>
                <option value="Traducci�n">Traducci�n</option>
                <option value="Transporte y mensajeria">Transporte y mensajeria</option>
                <option value="Turismo">Turismo</option>
                <option value="Venta al por mayor">Venta al por mayor</option>
                <option value="Venta al por menor">Venta al por menor</option>
                <option value="Veterinaria">Veterinaria</option>
                <option value="Videojuegos">Videojuegos</option>
                <option value="Wellness">Wellness</option>
                <option value="Otras actividades">Otras actividades</option>
            </select>
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