/* login fail alert start /////////////////////////////////////////////////////////*/

function init(id){
	if(id){
		alert("회원정보가 없거나 틀렸습니다.");
		$("#fid").val(id);
	}
}

/* login fail alert end /////////////////////////////////////////////////////////*/

/* signin form effect start /////////////////////////////////////////////////////////*/

const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const signinbox = document.getElementById('signinbox');

signUpButton.addEventListener('click', () => {
	signinbox.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	signinbox.classList.remove("right-panel-active");
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
	mainText.style.top = value * 0.1 + 'px';
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
