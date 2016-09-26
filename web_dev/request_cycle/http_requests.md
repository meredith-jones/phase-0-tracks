##Common HTTP status codes
  - **400:** *Bad request* - The request couldn't be understood by the server - syntax wasn't correct.
  - **404:** *Not found* - means that the requested resource is no longer available, or just not found (maybe due to a url typo).
  - **403:** *Forbidden* - means that the user is not on the list of machines that is able to access the site. The owner would need to change permissions to fix this.
  - **500:** *Internal server error* - general catch-all server-side error.
  - **503:** *Service Unavailable* - the web server isn't available. Web server could be overloaded, or down for maintenance.
  - **200:** *OK* - Means request has succeeded.
  - **300:** *Multiple Choices* - The requested resource has different choices and cannot be resolved into one.
  - **301:** *Permanently moved*

##Difference between a GET request and a POST request
  - **GET** requests data from a specified resource:
    * they can be cached
    * remain in browser history
    * can be bookmarked
    * shouldn't be used when dealing with sensitive data
    * have length restrictions
    * only used to retrieve data
  - **POST** submits data to be processed to a specified resource.
    * never cached
    * do not remain in the browser history
    * cannot be bookmarked
    * no restrictions on data length

##Cookies & how they relate to HTTP requests
  - A cookie is a small piece of data sent from a website and stored in the user's web browser while the user is browsing.
    * Used to remember information about user activity
    * Remember what the user entered in the site
    * Can last only while user is on website, or can persist for an extended period of time (so as to keep the user logged in)
    * The web server sends an HTTP header called "Set-Cookie" in order to specify a cookie to be stored. So, it can be said that cookies are in place via HTTP requests.



