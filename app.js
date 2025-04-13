// Import express
const express = require('express');

// Create an app
const app = express();

// Set the port
const PORT = 3000;

// Define a route
app.get('/', (req, res) => {
  res.send('Hello World from Dockerized App!');
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});