$(function(){
  function addCommaPrice(num){
    return String(num).replace( /(\d)(?=(\d\d\d)+(?!\d))/g, '$1,');
  }

  if(!$(".input-price").val() == ""){
    var editPrice = parseInt($(".input-price").val());
    $(".default-price").hide();
    var editCommission = Math.floor(editPrice * 0.1),
    editGain = Math.ceil(editPrice - editCommission);
    $(".default-commission").text("¥" + addCommaPrice(editCommission)).show();
    $(".default-gain").text("¥" + addCommaPrice(editGain)).show();
  }

  $(".input-price").on("keyup", function(){
    var price = parseInt($(this).val());
    if(300 <= price && price < 10000000){
      $(".default-price").hide();
      var commission = Math.floor(price * 0.1),
      gain = Math.ceil(price - commission);
      $(".default-commission").text("¥" + addCommaPrice(commission)).show();
      $(".default-gain").text("¥" + addCommaPrice(gain)).show();
    } else {
      $(".default-price").text("-");
      $(".default-price").show();
    }
  });
});
