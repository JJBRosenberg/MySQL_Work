
//Includes necessary api
var express = require('express');
var mysql = require('mysql');
var app = express();
 

//open up the server
var connection = mysql.createConnection({
host : 'localhost',
user : 'root',
database : 'join_us'
});



//if the user adds /random_number after url a random number between 1 to 10 will appear;
app.get("/random_num", function(req, res){
 var num = Math.floor((Math.random() * 10) + 1);
 res.send("Your lucky number is " + num);
});
 



//if the user joins the server sucessfully it will show the number of users currently registered in a database
app.get("/", function(req, res){
 var q = 'SELECT COUNT(*) as count FROM users';
 connection.query(q, function (error, results) {
 if (error) throw error;
 var msg = "We have " + results[0].count + " users";
 res.send(msg);
 });
});


//app is listening for input
app.listen(3000, function () {
 console.log('App listening on port 3000!');
});


//another way to display users count
var q = 'SELECT * FROM users ';
connection.query(q, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

connection.end();