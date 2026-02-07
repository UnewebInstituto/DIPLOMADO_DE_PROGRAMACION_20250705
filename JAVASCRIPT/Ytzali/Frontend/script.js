// frontend/script.js
document.getElementById('contactoForm').addEventListener('submit', async (e) => {
    e.preventDefault();

    const datos = {
        nombres: document.getElementById('nombres').value,
        apellidos: document.getElementById('apellidos').value,
        telefono_habitacion: document.getElementById('tel_hab').value,
        telefono_trabajo: document.getElementById('tel_trab').value,
        telefono_celular: document.getElementById('tel_cel').value,
        correo_electronico: document.getElementById('correo').value
    };

    try {
        const respuesta = await fetch('http://localhost:3002/api/contactos', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(datos)
        });

        const resultado = await respuesta.json();
        const mensajeDiv = document.getElementById('mensaje');

        if (respuesta.ok) {
            mensajeDiv.innerHTML = `<div class="alert alert-success">${resultado.message}</div>`;
            document.getElementById('contactoForm').reset();
        } else {
            mensajeDiv.innerHTML = `<div class="alert alert-danger">Error: ${resultado.error}</div>`;
        }
    } catch (error) {
        console.error('Error al conectar con el servidor:', error);
    }
});