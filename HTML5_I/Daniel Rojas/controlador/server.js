// server.js
const http = require('http');
const formidable = require('formidable'); // Para analizar datos de formularios, especialmente subidas de archivos
const fs = require('fs');
const path = require('path');

const PORT = 3004;
const DATA_FILE = path.join(__dirname, 'formData.txt'); // Archivo para almacenar los datos del formulario

const server = http.createServer((req, res) => {
    if (req.url === '/' && req.method.toLowerCase() === 'post') {
        const form = formidable({ multiples: true });

        form.parse(req, (err, fields, files) => {
            if (err) {
                console.error('Error al analizar el formulario:', err);
                res.writeHead(500, { 'Content-Type': 'text/plain' });
                res.end('Error al analizar los datos del formulario.');
                return;
            }

            let dataToStore = '--- Envío de Formulario ---\n';

            // Anexar campos de texto
            for (const key in fields) {
                if (Object.hasOwnProperty.call(fields, key)) {
                    // formidable devuelve arrays para campos con múltiples valores (como casillas de verificación)
                    const value = Array.isArray(fields[key]) ? fields[key].join(', ') : fields[key];
                    dataToStore += `${key}: ${value}\n`;
                }
            }

            // Manejar cargas de archivos
            for (const key in files) {
                if (Object.hasOwnProperty.call(files, key)) {
                    const file = files[key][0]; // formidable devuelve un array de archivos para cada nombre de campo
                    dataToStore += `${key} (Nombre del archivo): ${file.originalFilename}\n`;
                    dataToStore += `${key} (Tipo de archivo): ${file.mimetype}\n`;
                    dataToStore += `${key} (Tamaño del archivo): ${file.size} bytes\n`;

                    // Opcionalmente, guardar el archivo subido
                    const oldPath = file.filepath;
                    const newPath = path.join(__dirname, 'uploads', file.originalFilename);

                    // Crear el directorio 'uploads' si no existe
                    if (!fs.existsSync(path.join(__dirname, 'uploads'))) {
                        fs.mkdirSync(path.join(__dirname, 'uploads'));
                    }

                    fs.rename(oldPath, newPath, (err) => {
                        if (err) {
                            console.error('Error al mover el archivo subido:', err);
                        } else {
                            console.log(`Archivo subido y movido a: ${newPath}`);
                        }
                    });
                }
            }
            dataToStore += '-----------------------\n\n';

            // Anexar datos al archivo
            fs.appendFile(DATA_FILE, dataToStore, (err) => {
                if (err) {
                    console.error('Error al escribir en el archivo:', err);
                    res.writeHead(500, { 'Content-Type': 'text/plain' });
                    res.end('Error al guardar los datos del formulario.');
                    return;
                }
                console.log('Datos del formulario guardados exitosamente en', DATA_FILE);
                res.writeHead(200, { 'Content-Type': 'text/html' });
                res.end('<h1>¡Formulario Recibido Exitosamente!</h1><p>Los datos han sido almacenados.</p>');
            });
        });
    } else if (req.url === '/' && req.method.toLowerCase() === 'get') {
        // Servir el formulario HTML
        fs.readFile('ejemplo05.html', (err, data) => {
            if (err) {
                res.writeHead(404, { 'Content-Type': 'text/plain' });
                res.end('404 No Encontrado');
                return;
            }
            res.writeHead(200, { 'Content-Type': 'text/html' });
            res.end(data);
        });
    } else {
        res.writeHead(404, { 'Content-Type': 'text/plain' });
        res.end('404 No Encontrado');
    }
});

server.listen(PORT, () => {
    console.log(`Servidor ejecutándose en http://localhost:${PORT}`);
    console.log(`Los datos del formulario se almacenarán en: ${DATA_FILE}`);
});