///////ADD BORDER FUNCTION AND APPLICATION//////////////

function addBorder() {
  event.target.style.border = "4px dashed black";
}

photos = document.getElementsByTagName("img");
var photo0 = photos[0]
var photo1 = photos[1]
var photo2 = photos[2]

photo0.addEventListener("click", addBorder);
photo1.addEventListener("click", addBorder);
photo2.addEventListener("click", addBorder);

///////BIGGER TEXT FUNCTION AND APPLICATION//////////////

function biggerText() {
  event.target.style.fontSize = "40px";
}

var headings = document.getElementsByTagName("h1");

var heading0 = headings[0]
heading0.addEventListener("mouseover", biggerText);

var heading1 = headings[1]
heading1.addEventListener("mouseover", biggerText);

var heading2 = headings[2]
heading2.addEventListener("mouseover", biggerText);

function sadToHappy() {
  document.getElementById("sadpizza").src="happypizza.jpg";
}

photo1.addEventListener("click", sadToHappy);

// var new_photo = document.createElement("img");
// img.src = "happypizza.jpg";
// var src = document.getElementById("happypizza");

// src.appendChild(new_photo);


// ADD HAPPY PIZZA FUNCTION //


//document.getElementById("sadpizza").innerHTML="<img src = happypizza.jpg"/>";