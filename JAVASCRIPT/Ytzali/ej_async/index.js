/**
 * Declaración de funciones
 */

function obtenerDatosDeUsuario(){
  return new Promise((resolve)=>{
    setTimeout(()=>{
      resolve({id:101,nombre: 'Alice', email: 'alice@ejemplo.com'});
    },5000);
  });

}

async function mostrarDatos() {
  console.log('1.Iniciando obtencion de datos');
  
  //'await' pausa esta funcion hasta que la 'promesa' se resuelva (despues de 2s)
  const datos = await obtenerDatosDeUsuario();

  console.log('2. Datos obtenidos sastifactoriamente:');

  console.log('3. Usuario:', datos.nombre);
}

/**
 * Cuerpo principal del programa
 */
mostrarDatos();



