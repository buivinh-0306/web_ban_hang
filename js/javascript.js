// var array = document.querySelectorAll('#sync1 .Wrapper__showGroup')
// for(var i = 0; i < array.length; i++){
//     array[i].style.width = '1226px' 
// }
// document.querySelector('.Wrapper__showGroup').style.width = 1226*array.length+'px'
// var widthcarousel = document.querySelector('.Wrapper__showGroup').offsetWidth
// var carousel = document.querySelector('.Wrapper__showGroup')
// var style = window.getComputedStyle(carousel);
// var matrix = new WebKitCSSMatrix(style.webkitTransform)
// function clickable(){
//     document.querySelector('slide__btn').classList.add('active')
// }
// function clickdisable(){
//     document.querySelector("slide__btn").classList.remove('active')
// }
// document.querySelector('#sildeshow__btn-next').addEventListener('click',next)
// function next(){
//     matrix.m41-=1226 
//     if((-matrix.m41)>=widthcarousel){
//         matrix.m41 = 0
//         document.querySelector('.Wrapper__showGroup').style.transition = "all 800ms ease 0s"
//         document.querySelector('.Wrapper__showGroup').style.transform = 'translate3d('+matrix.m41+'px, 0, 0)'
//     }else{
//         document.querySelector('.Wrapper__showGroup').style.transition = "all 500ms ease 0s"
// 		document.querySelector('.Wrapper__showGroup').style.transform = 'translate3d('+matrix.m41+'px, 0, 0)'
//     }
// }
// document.querySelector('#sildeshow__btn-next').addEventListener('click',prev)
// function prev(){
// 	if ((matrix.m41)==0) {
// 		matrix.m41 = -widthcarousel +1226
// 		document.querySelector('.Wrapper__showGroup').style.transition = "all 800ms ease 0s"
// 		document.querySelector('.Wrapper__showGroup').style.transform = 'translate3d('+matrix.m41+'px, 0, 0)'
// 	}else{
// 		matrix.m41+=790
// 		document.querySelector('.Wrapper__showGroup').style.transition = "all 500ms ease 0s"
// 		document.querySelector('.Wrapper__showGroup').style.transform = 'translate3d('+matrix.m41+'px, 0, 0)'
// 	}
// }
// var auto = setInterval(next,5000)
