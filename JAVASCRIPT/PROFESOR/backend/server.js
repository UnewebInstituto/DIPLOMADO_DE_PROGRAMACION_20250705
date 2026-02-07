// backend/server.js
const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
require('dotenv').config();

const app = express();
app.use(cors());
app.use(express.json());

// Conexión a la base de datos
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',      // Cambia según tu configuración
    password: '',      // Cambia según tu configuración
    database: 'agenda_profesor'
});

db.connect(err => {
    if (err) throw err;
    console.log('✅ Conectado a la base de datos MySQL');
});

// Ruta para guardar un contacto
app.post('/api/contactos', (req, res) => {
    const { nombres, apellidos, telefono_habitacion, telefono_trabajo, telefono_celular, correo_electronico } = req.body;
    const query = `INSERT INTO contactos (nombres, apellidos, telefono_habitacion, telefono_trabajo, telefono_celular, correo_electronico) 
                   VALUES (?, ?, ?, ?, ?, ?)`;
    
    db.query(query, [nombres, apellidos, telefono_habitacion, telefono_trabajo, telefono_celular, correo_electronico], (err, result) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.status(201).json({ message: 'Contacto guardado con éxito', id: result.insertId });
    });
});

const PORT = 3000;
app.listen(PORT, () => console.log(`🚀 Backend de Agenda corriendo en http://localhost:${PORT}`));