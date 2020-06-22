// const sliderImage = document.querySelectorAll(".slider__image");
// const slider = document .querySelector(".slider");
// const nextbtn = document.querySelector(".next");
// const prevbtn = document.querySelector(".prev");
// const slider__dots = document.querySelector(".slider__dots");

// let numberOfImages = sliderImage.length;
// let slideWidth = sliderImage[0].clientWidth;
// let currentSline = 0;

// //set up slider
// function init(){

//     /*

//         sliderImage[0] = 0;
//         sliderImage[1] = 100%;
//         sliderImage[2] = 200%;

//     */
//     sliderImage.forEach((img, i) => {
//         img.style.left = i * 100 + "%";
       
//     });
//     sliderImage[0].classList.add(".active");
    
//     createSlider__dots();
// }

// init();


// // create slider dots


// function createSlider__dots(){
//     for (let i = 0; i < numberOfImages; i++){
//         const dot = document.createElement("div");
//         dot.classList.add("single--dot");
//         slider__dots.appendChild(dot);

//         dot.addEventListener("click", ()=>{
//             gotoSlide(i);
//         });
//     }
//     slider__dots.children[0].classList.add("active");
// }


// //next Button
// nextbtn.addEventListener("click",() => {
//     if(currentSline >= numberOfImages -1){
//         gotoSlide(0);
//         return;
//     }
//     currentSline++;
//     gotoSlide(currentSline);
// });

// //prev Button
// prevbtn.addEventListener("click",() => {
//     if(currentSline <= 0){
//         gotoSlide(numberOfImages - 1);
//         return;
//     }
//     currentSline--;
//     gotoSlide(currentSline);
// });


// // go to Slide
// function gotoSlide(slideNumber){
//     slider.getElementsByClassName.transform = 
//     "translateX(-" + slideWidth * slideNumber + "px";

//     currentSline = slideNumber;

//     setActiveClass();
// }
// // set active class

// function setActiveClass(){
//     // set active class for slide image

//     let currentAtive = document.querySelector(".slider__image.active");
//     currentAtive.classList.remove("active");
//     sliderImage[currentSline].classList.add("active");

//     // set active class for slider dots

//     let currentDot = document.querySelector(".single--dot.active");
//     currentDot.classList.remove("active");
//     slider__dots.children[currentSline].classList.add("active");
// }










var slideIndex =1;
showSlides(slideIndex);




// next/pre controls
var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("slider__image");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}

var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}
  slides[slideIndex-1].style.display = "block";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
