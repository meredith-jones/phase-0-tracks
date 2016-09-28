## Plan for learning jquery:
* Find a couple good websites for learning
* Take 30 minutes to read or watch a tutorial, and try to implement something small.
* Continue watching or reading, 30 minutes at a time, while taking notes. Break when you can find something to implement.
* Can I possibly implement the jquery on my personal hiking website?

* Resources that look good:
  - http://www.w3schools.com/jquery/
  - https://learn.jquery.com/
  - https://en.wikipedia.org/wiki/JQuery
  - https://frontendmasters.com/learningjquery/femasters/jQuery-1.6-Cheatsheet.pdf
  - http://makeawebsitehub.com/jquery-mega-cheat-sheet/

* jQuery is a javascript library
* Simplifies web development tasks, using concise, easy to read syntax
* Uses CSS syntax for common operations
* Designed to work on sets of elements
* Concise code via statement chaining

  $("document").ready(function(){
    $("#content").append("<p>The page just loaded.</p>")
  })

  * In the above case:
    - we are calling the jQuery library, which is referenced by the $
    - using the "document" keyword, which means we are going to perform an operation on the page itself
    - The 'ready' function sets up an event listener for when the dom structure of the page is ready to be operated on.
    - Callback function is passed to ready function, and contains function that will be fired when 'ready' event is triggered.
        - keyword 'content' indicates that we want to perform an operation on the element in the page that has an id of 'content'.
        - append function appends a piece of content to the tag that we passed to the jQuery function
        - the content being appended is the <p> tag and the message within the <p> tag.

## Changing and Creating page content:

* Selectors are used to select parts of the web page using a common CSS-style syntax. Can select based on tag name, id attribute, class name, a combo of those, or wildcard '*'

* Filters are used to further refine the results returned from selectors.
    -:first, :last to select first and last instance of a type.
    - :even, :odd
    - :gt() greater than :lt() less than, :eq() equal to
    - :animated (currently in the process of being animated)
    - :focus (target element that currently has the focus)
    - :not(exp) targets elements that don't match given expression

* Prepend function: take this content and insert it in front of the selector.

* HTML function: insert new HTML into element

* Text function: take whatever string you give it, and convert it into escaped text content. (Will be inserted as plain text.)

## Event Handling:
* Two basic functions to attach and detach events.
  - 'on' function starts listening for event. Attaches one or more event handler(s) for the selected elements.
  - 'off' function stops listening for event

## One way to include jQuery in your page:
```
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
```
## Basic jQuery syntax:
```
$(selector).action()
```
* Selectors are used to 'find' HTML elements based on their name, id, classes, etc. They start with $()
* More info on selectors at http://www.w3schools.com/jquery/jquery_selectors.asp
* Events: all the user's actions that a web page can respond to
* Looks like:
```
$("p").click(function(){
  // action goes here!!
});
```
* Examples of events are 'click', 'mouseenter,' 'hover', 'focus'
* Can also 'hide', 'show', 'toggle', 'fade', 'slide' elements
* 'Animate' method lets you custom animate your selector.

## Document Ready Event:

* Keeps jQuery code from running before the document is finished loading.

* Looks like:

```
$(document).ready(function(){

   // jQuery methods go here...

});
```