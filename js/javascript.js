


var array = document.querySelectorAll('.Wrapper__item')
for(var i = 0; i < array.length; i++){
    array[i].style.width = '194px' 
}
document.querySelector('.slide__carousel__WrapperOut__Wrapper').style.width = 5796+'px'//194*array.length
var widthcarousel = document.querySelector('.slide__carousel__WrapperOut__Wrapper').offsetWidth
var carousel = document.querySelector('.slide__carousel__WrapperOut__Wrapper')
var style = window.getComputedStyle(carousel);
var matrix = new WebKitCSSMatrix(style.webkitTransform)
function clickable(){
    document.querySelector('.control__buttons') .classList.add('.active')
}
function clickdisable(){
    document.querySelector(".control__buttons") .classList.remove('.active')
}
document.querySelector('#control__button--next').addEventListener('click',next)
var width = document.querySelector('.slide__carousel').clientWidth
// console.log(width);

function next(){
    matrix.m41-=width
    if((-matrix.m41)>=width)//widthcarousel
    {
        matrix.m41 -= -width;
        document.querySelector('.slide__carousel__WrapperOut__Wrapper').style.transition = "all 800ms ease 0s"
        document.querySelector('.slide__carousel__WrapperOut__Wrapper').style.transform = 'translate3d('+matrix.m41+'px, 0, 0)'
        
    }else{
        document.querySelector('.slide__carousel__WrapperOut__Wrapper').style.transition = "all 500ms ease 0s"
		document.querySelector('.slide__carousel__WrapperOut__Wrapper').style.transform = 'translate3d('+matrix.m41+'px, 0, 0)'
    }
}
document.querySelector('#control__button--prev').addEventListener('click',prev)
function prev(){
	if ((matrix.m41)==0) {
		matrix.m41 = -width
		document.querySelector('.slide__carousel__WrapperOut__Wrapper').style.transition = "all 800ms ease 0s"
		document.querySelector('.slide__carousel__WrapperOut__Wrapper').style.transform = 'translate3d('+matrix.m41+'px, 0, 0)'
	}else{
		matrix.m41+=width
		document.querySelector('.slide__carousel__WrapperOut__Wrapper').style.transition = "all 500ms ease 0s"
		document.querySelector('.slide__carousel__WrapperOut__Wrapper').style.transform = 'translate3d('+matrix.m41+'px, 0, 0)'
	}
}
var auto = setInterval(next,10000)
