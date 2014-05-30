<!-- Estás en... -->
<ul class="breadcrumb">
    <li>Estás en:</li>
    <li><a href="jsp">B.T. CIPFP Ausiàs March</a><span class="divider">/</span></li>
    <li><a href="jsp?ob=registro&op=al·um·no">Registro</a><span class="divider">/</span></li>
    <li class="active">Empresas</li>
    <li class="pull-right"><a href="jsp?ob=registro&op=al·um·no">Soy un alumno</a></li>
</ul>           <!-- // Estás en... -->
<div class="row-fluid">
    <div class="span4"><img src="img/registroempresas.png" class="center-block" alt="Registro de empresas"></div>
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
                <legend>Datos empresa</legend>
                <div class="control-group">
                    <label class="control-label" for="inputCif">CIF:</label>
                    <div class="controls">
                        <input type="text" id="inputCif" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputDireccion">Dirección:</label>
                    <div class="controls">
                        <input type="text" id="inputDireccion" placeholder="">
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
                    <label class="control-label" for="inputWeb">Web:</label>
                    <div class="controls">
                        <input type="text" id="inputWeb" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputSector">Sector:</label>
                    <div class="controls">
                        <select>
                            <option value="Sector primario">Sector primario</option>
                            <option value="Sector secundario">Sector secundario</option>
                            <option value="Sector terciario">Sector terciario</option>
                        </select>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Persona de contacto</legend>
                <div class="control-group">
                    <label class="control-label" for="inputPersconta">Nombre:</label>
                    <div class="controls">
                        <input type="text" id="inputPersconta" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputTelefono">Teléfono:</label>
                    <div class="controls">
                        <input type="text" id="inputTelefono" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputOtrotelf">Otro teléfono:</label>
                    <div class="controls">
                        <input type="text" id="inputOtrotelf" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox">
                            <input type="checkbox"> He leído y acepto los
                            <a href="jsp?ob=usuario&amp;op=terminos">Términos y condiciones de uso de la página web</a> y la <a href="jsp?ob=usuario&amp;op=cookies">Política de cookies</a>.
                        </label>
                        <br/>
                        <button type="submit" class="btn" value="send">Crear mi cuenta</button>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
    <div class="span3 hidden-phone"><img src="img/banner2.png"></div>
</div>