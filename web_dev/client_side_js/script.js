console.log ("testing")

document.getElementById("luke").addEventListener("mouseover", mouseOver);
document.getElementById("luke").addEventListener("mouseout", mouseOut);

function mouseOver() {
    document.getElementById("luke").style.color = "red";
}

function mouseOut() {
    document.getElementById("luke").style.color = "black";
}