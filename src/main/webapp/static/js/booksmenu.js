$(document).ready(function () {
  $('#searchSelect').on('click', function (e) {
    e.preventDefault();
    $('.search').removeClass('hidden');

    $('.insert').addClass('hidden');
  });
  $('#insertSelect').on('click', function (e) {
    e.preventDefault();
    $('.search').addClass('hidden');
    $('.insert').removeClass('hidden');
    $('.link-box').addClass('hidden');
  });
});
