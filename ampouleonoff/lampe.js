window.onload = ini;

function ini() {
    document.getElementById("allumer").style.display = "none";
    document.getElementById("eteindre").style.display = "none";
}
// fonction d'allumage
function on() {
    document.getElementById("allumer").style.display = "block";
    document.getElementById("eteindre").style.display = "none";
}
// fonction qui éteint
function off() {
    document.getElementById("eteindre").style.display = "block";
    document.getElementById("allumer").style.display = "none";
}