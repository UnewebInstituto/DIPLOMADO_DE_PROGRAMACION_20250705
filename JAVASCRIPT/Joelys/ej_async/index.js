function obtenerDatosDeUsuario(){
    return new Promise((resolve)=>{
        setTimeout(()=>{
            resolve({id:101,nombre:'Alice',email:'alice@ejemplo.com'});
        },5000);
    });
}
async function mostrarDatos() {
  console.log('1.Iniciando obtencion de datos...');

  const datos = await obtenerDatosDeUsuario();

  console.log('2. Datos obtenidos satisfactoriamente.');
  console.log('3. Usuario:',datos.nombre);
}

mostrarDatos();