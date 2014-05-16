<div class="span12">
    <form id="loginForm" action="jsp" class="form-horizontal" method="post">
        <legend>Formulario de entrada al sistema</legend>
        <input type="hidden" name="ob" value="usuario" />
        <input type="hidden" name="op" value="login02" />
        <div class="control-group">
            <label class="control-label" for="inputLogin">Usuario:</label>
            <div class="controls">
                <input type="text" id="inputLogin" autofocus="autofocus" placeholder="correo electrónico" name="login">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="inputPassword">Contraseña:</label>
            <div class="controls">
                <input type="password" id="inputPassword" placeholder="" name="password">
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <button id="entrarBTN" type="submit" class="btn">Acceder</button>
            </div>
        </div>
    </form>
</div>