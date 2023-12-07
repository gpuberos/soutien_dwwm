let btn = document.querySelector('.burger');
let navbar = document.querySelector('.navbar');

btn.addEventListener('click', () => {
    navbar.classList.toggle('active');
})