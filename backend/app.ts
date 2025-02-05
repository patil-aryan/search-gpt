// import express from 'express';
import http from 'http';
import express from 'express';
const app = express();
const server = http.createServer(app);

app.get('/api', (req, res) => {
  res.send('Hello World!');
});


server.listen(3000, () => {
  console.log('Server is running on http://localhost:3000');
});
