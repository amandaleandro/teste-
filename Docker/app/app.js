const express = require('express');
const app = express();
const port = 3000;

app.listen(port);
console.log(`Teste executando em http://localhost:${port}`);

app.get('/', (req, res) => {
  const name = process.env.NAME || 'Amanda';
  res.send(`Olá ${name}!`);
});
