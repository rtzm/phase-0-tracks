What are some common HTTP status codes?

- 200 - OK, successfully received webpage and content.
- 201 - Successfully POSTed or PUT to the server.
- 204 - Successful request and response, but response has no content.
- 304 - The request was received but the server hasn't had a change since the last time this request was sent, so redirected to the content from that last time.
- 400 - Request received, but it was a badly written request, incorrect syntax, etc.
- 401 - Request received, but user not authorized to access this content, authentication token missing.
- 403 - Request received, but user can't access this information because the server refused. No authentication token is possible to allow access.
- 404 - Request received, but nothing found at the URI given by the user.
- 500 - Server is unable to complete the request do to some error thrown on the server-side.

What is the difference between a GET request and a POST request? When might each be used?

GET requests are sent to servers when the user wants to retrieve data from that server. This would be used to pull in content from a webpage that doesn't need data from the user, like a front page.

POST sends data to the server for it to be stored in the server, like pushing it into a data structure. This would be used when the webpage pushes information up to the server, like saving a blogpost.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is a snippet of data that is sent in the header of an HTTP request and stored away by the browser. These are kind of like instance variables that store the state of the user's browser and its relationship to the server between request methods (which are like objects' methods).