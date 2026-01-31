function obtenerDatosDeUsuario(){
    return new Promise((resolve)=>{
        setTimeout(()=>{
            resolve({id:101, nombre:'alice', email:'alice@gmail.com'});
        },2000);
    });
}

async function mostrarDatos(){
    console.log('1. inicializando la obtencion de datos');

    const datos = await obtenerDatosDeUsuario();
        obtenerDatosDeUsuario();

        console.log('2. Datos odtenidos satisfactoriamente');
        console.log('3. Usuario:' ,datos.nombre); 
    
}

mostrarDatos();