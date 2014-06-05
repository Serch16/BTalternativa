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
            <select id="sector" name="sector" type="text" autofocus="autofocus">
                <option value="">Seleccione una opción...</option>
                <option value="Actividades inmobiliarias">Actividades inmobiliarias</option>
                <option value="Administración gubernamental">Administración gubernamental</option>
                <option value="Agricultura, ganadería y pesca">Agricultura, ganadería y pesca</option>
                <option value="Agroalimentario">Agroalimentario</option>
                <option value="Animación">Animación</option>
                <option value="Apuestas y casinos">Apuestas y casinos</option>
                <option value="Arquitectura y planificación">Arquitectura y planificación</option>
                <option value="Artes escénicas">Artes escénicas</option>
                <option value="Artesanía">Artesanía</option>
                <option value="Artículos de lujo y joyería">Artículos de lujo y joyería</option>
                <option value="Artículos deportivos">Artículos deportivos</option>
                <option value="Atención sanitaria y hospitalaria">Atención sanitaria y hospitalaria</option>
                <option value="Audiovisual">Audiovisual</option>
                <option value="Automoción">Automoción</option>
                <option value="Banca">Banca</option>
                <option value="Banca de inversiones">Banca de inversiones</option>
                <option value="Bellas artes">Bellas artes</option>
                <option value="Bibliotecas">Bibliotecas</option>
                <option value="Biotecnología">Biotecnología</option>
                <option value="Capital de riesgo y capital privado">Capital de riesgo y capital privado</option>
                <option value="Construcción">Construcción</option>
                <option value="Consultoría de estrategia y operaciones">Consultoría de estrategia y operaciones</option>
                <option value="Cooperación y desarrollo internacional">Cooperación y desarrollo internacional</option>
                <option value="Cosmética">Cosmética</option>
                <option value="Cristal, cerámica y hormigón">Cristal, cerámica y hormigón</option>
                <option value="Departamento de defensa y del espacio exterior">Departamento de defensa y del espacio exterior</option>
                <option value="Deportes">Deportes</option>
                <option value="Desarrollo de programación">Desarrollo de programación</option>
                <option value="Diseño">Diseño</option>
                <option value="Diseño gráfico">Diseño gráfico</option>
                <option value="Editorial">Editorial</option>
                <option value="Educación">Educación</option>
                <option value="Electrónica de consumo">Electrónica de consumo</option>
                <option value="Eléctrica">Eléctrica</option>
                <option value="Energía renovable y medio ambiente">Energía renovable y medio ambiente</option>
                <option value="Entretenimiento">Entretenimiento</option>
                <option value="Equipos informáticos">Equipos informáticos</option>
                <option value="Fotografía">Fotografía</option>
                <option value="Gestión de inversiones">Gestión de inversiones</option>
                <option value="Gran consumo y alimentación">Gran consumo y alimentación</option>
                <option value="Hostelería y restaurantes">Hostelería y restaurantes</option>
                <option value="Importación y exportación">Importación y exportación</option>
                <option value="Imprenta">Imprenta</option>
                <option value="Industria farmaceútica">Industria farmaceútica</option>
                <option value="Industria química">Industria química</option>
                <option value="Industria textil y moda">Industria textil y moda</option>
                <option value="Infraestructuras">Infraestructuras</option>
                <option value="Ingeniería">Ingeniería</option>
                <option value="Instalaciones y servicios recreativos">Instalaciones y servicios recreativos</option>
                <option value="Internet">Internet</option>
                <option value="Investigación">Investigación</option>
                <option value="Investigación de mercado">Investigación de mercado</option>
                <option value="Logística">Logística</option>
                <option value="Maquinaria">Maquinaria</option>
                <option value="Marketing y publicidad">Marketing y publicidad</option>
                <option value="Material y equipo de negocios">Material y equipo de negocios</option>
                <option value="Medicina alternativa">Medicina alternativa</option>
                <option value="Medios de comunicación offline">Medios de comunicación offline</option>
                <option value="Medios de comunicación online">Medios de comunicación online</option>
                <option value="Mercados de capital">Mercados de capital</option>
                <option value="Minería y metalurgia">Minería y metalurgia</option>
                <option value="Museos e instituciones">Museos e instituciones</option>
                <option value="Música">Música</option>
                <option value="Naval">Naval</option>
                <option value="ONG y servicios sociales">ONG y servicios sociales</option>
                <option value="Petróleo y energía">Petróleo y energía</option>
                <option value="Plástico, papel y madera">Plástico, papel y madera</option>
                <option value="Producción multimedia">Producción multimedia</option>
                <option value="Programas informáticos">Programas informáticos</option>
                <option value="Protección civil">Protección civil</option>
                <option value="Publicidad, RRPP y eventos">Publicidad, RRPP y eventos</option>
                <option value="Seguros">Seguros</option>
                <option value="Servicios de RRHH">Servicios de RRHH</option>
                <option value="Servicios de asesoría y auditoría">Servicios de asesoría y auditoría</option>
                <option value="Servicios de seguridad">Servicios de seguridad</option>
                <option value="Servicios financieros">Servicios financieros</option>
                <option value="Servicios jurídicos">Servicios jurídicos</option>
                <option value="Servicios medioambientales">Servicios medioambientales</option>
                <option value="Servicios y tecnología de la información">Servicios y tecnología de la información</option>
                <option value="Supply Chain">Supply Chain</option>
                <option value="Tabacalera">Tabacalera</option>
                <option value="Telecomunicaciones">Telecomunicaciones</option>
                <option value="Telemarketing">Telemarketing</option>
                <option value="Traducción">Traducción</option>
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