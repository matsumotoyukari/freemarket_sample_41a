$(function(){
  $(".category-list").hover(function() {

    $(".pc-header-nav-parent").show();

  }, function() {

    $(".pc-header-nav-parent").hide();

  });


  // 親カテゴリー
  $(".pc-header-nav-parent-wrap").hover(function() {

    $(".pc-header-nav-parent").show();

  }, function() {

    $(".pc-header-nav-parent").hide();

  });

  // 子カテゴリー
  $(".pc-header-nav-parent").hover(function() {

    $(this).children("ul").children("li").show();

  }, function() {

    $(this).children("ul").children("li").hide();

  });

  // 孫カテゴリー
  $(".pc-header-nav-child").hover(function() {

    $(this).children("ul").children("li").show();

  }, function() {

    $(this).children("ul").children("li").hide();

  });

});
