import * as http from "http";

const port = process.env.PORT || 8080;

const server = http.createServer((req: http.IncomingMessage, res: http.ServerResponse) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end("Hello from Azure App Service via ACR token demo!\n");
});

server.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
