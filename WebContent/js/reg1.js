$(document).ready(function() {
    $('select').material_select();
  });
$('#reg').click(function(){
    $('form').each(function(){
        $(this).submit();
    });
});