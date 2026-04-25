<?php
    include './encabezado.php';
?>
<div class="text-center">
    <h2>Agregar Usuarios</h2>
    <a class='text-blue-600 font-medium hover:text-blue-800 underline-offset-4 hover:underline transition-all duration-200' href="./">Ir al inicio</a>
</div>
<form action="./validar.php" method="POST">
  <div>
    <div>
        <label for="nombre_apellido" class="block mb-2 text-sm font-medium text-gray-900" >Nombre y Apellido</label>
        <input type="text" id="nombre_apellido" name="nombre_apellido" class="bg-slate-50 border border-slate-300 text-slate-900 text-sm rounded-lg focus:ring-indigo-500 focus:border-indigo-500 block w-full p-2.5 transition-shadow" required>
    </div>
  </div>

  <div>
    <div>
        <label for="cedula" class="block mb-2 text-sm font-medium text-gray-900" >Cédula de identidad</label>
        <input type="text" id="cedula" name="cedula" class="bg-slate-50 border border-slate-300 text-slate-900 text-sm rounded-lg focus:ring-indigo-500 focus:border-indigo-500 block w-full p-2.5 transition-shadow" required>
    </div>
  </div>

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

            <button class="px-6 py-2.5 bg-blue-600 text-white font-medium text-sm leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out" type="submit">Enviar</button>
            <button class="px-6 py-2.5 bg-yellow-600 text-white font-medium text-sm leading-tight uppercase rounded shadow-md hover:bg-yellow-700 hover:shadow-lg focus:bg-yellow-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-yellow-800 active:shadow-lg transition duration-150 ease-in-out" type="reset">Limpiar</button>
            <input type="hidden" name="id" value="2">
        </div>
    </div>
   </div>
</form>

<?php
  if ($_SESSION['tipo_usuario'] == 'Administrador') {
?>
<br>
<hr>
<br>
<div class="text-center">
    <h2>Agregar Productos</h2>
    <a class='text-blue-600 font-medium hover:text-blue-800 underline-offset-4 hover:underline transition-all duration-200' href="./">Ir al inicio</a>
</div>
<!--
https://developer.mozilla.org/es/docs/Web/HTML/Reference/Elements/form
Condiciones:
1) method="POST"
2) Hay algún <input> con atributo type="file"
  -->
<form action="./validar.php" method="POST" enctype="multipart/form-data">
  <div>
    <div>
        <label for="imagen" class="block mb-2 text-sm font-medium text-gray-900" >Imagen</label>
        <input type="file" id="imagen" name="imagen" class="bg-slate-50 border border-slate-300 text-slate-900 text-sm rounded-lg focus:ring-indigo-500 focus:border-indigo-500 block w-full p-2.5 transition-shadow" required>
    </div>
  </div>

  <div>
    <div>
        <label for="nombre" class="block mb-2 text-sm font-medium text-gray-900" >Nombre</label>
        <input type="text" id="nombre" name="nombre" class="bg-slate-50 border border-slate-300 text-slate-900 text-sm rounded-lg focus:ring-indigo-500 focus:border-indigo-500 block w-full p-2.5 transition-shadow" required>
    </div>
  </div>

  <div>
    <div>
        <label for="precio" class="block mb-2 text-sm font-medium text-gray-900" >Precio</label>
        <input type="number" id="precio" name="precio" min="0" step="0.01" class="bg-slate-50 border border-slate-300 text-slate-900 text-sm rounded-lg focus:ring-indigo-500 focus:border-indigo-500 block w-full p-2.5 transition-shadow" required>
    </div>
  </div>

  <div>
    <div>
        <label for="cantidad" class="block mb-2 text-sm font-medium text-gray-900" >Cantidad</label>
        <input type="number" id="cantidad" name="cantidad" min="1" class="bg-slate-50 border border-slate-300 text-slate-900 text-sm rounded-lg focus:ring-indigo-500 focus:border-indigo-500 block w-full p-2.5 transition-shadow" required>
    </div>
  </div>

  <div>
    <div>
        <label for="descripcion" class="block mt-2 mb-2 text-sm font-medium text-gray-900">Descripción</label>
        <textarea name="descripcion" id="descripcion" rows="5" class="bg-slate-50 border border-slate-300 text-slate-900 text-sm rounded-lg focus:ring-indigo-500 focus:border-indigo-500 block w-full p-2.5 transition-shadow" required style="resize:none"></textarea>
        <div class="text-center">
            <button class="px-6 py-2.5 bg-blue-600 text-white font-medium text-sm leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out" type="submit">Enviar</button>
            <button class="px-6 py-2.5 bg-yellow-600 text-white font-medium text-sm leading-tight uppercase rounded shadow-md hover:bg-yellow-700 hover:shadow-lg focus:bg-yellow-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-yellow-800 active:shadow-lg transition duration-150 ease-in-out" type="reset">Limpiar</button>
            <input type="hidden" name="id" value="3">
        </div>
    </div>
   </div>
</form>

<?php
  }
?>

<?php
    include './pie.php';
?>