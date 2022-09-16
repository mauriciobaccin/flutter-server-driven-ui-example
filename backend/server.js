const express = require('express')
const app = express()
const port = 3000

app.use(express.json())

app.get('/', (req, res) => {
  console.log('Requesting data...')
  res.send([
    {'type': 'SizedBox', 'height': 20.0},
    {'type': 'FlutterLogo', 'size': 80.0},
    {'type': 'SizedBox', 'height': 30.0},
    {'type': 'TextField', 'hint': 'Name', 'obscure': false},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'TextField', 'hint': 'Email', 'obscure': false},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'TextField', 'hint': 'Confirm Email', 'obscure': false},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'TextField', 'hint': 'Password', 'obscure': true},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'TextField', 'hint': 'Confirm Password', 'obscure': true},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'MaterialButton', 'hint': 'SignUp NOW!'},
  ])
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})