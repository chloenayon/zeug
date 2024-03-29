const express = require('express');
const app = express()
const port = 8080

app.use(express.static('public'))

app.get('/', function (req, res) {
    res.sendFile('index.html')
})

app.get('/login', function (req, res) {
    res.sendFile(__dirname + '/public/login.html')
})

app.get('/explore', function (req, res) {
    res.sendFile(__dirname + '/public/explore.html')
})

app.listen(port)