'use strict';

const express = require('express');


var app = express();

const PORT = 3000;
const HOST = '0.0.0.0';
var massive = require("massive");

var connectOptions = {
  host: 'testdb.c0kcx8o2cvb2.us-east-1.rds.amazonaws.com',
      port: 5432,
  database: 'dhirajdb',
  user: 'dhiraj',
  password: 'flatno402'
};

class DbClient {
    
    connectDatabase(options){
    return massive(connectOptions);	
    }
    connectDB(req){
        async (req) =>{
            return  req.app.get('db').test.find({name:'M'});
        }
    }

}
async function connectMyDb(db){
   return  db.test.find({name:'M'});
}


(async () =>{
    var dbclient = new DbClient();
    const db = await dbclient.connectDatabase(connectOptions);
    app.set('db',db);
 
})();

   app.get('/', (req, res) => {
    
        (async() =>{
            var result = await  req.app.get('db').test.find({name:'M'});
            res.json(result);
        })();
    })


    app.listen(PORT, HOST);

    console.log(`Running on http://${HOST}:${PORT}`);
/* 
Option 2
const connect = async ()=>{

return await massive(connectOptions)
}

connect().then(db => {
app.set('db',db);
app.get('/', function(req, res){
    res.send('Hello from inside a container!');
});

app.listen(PORT, HOST);

console.log(`Running on http://${HOST}:${PORT}`);
})

*/

/*
// option 1
massive({
  host: 'testdb.c0kcx8o2cvb2.us-east-1.rds.amazonaws.com',
  port: 5432,
  database: 'dhirajdb',
  user: 'dhiraj',
  password: 'flatno402'
}).then(db => {
app.set('db',db);
app.get('/', function(req, res){
    res.send('Hello from inside a container!');
});


app.listen(PORT, HOST);

console.log(`Running on http://${HOST}:${PORT}`);
});

*/

