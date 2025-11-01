const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.json({ status: 'ok', message: 'CI/CD sample app' });
});

app.listen(port, () => {
  console.log(`App listening on port ${port}`);
});

module.exports = app;
