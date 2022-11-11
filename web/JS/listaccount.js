let navbar = document.querySelector('.header .navbar');
let accountBox = document.querySelector('.header .account-box');

$(document).ready( function () {
    $('#table_id').DataTable();
} );

window.$ = window.jquery = require('./node_modules/jquery');
window.dt = require('./node_modules/datatables.net')();
window.$('#table_id').DataTable();

document.querySelector('#menu-btn').onclick = () =>{
   navbar.classList.toggle('active');
   accountBox.classList.remove('active');
}

document.querySelector('#user-btn').onclick = () =>{
   accountBox.classList.toggle('active');
   navbar.classList.remove('active');
}

window.onscroll = () =>{
   navbar.classList.remove('active');
   accountBox.classList.remove('active');
}

document.querySelector('#close-update').onclick = () =>{
   document.querySelector('.edit-product-form').style.display = 'none';
   window.location.href = 'admin_products.php';
}



