What are some common HTTP status codes?
200 OK: Standard success response
400: Bad request, server cannot recognize process
404: The request was not found
510: request not implemented

What is the difference between a GET request and a POST request? When might each be used?
A GET request, requests data from a specified resource, while a POST request Submits data to be processed to a specified resource. GET promotes URI addressability so, designers should adopt it for safe operations such as simple queries. POST is appropriate for other types of applications where a user request has the potential to change the state of the resource (or of related resources


Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
  Cookies are small units of data that are saved into a computer from a browser, so that it could later be used to remember stateful information, like what is in a shopping cart.
  In terms of HTTP, there are certain types of cookies that cannot be accessed by client-side APIs, like Javascript.
