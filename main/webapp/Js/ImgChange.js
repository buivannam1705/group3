let myIndex = 0;
let sliders = document.getElementsByClassName('mySlider');

function carousel() {
    for (let i = 0; i < sliders.length; i++) {
        sliders[i].style.display = "none";
    }
    sliders[myIndex].style.display = "block";
    myIndex++;
    if (myIndex === sliders.length) {
        myIndex = 0;
    }
}
setInterval(carousel, 3000)