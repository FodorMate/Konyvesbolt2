const express = require('express');
const app = express();
const cors = require('cors');
app.use(cors());
const path = require('path');
app.use(express.static(path.join(__dirname, 'public')));
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

const mysql = require('mysql');
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'konyvesbolt2'
});

connection.connect();


app.get('/vasarlo/:id', function (req, res) {
    let sql = 'SELECT * FROM `vasarlo` where vasarloid = ' + req.params.id;
    connection.query(sql, function (err, rows) {
        res.send(rows);
    })
    console.log(req.params)
})

app.post('/vasarlo/', function (req, res) {
    let sql = 'INSERT INTO vasarlo (vasarloid, nev, email_cim, felhasznalonev, jelszo) VALUES (?, ?, ?, ?, ?)';
    let values = [req.body.vasarloid, req.body.nev, req.body.email_cim, req.body. felhasznalonev, req.body.jelszo];
    connection.query(sql, values, function (err, rows) {
        if (err) {
            console.log(err);
            res.status(500).send('Internal Server Error');
        } else {
            res.send(rows);
        }
    })
    console.log(req.body)
})

app.put('/vasarlo/:id', function (req, res) {
    let sql = 'UPDATE vasarlo SET nev = ?, email_cim = ?, felhasznalonev = ?, jelszo = ? WHERE vasarloid = ?';
    let values = [req.body.nev, req.body.email_cim, req.body.felhasznalonev, req.body.jelszo, req.body.vasarloid];
    connection.query(sql, values, function (err, rows) {
        if (err) {
            console.log(err);
            res.status(500).send('Internal Server Error');
        } else {
            res.send(rows);
        }
    })
    console.log(req.body)
})

app.get('/vasarloAll', function (req, res) {
    let sql = 'SELECT * FROM `vasarlo`';
    connection.query(sql, function (err, rows) {
        res.send(rows);
    })
    console.log('Összes adat')
})

app.delete('/vasarlo/:id', function (req, res) {
    let sql = 'DELETE FROM `vasarlo` where vasarloid = ' + req.params.id;
    connection.query(sql, function (err, rows) {
        res.send(rows);
    })
    console.log(req.params)
})

app.listen(3000, () => {
    console.log('listening on port 3000');
});
