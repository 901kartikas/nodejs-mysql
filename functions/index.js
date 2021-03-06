const path = require('path');
const express = require('express');
const ejs = require('ejs');
const bodyParser = require('body-parser');
const multer = require('multer');
const app = require('express')();
const mysql = require('mysql');
const fs = require("fs");
const server = require('http').createServer(app);
const io = require('socket.io')(server);
// const session = require('express-session');

var urlencodedParser = bodyParser.urlencoded({
    extended: false
})

// create db connection
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'portofolio'
});

const DIR = './public/uploads';
connection.connect();
global.db = connection;

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(bodyParser.json());
var urlencodedParser = bodyParser.urlencoded({
  extended: false
})

app.use("/", express.static('./public'));
app.use((req, res, next) => {
    res.io = io
    next()
  });
   
  const handleError = (err, res) => {
    res
      .status(500)
      .contentType("text/plain")
      .end("Oops! Something went wrong!");
  };
  
  const upload = multer({
    dest: "/path/to/temporary/directory/to/store/uploaded/files"
  
    // you might also want to set some limits: https://github.com/expressjs/multer#limits
  });

// exports.app = functions.https.onRequest(app);


app.get('/', (request, respond) => {
    let sql = "SELECT * FROM  edit,gambar";
    let query = connection.query(sql, (err, results) => {
        if (err) throw err;
        var string = JSON.stringify(results);
        var signnum = JSON.parse(string);
        // console.log(sql)
        respond.render('index', {
            value: signnum
        });
     });
});

//mengirim pesan 
app.post('/kirim', urlencodedParser, (req, res) => {
    let sql = "INSERT INTO pesan (nama, email, subject, isipesan) VALUES ('" + req.body.nama + "', '" + req.body.email + "', '"+req.body.subject+"', '"+req.body.isipesan+"' )";
    console.log(sql);
    let query = connection.query(sql, (err, results) => {
        if (err) throw err;
        var string = JSON.stringify(results);
        var signnum = JSON.parse(string);
        res.redirect('index', {
            value: signnum

        });
    
    });
});

//menampilkan pesan terkirim
app.get('/mail', (request, respond) => {
    let sql = "SELECT * FROM  pesan";
    let query = connection.query(sql, (err, results) => {
        if (err) throw err;
        var string = JSON.stringify(results);
        var signnum = JSON.parse(string);
      
        respond.render('mail', {
            value: signnum
        });
      
    });
});



// Delete pesan
app.post("/delete/:id", urlencodedParser, (req, res) => {
    let sqltext = "DELETE FROM pesan WHERE id = " + req.params.id;
    console.log(sqltext);
    let query = connection.query(sqltext, (err, results) => {
        if (err) throw err;
         console.log(sqltext);
        res.redirect('/mail');
    });
});


//show edit
 app.get('/edit', (request, respond) => {
     let sql = "SELECT * FROM  edit";
         let query = connection.query(sql, (err, results) => {
             if (err) throw err;
             var string = JSON.stringify(results);
             var signnum = JSON.parse(string);
             console.log(sql)
             respond.render('dasboard', {
             value: signnum
       });
 
     });
});

//update edit
app.post('/update', urlencodedParser, (request, respond) => {
    let sqltext = "UPDATE edit SET edit_nama='" + request.body.edit_nama + "', edit_desc='" + request.body.edit_desc + "', edit_gb='" + request.body.edit_gb + "' WHERE id_edit=" + request.body.id_edit;
    console.log(sqltext);
    let query = connection.query(sqltext, (err, results) => {
        respond.redirect('/edit');

    });
});


//=======================================================================================================
//edit gambar


// //nampilin data gambar
app.get('/editgb',(request, respond) => {
    let sql = "SELECT * FROM  gambar";
    let query = connection.query(sql, (err, results) => {
        if (err) throw err;
        var string = JSON.stringify(results);
        var signnum = JSON.parse(string);
        respond.render('editgb', {
            value: signnum
        })
    });
});

var file = "file:///";
app.post('/updategb', upload.single("gambar"), (request, respond) => {
    const tempPath = request.file.path;
    const targetPath = "D:\\\\GitHub\\\\nodejs-mysql\\\\functions\\\\public\\\\uploads\\\\" + request.file.originalname;

    fs.rename(tempPath, targetPath, err => {
      //     if (err) return handleError(err, res);
    });
    
    let sqltext = "UPDATE gambar SET nama_gb='" + request.body.nama_gb +
        "', link_gb='" + targetPath +
        "' WHERE id_gb=" + request.body.id_gb;
    console.log(sqltext);
    let query = connection.query(sqltext, (err, results) => {
        respond.redirect('editgb');

    });
    }

);



app.post("/deletegb/:id_gb", urlencodedParser, (req, res) => {
    let sqltext = "DELETE FROM gambar WHERE id_gb = " + req.params.id_gb;
    console.log(sqltext);
    let query = connection.query(sqltext, (err, results) => {
        if (err) throw err;
         console.log(sqltext);
        res.redirect('/editgb');
    });
});




server.listen(3000, function() {
     console.log('*localhost:3000');
 });
