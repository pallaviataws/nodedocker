'use strict';

const express = require('express');

var app = express();

const PORT = 3000;
const HOST = '0.0.0.0';

app.get('/', function(req, res){
    res.send('Hello from inside a container!');
});

app.listen(PORT, HOST);

console.log(`Running on http://${HOST}:${PORT}`);