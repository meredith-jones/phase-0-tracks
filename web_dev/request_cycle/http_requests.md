Notes from the video:
* Viewing HTTP requests: inspect element, and go to 'Network.'
* Status code 200 means everything could be processed without problems.
* 404 is not found (page not there, or something)
* Type lists what type of document was sent
* Click on a request to get more info on it. We care about the headers (key/value pairs). If you click 'view source' you'll see something that is less pretty:
-The request line
  *First you have method (GET is common)
  * Next you  have a resource (could be '/' which means home page)
  * Then you have HTTP version
-The host
-Accept: what are we willing to accept from the web server
-User agent: tells the web server about my machine and operating system
-Cookie: it is sent as a header with every http request that is sent from your browser

The response:
- code 200 says everything was processed fine
- Request headers: important to understand GET method with path.

1. What are some common HTTP status codes?
  - 400: Bad request - The request couldn't be understood by the server - syntax wasn't correct.
  - 404: Not found - means that the requested resource is no longer available, or just not found (maybe due to a url typo).
  - 403: Forbidden - means that the user is not on the list of machines that is able to access the site. The owner would need to change permissions to fix this.
  - 500: Internal server error - general catch-all server-side error.
  - 503: Service Unavailable - the web server isn't available. Web server could be overloaded, or down for maintenance.
  - 200: OK - Means request has succeeded.
  - 300: Multiple Choices - The requested resource has different choices and cannot be resolved into one.
  - 301: Permanently moved

2. What is the difference between a GET request and a POST request?
  - GET requests data from a specified resource
    * they can be cached
    * remain in browser history
    * can be bookmarked
    * shouldn't be used when dealing with sensitive data
    * have length restrictions
    * only used to retrieve data
  - POST submits data to be processed to a specified resource.
    * never cached
    * do not remain in the browser history
    * cannot be bookmarked
    * no restrictions on data length

3. What is a cookie? How does it relate to HTTP requests?
  - A cookie is a small piece of data sent from a website and stored in the user's web browser while the user is borwsing.
    * Used to remember information about user activity
    * Remember what the user entered in the site
    * Can last only while user is on website, or can persist for an extended period of time (so as to keep the user logged in)
    * The web server sends an HTTP header called "Set-Cookie" in order to specify a cookie to be stored. So, it can be said that cookies are in place via HTTP requests.
