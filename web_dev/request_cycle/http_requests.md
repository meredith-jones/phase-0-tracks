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