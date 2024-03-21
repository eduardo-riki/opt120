const express = require("express");
const app = express();
const port = 3000;
var mysql = require("mysql")

var con = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root"
});

con.connect(function(err) {
    if (err) throw err;
    
    con.query("use Teste", function (err, result) {
        if (err) throw err;
    });

    con.query("select * from Usuario", function (err, result) {
        if (err) throw err;
        console.log(JSON.stringify(result));
    });

    con.query("select * from Atividade", function (err, result) {
        if (err) throw err;
        console.log(JSON.stringify(result));
    });

    con.query("select * from Usuario_Atividade", function (err, result) {
        if (err) throw err;
        console.log(JSON.stringify(result));
    });
});

app.use(express.json());
app.use(
  express.urlencoded({
    extended: true,
  })
);

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});