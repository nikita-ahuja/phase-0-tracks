function addBorder() {
  event.target.style.border = "4px dashed black";
}

photos = document.getElementsByTagName("img");
var photo0 = photos[0]
var photo1 = photos[1]
var photo2 = photos[2]

//var photo = document.getElementById("icecream");
photo0.addEventListener("click", addBorder);
photo1.addEventListener("click", addBorder);
photo2.addEventListener("click", addBorder);

function biggerText() {
  event.target.style.fontSize = "40px";
}

var headings = document.getElementsByTagName("h1");

var heading0 = headings[0]
heading0.addEventListener("click", biggerText);

var heading1 = headings[1]
heading1.addEventListener("click", biggerText);

var heading2 = headings[2]
heading2.addEventListener("click", biggerText);


//document.getElementById("sadpizza").innerHTML="<img src = happypizza.jpg"/>";