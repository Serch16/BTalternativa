<!-- Estás en... -->
<ul class="breadcrumb">
    Estás en:
    <li><a href="jsp?ob=registro&op=alumno">Registro</a> <span class="divider">/</span></li>
    <li class="active">Alumnos</li>
</ul>           <!-- // Estás en... -->
<div class="row-fluid">
    <div class="span4"><img src="img/registroalumnos.png"></div>
    <div class="span5">
        <form class="form-horizontal" action="mailto:sergio_spiky@hotmail.com" method="POST">
            <fieldset>
                <legend>Datos de acceso</legend>
                <div class="control-group">
                    <label class="control-label" for="inputNombre">Nombre:</label>
                    <div class="controls">
                        <input type="text" id="inputNombre" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputApe1">Primer Apellido:</label>
                    <div class="controls">
                        <input type="text" id="inputApe1" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputApe2">Segundo Apellido:</label>
                    <div class="controls">
                        <input type="text" id="inputApe2" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputMail1">E-mail:</label>
                    <div class="controls">
                        <input type="text" id="inputMail1" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputMail2">Repite tu E-mail:</label>
                    <div class="controls">
                        <input type="text" id="inputMail2" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputContrasenya1">Crea tu contraseña:</label>
                    <div class="controls">
                        <input type="password" id="inputContrasenya1" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputContrasenya2">Repite la contraseña:</label>
                    <div class="controls">
                        <input type="password" id="inputContrasenya2" placeholder="">
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Datos personales</legend>
                <div class="control-group">
                    <label class="control-label" for="inputFechanto">Fecha nacimiento:</label>
                    <div class="controls">
                        <input type="text" id="inputFechanto" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputPaisnto">País nacimiento:</label>
                    <div class="controls">
                        <input type="text" id="inputDomicilio" placeholder="">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="inputNif">NIF:</label>
                    <div class="controls">
                        <input type="text" id="inputNif" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputFechanto">Género:</label>
                    <div class="controls">
                        <label class="radio inline">
                            <input type="radio" name="optionsRadios" id="optionsGenero1" value="Hombre" checked>
                            Hombre
                        </label>
                        <label class="radio inline">
                            <input type="radio" name="optionsRadios" id="optionsGenero2" value="Mujer">
                            Mujer
                        </label>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputDomicilio">Domicilio:</label>
                    <div class="controls">
                        <input type="text" id="inputDomicilio" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputCpostal">Código postal:</label>
                    <div class="controls">
                        <input type="text" id="inputCpostal" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputLocalidad">Localidad:</label>
                    <div class="controls">
                        <input type="text" id="inputLocalidad" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputProvincia">Provincia:</label>
                    <div class="controls">
                        <input type="text" id="inputProvincia" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputTelefono">Teléfono:</label>
                    <div class="controls">
                        <input type="text" id="inputTelefono" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputMovil">Móvil:</label>
                    <div class="controls">
                        <input type="text" id="inputMovil" placeholder="">
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Datos académicos</legend>
                <div class="control-group">
                    <label class="control-label" for="inputNumexp">Número expediente:</label>
                    <div class="controls">
                        <input type="text" id="inputNumexp" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputFamilia">Familia profesional:</label>
                    <div class="controls">
                        <select>
                            <option value="Administración">Administración</option>
                            <option value="Comercio">Comercio</option>
                            <option value="Informática">Informática</option>
                            <option value="Sanidad">Sanidad</option>
                        </select>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="inputCiclo">Ciclo formativo:</label>
                    <div class="controls">
                        <select>
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
                        <label class="checkbox">
                            <input type="checkbox"> He leído y acepto los
                            <a>Términos y condiciones de uso de la página web</a> y la <a>Política de privacidad</a>.
                        </label>
                        <br/>
                        <button type="submit" class="btn" value="send">Crear mi cuenta</button>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
    <div class="span3"></div>
</div>