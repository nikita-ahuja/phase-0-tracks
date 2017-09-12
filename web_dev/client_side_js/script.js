function addGreenBorder() {
  event.target.style.border = "2px solid green";
}

var photo = document.getElementById("icecream");
photo.addEventListener("click", addGreenBorder);