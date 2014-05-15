<!-- Estás en... -->
<ul class="breadcrumb">
    Estás en:
    <li><a href="jsp?ob=registro&op=alumno">Registro</a> <span class="divider">/</span></li>
    <li class="active">Alumnos</li>
</ul>           <!-- // Estás en... -->
<div class="row-fluid">
    <div class="span4"><img src="img/alumnos.jpg"></div>
    <div class="span8">
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
                        <input type="text" id="inputFamilia" placeholder="">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="inputCiclo">Ciclo formativo:</label>
                    <div class="controls">
                        <input type="text" id="inputCiclo" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox">
                            <input type="checkbox"> He leído y acepto las <a>Reglas de uso</a>.
                        </label>
                        <br/>
                        <button type="submit" class="btn" value="send">Crear mi cuenta</button>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>