///* main menubar effect start /////////////////////////////////////////////////////////*/
//
//window.addEventListener("scroll", function(){
//	var header = document.querySelector("header");
//	header.classList.toggle("sticky", window.scrollY > 0);
//});
//
///* main menubar effect end /////////////////////////////////////////////////////////*/

/* signin form effect start /////////////////////////////////////////////////////////*/

const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});

/* signin form effect end /////////////////////////////////////////////////////////*/

/* parallax scroll effect start /////////////////////////////////////////////////////////*/

let moon = document.getElementById("moon");
let mountain = document.getElementById("mountain");
let road = document.getElementById("road");
let mainText = document.getElementById("mainText");

window.addEventListener('scroll', function(){
	var value = window.scrollY;
	
	moon.style.left = -value * 0.25 + 'px';
	mountain.style.top = -value * 0.1 + 'px';
	road.style.top = value * 0.05 + 'px';
	mainText.style.top = value * 0.05 + 'px';
});

/* parallax scroll effect end /////////////////////////////////////////////////////////*/

/* image blur and button effect start /////////////////////////////////////////////////////////*/

$(document).ready(function(){
	$('.content a').click(function(){
		return false;
	});
	$('#popup a').click(function(){
		return false
	});
});

function toggle(){
	var blur = document.getElementById('blur');
	blur.classList.toggle('active')
	var popup = document.getElementById('popup');
	popup.classList.toggle('active');
}

/* image blur and button effect end /////////////////////////////////////////////////////////*/