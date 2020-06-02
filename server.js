const http = require('http');

const SERVER_PORT = process.env['SERVER_PORT'] || 8080;

//create a server object:
http.createServer(function (req, res) {
  console.log(`Saying hello to ${req.connection.remoteAddress}`);
  res.write("Hello World!\n"); //write a response to the client
  res.end(); //end the response
}).listen(SERVER_PORT);

console.log(`Listening on ${SERVER_PORT}.`);
