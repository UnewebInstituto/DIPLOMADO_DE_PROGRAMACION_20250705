<?php
    include './encabezado.php';
?>
<div class="text-center">
    <h2>Validar Usuario</h2>
    <a class='text-blue-600 font-medium hover:text-blue-800 underline-offset-4 hover:underline transition-all duration-200' href="./">Ir al inicio</a>
</div>
<form action="./validar.php" method="POST">
  <div>
    <div>
        <label for="correo_electronico" class="block mb-2 text-sm font-medium text-gray-900" >Correo electrónico</label>
        <input type="email" id="correo_electronico" aria-describedby="emailHelp" name="correo_electronico" class="bg-slate-50 border border-slate-300 text-slate-900 text-sm rounded-lg focus:ring-indigo-500 focus:border-indigo-500 block w-full p-2.5 transition-shadow" required>
        <div class="text-xs" id="emailHelp">No vamos a compartir tu correo electrónico.</div>
    </div>
  </div>
  <div>
    <div>
        <label for="clave" class="block mt-2 mb-2 text-sm font-medium text-gray-900">Clave secreta</label>
        <input type="password" id="exampleInputPassword1" name="clave" class="bg-slate-50 border border-slate-300 text-slate-900 text-sm rounded-lg focus:ring-indigo-500 focus:border-indigo-500 block w-full p-2.5 transition-shadow" required>
        <div class="text-center">
            <a class='text-blue-600 font-medium hover:text-blue-800 underline-offset-4 hover:underline transition-all duration-200' href="./menu.php">Usuario no registrado</a><br>

            <button class="px-6 py-2.5 bg-blue-600 text-white font-medium text-sm leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out" type="submit">Enviar</button>
            <button class="px-6 py-2.5 bg-yellow-600 text-white font-medium text-sm leading-tight uppercase rounded shadow-md hover:bg-yellow-700 hover:shadow-lg focus:bg-yellow-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-yellow-800 active:shadow-lg transition duration-150 ease-in-out" type="reset">Limpiar</button>
            <input type="hidden" name="id" value="1">
        </div>
    </div>
   </div>
</form>
<?php
    include './pie.php';
?>