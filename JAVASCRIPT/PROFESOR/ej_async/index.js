
/**
 * Declaración de funciones
 */
function obtenerDatosDeUsuario(){
    return new Promise((resolve)=>{
        setTimeout(()=>{
            resolve({id:101,nombre:'Alice',email:'alice@ejemplo.com'});
        },5000);
    });
}

async function mostrarDatos(){
    console.log('1.) Iniciando obtención de los datos');

    //'await' pausa esta función hasta
    // que la 'Promesa' se resuelva
    // (después de 5s)
    const datos = await obtenerDatosDeUsuario();

    console.log('2.) Datos obtenidos satisfactoriamente');

    console.log('3.) Usuario:', datos.nombre);
}

/**
 * Cuerpo principal del programa
 */
mostrarDatos();