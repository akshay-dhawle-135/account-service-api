const express = require('express');
const app = express();
const port = 8000;

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.get('/api', (req, res) => {
  console.log("test")
  res.json({ message: 'This is an API endpoint' });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
