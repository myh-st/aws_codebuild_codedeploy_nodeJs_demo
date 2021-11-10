const express = require('express')
const app = express()
const port = process.env.PORT || 4000 ;
const config = require('config')
console.log(config);

app.get('/', (req, res) => {
  res.send('GITHUB CICD EKS')
})

app.get('/status', (req, res) => {
    res.send('ok')
  })


app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
