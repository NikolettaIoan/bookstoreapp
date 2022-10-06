$(document).ready(function () {
  $('#backToLogin').on('click', function (e) {
    e.preventDefault();
    $('#loginForm').removeClass('hidden');
    $('.link-box').removeClass('hidden');
    $('#registerForm').addClass('hidden');
    
  });
  $('#register').on('click', function (e) {
    e.preventDefault();
    $('#loginForm').addClass('hidden');
    $('#registerForm').removeClass('hidden');
    $('.link-box').addClass('hidden');
  });
});
