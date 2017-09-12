What are some common HTTP status codes?
200 OK
300 Multiple Choices
-The requested resource has different choices and cannot be resolved into one. The user should choose one of them.

301 Moved Permanently
-The URL of the requested resource has been changed. THe new URL would probably be given in this response.

302 Found
- The requested resource resides temporarily under a different URL. Continue to use this URL to make the request since the redirection might be altered.

304 Not Modified
- When you make an HTTP request, the server normally returns code 200 OK. If you set If-Modified-Since, the server may return 304 Not modified (and the response will not have the content). This is supposed to be your cue that the page has not been modified.

307 Temporary Redirect

400 Bad Request

401 Unauthorized

403 Forbidden

404 Not Found

410 Gone

500 Internal Server Error

501 Not Implemented

503 Service Unavailable

550 Permission Denied

3XX denotes redirection
4XX are real error
5XX are server errors


What is the difference between a GET request and a POST request? When might each be used?

These are the 2 most commonly used HTTP methods: GET and POST.

GET Request: This method requests data from a specified resource. This means "retrieve whatever information is identified by the Request-URL."

The query string is isent IN THE URL of the GET request:
/test/demo_form.php?name1=value1&name2=value2

Notes on GET requests:
-GET requests can be cached
-GET requests remain in the browser history
-GET requests can be bookmarked
-GET requests should never be used when dealing with sensitive data
-GET requests have length restrictions
-GET requests should be used only to retrieve data

When is GET used?
-When you want to GET or retrieve the information in the requested link.

POST Request: This submits data to be processed to a specified resource. It requests that the server ACCEPT the entity enclosed in the request.

When is Post Used?

You can use it in the case when you are posting a message to a bulletin board, newsgroup, mailing list, etc. You want the server to accept the information you are sending to it.

The query string is sent in the HTTP MESSAGE BODY of a POST request.

POST /test/demo_form.php HTTP/1.1
Host: w3schools.com
name1=value1&name2=value2

Notes on POST requests:

-POST requests are never cached
-POST requests do not remain in the browser history
-POST requests cannot be bookmarked
-POST requests have no restrictions on data length


A get request is different from a post request because a get requests will get the requested information from the server, whereas the post request will allow the user to add subordinate information to a URL if the server accepts.


What is a cookie? How does it relate to HTTP requests?

A cookie is a small piece of data the server sends to the user's web browser (i.e. the server sends info back to Chrome). Typically, it's used to tell it 2 requests ame from the SAME browser - keeping a user logged - in, for example. The browser might store this data that it was sent and then send it back with the net requests showing - hey, it's still the same person, and I'm proving it by showing you that I have the information you just sent me as proof.




