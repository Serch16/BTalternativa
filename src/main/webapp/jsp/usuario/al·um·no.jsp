<!-- Est�s en... -->
<ul class="breadcrumb">
    Est�s en:
    <li><a href="jsp?ob=registro&op=alumno">Registro</a> <span class="divider">/</span></li>
    <li class="active">Alumnos</li>
</ul>           <!-- // Est�s en... -->
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
                    <label class="control-label" for="inputContrasenya1">Crea tu contrase�a:</label>
                    <div class="controls">
                        <input type="password" id="inputContrasenya1" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputContrasenya2">Repite la contrase�a:</label>
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
                    <label class="control-label" for="inputPaisnto">Pa�s nacimiento:</label>
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
                    <label class="control-label" for="inputFechanto">G�nero:</label>
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
                    <label class="control-label" for="inputCpostal">C�digo postal:</label>
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
                    <label class="control-label" for="inputTelefono">Tel�fono:</label>
                    <div class="controls">
                        <input type="text" id="inputTelefono" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputMovil">M�vil:</label>
                    <div class="controls">
                        <input type="text" id="inputMovil" placeholder="">
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Datos acad�micos</legend>
                <div class="control-group">
                    <label class="control-label" for="inputNumexp">N�mero expediente:</label>
                    <div class="controls">
                        <input type="text" id="inputNumexp" placeholder="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputFamilia">Familia profesional:</label>
                    <div class="controls">
                        <select>
                            <option value="Administraci�n">Administraci�n</option>
                            <option value="Comercio">Comercio</option>
                            <option value="Inform�tica">Inform�tica</option>
                            <option value="Sanidad">Sanidad</option>
                        </select>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="inputCiclo">Ciclo formativo:</label>
                    <div class="controls">
                        <select>
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
                        <label class="checkbox">
                            <input type="checkbox"> He le�do y acepto los
                            <a>T�rminos y condiciones de uso de la p�gina web</a> y la <a>Pol�tica de privacidad</a>.
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