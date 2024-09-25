# Docker GraphiQL HTML

This project demonstrates how to serve an HTML file using Docker and Nginx, with the ability to inject environment variables into the HTML/JavaScript at runtime.

## Features

- Serves a static HTML file using Nginx
- Injects environment variables into the HTML file at container start
- Lightweight Alpine-based image

## Prerequisites

- Docker

## Usage

1. Build the Docker image:

   ```bash
   docker build -t graphiql .
   ```

2. Run the container with your desired environment variables:

   ```
   docker run -d -p 8080:80 -e API_URL=https://api.example.com -e API_KEY=your_api_key graphiql
   ```

3. Access the HTML page at `http://localhost:8080`

## Customization

- Modify `index.html` to change the content of the web page
- Add or remove environment variables in the `index.html` file and when running the container
