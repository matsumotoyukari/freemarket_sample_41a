$(document).ready(function(){
  $('.owl-stage-product').slick({
    autoplay: false,
    Speed: 2000,
    arrows: false,
    dots:true,
    dotsClass: 'owl-dots',
    customPaging: function(slick,index) {
        // スライダーのインデックス番号に対応した画像のsrcを取得

        var targetImage = slick.$slides.eq(index).find('img').attr('src');
        // slick-dots > li　の中に上記で取得した画像を設定
        return '<img src=" ' + targetImage + ' "/>';
    }
  });

  $('.owl-dots li').on('mouseover', function(e) {
    var $currTarget = $(e.currentTarget),
    index = $('.owl-dots li').index(this);
    slickObj = $('.owl-stage-product').slick('getSlick');
    slickObj.slickGoTo(index);    // アニメーション中でも切り替える

    })


});


