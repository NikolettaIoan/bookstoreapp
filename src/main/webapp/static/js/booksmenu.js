$(document).ready(function () {
  $('#searchSelect').on('click', function (e) {
    e.preventDefault();
    $('.search').removeClass('hidden');
    $('.insert').addClass('hidden');
    $('#searchSelect').children('h2').css({
      opacity: '1',
    });
    $('#insertSelect').children('h2').css({
      opacity: '0.2',
    });
  });
  $('#insertSelect').on('click', function (e) {
    e.preventDefault();
    $('.search').addClass('hidden');
    $('.insert').removeClass('hidden');
    $('.link-box').addClass('hidden');
    $('#searchSelect').children('h2').css({
      opacity: '0.2',
    });
    $('#insertSelect').children('h2').css({
      opacity: '1',
    });
  });
});
