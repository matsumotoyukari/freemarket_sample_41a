$(function(){
  function separate(num){
    return String(num).replace( /(\d)(?=(\d\d\d)+(?!\d))/g, '$1,');
  }

  $(".input-price").on("keyup", function(){
    var price = parseInt($(this).val());

    if(300 <= price && price < 10000000){
      $(".default-price").hide();
      var commission = Math.floor(price * 0.1),
      gain = Math.ceil(price - commission);
      $(".default-commission").text("¥" + separate(commission)).show();
      $(".default-gain").text("¥" + separate(gain)).show();
    } else {
      $(".default-price").text("-");
      $(".default-price").show();
    }
  });
});
