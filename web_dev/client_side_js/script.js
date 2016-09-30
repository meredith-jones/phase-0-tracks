// var el = document.getElementById("photos");
// el.style.border = "5px solid pink";

var pig = document.getElementById("pig");
var sheep = document.getElementById("sheep");
var coyote = document.getElementById("coyote");

pig.hidden = true;
sheep.hidden = true;
coyote.hidden = true;

function show_pig(){
  pig.hidden = false;
  };
function show_sheep(){
  sheep.hidden = false;
  };
function show_coyote(){
  coyote.hidden = false;
  };

var pig_button = document.getElementById("1");
var sheep_button = document.getElementById("2");
var coyote_button = document.getElementById("3");

pig_button.addEventListener("click", show_pig);
sheep_button.addEventListener("click", show_sheep);
coyote_button.addEventListener("click", show_coyote);

