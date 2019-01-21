$(function() {
  function buildHTML(input_point, price, point) {
    if(input_point > price){
      html = `<div class="btn-default btn-red">
                それ以上のポイントは使用できません。
              </div>`
    } else if(input_point > point) {
      html = `<div class="btn-default btn-red">
                ポイントが不足しています。
              </div>`
    } else if(input_point <= $(this).data('point') || input_point <= price) {
      html = `<button class="btn-default btn-red", type="submit">
                <div class="buy-botton">購入する</div>
              </button>`
    }
    return html
  }

  $("#point").on("keyup", function(e) {
    e.preventDefault()
    var price = Number($(".buy-product-price-hidden").text())
    var input_point = Number($(this).val())
    var point = Number($(this).data('point'))
    var usable_point = point - input_point
    var sell_price = price - input_point
    $(".buy-price-cell-fix").text("")
    $(".buy-price-cell-fix").text(sell_price)
    $(".point").text("")
    $(".point").text(usable_point)
    $(".btn-default").remove()
    html = buildHTML(input_point, price, point)
    $(".button-wrapper").append(html)

    if(sell_price < 0 && usable_point < 0) {
      $(".buy-price-cell-fix").text("")
      $(".buy-price-cell-fix").text("0")
      $(".point").text("")
      $(".point").text("0")
      $(".btn-default").remove()
    }
  });
});
