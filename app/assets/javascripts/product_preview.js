$(function() {
  $("#product_product_images_attributes_1_image").parent().hide();
  $("#product_product_images_attributes_2_image").parent().hide();
  $("#product_product_images_attributes_3_image").parent().hide();

  // 画像選択エリアに番号を付与
  $(".sell-upload-drop-box").each(function(i){
    $(this).addClass("have-item" + (i + 1));
  });

  // 幅変換
  function widthEdit() {
    $(".preview").each(function(index){
      var count = $("li").find("img").length;
      var partsWidth = count * 160;
      $(".sell-upload-drop-box").width(540 - partsWidth);
    });
  }

  // プレビュー画像の数を取得
  function imgCount() {
    return $(".img-list").length;
  }

  // ファイルに値があるかチェックして値を持っていない選択エリアを表示
  function inputCheck(){
    $(".sell-upload-drop-box").each(function(){
      fileCheck = $(this).find(".file").val().length;
      if(fileCheck == 0){
        $(this).show();
      }
    });
  }

  // 画像選択エリアに値があるかを調べて、なければその画像選択エリアを返す。
  function inputCheckA(){
    var fileA = $(".have-item1").find(".file").val().length;
    var fileB = $(".have-item2").find(".file").val().length;
    var fileC = $(".have-item3").find(".file").val().length;
    var fileD = $(".have-item4").find(".file").val().length;
    if(fileA == 0){
      var fileShowA = $(".have-item1");
      return fileShowA;
    }
    if(fileB == 0){
      var fileShowB = $(".have-item2");
      return fileShowB;
    }
    if(fileC == 0){
      var fileShowC = $(".have-item3");
      return fileShowC;
    }
    if(fileD == 0){
      var fileShowD = $(".have-item4");
      return fileShowD;
    }
  }


  // 商品画像１
  $("#product_product_images_attributes_0_image").on("change", function(){
    var fileProp = $(this).prop("files")[0],
    fileReader = new FileReader(),
    previewBox = $(".preview"),
    fileField = $(this).parent(),
    previewList = '<li class="img-list img-list0"><figure class="img-list-figure"><img alt="" class="img0"></figure><div class="sell-upload-button"><a href="" class="img-edit">変更</a><a href="" id="delete" class="delete0">削除</a></div></li>';

    previewBox.append(previewList);
    fileField.hide();

  // プレビュー画像の数を取得
    var num = imgCount();
  // プレビュー画像の数が３つ以下であれば値の入っていない画像選択エリアを表示し、他の画像選択エリアは見えなくする。
    if(num < 4){
      inputCheckA().siblings(".sell-upload-drop-box").hide();
      inputCheckA().show();
    }

  // ファイルに値があるかチェックして値を持っていない選択エリアを表示（３つの場合
    if(num == 3){
      inputCheck();
    }

// ファイルの読み込みが完了したら読み込んだファイルの情報を与え、削除したときにこの画像選択エリアを表示し、この画像選択エリア以外は表示しない。
    fileReader.onload = function() {
      previewBox.find(".img0").attr("src", fileReader.result);
        previewBox.find(".delete0").on("click", function(){
          $(".img-list0").remove();
          fileField.show();
          fileField.find("input[type=file]").val('');
          fileField.siblings(".sell-upload-drop-box").hide();
          widthEdit();
          return false;
        });
    }
    widthEdit();
    fileReader.readAsDataURL(fileProp);
  });


  // 商品画像２
  $("#product_product_images_attributes_1_image").on("change", function(){
    var fileProp = $(this).prop("files")[0],
    fileReader = new FileReader(),
    previewBox = $(".preview"),
    fileField = $(this).parent(),
    previewList = '<li class="img-list img-list1"><figure class="img-list-figure"><img alt="" class="img1"></figure><div class="sell-upload-button"><a href="" class="img-edit">変更</a><a href="" id="delete" class="delete1">削除</a></div></li>';

    previewBox.append(previewList);
    fileField.hide();

    var num = imgCount();
    if(num < 4){
      inputCheckA().siblings(".sell-upload-drop-box").hide();
      inputCheckA().show();
    }

    if(num == 3){
      inputCheck();
    }

    fileReader.onload = function() {
      previewBox.find(".img1").attr("src", fileReader.result);
        previewBox.find(".delete1").on("click", function(){
          $(".img-list1").remove();
          fileField.show();
          fileField.find("input[type=file]").val('');
          fileField.siblings(".sell-upload-drop-box").hide();
          widthEdit();
          return false;
        });
    }
    widthEdit();
    fileReader.readAsDataURL(fileProp);
  });


  // 商品画像３
  $("#product_product_images_attributes_2_image").on("change", function(){
    var fileProp = $(this).prop("files")[0],
    fileReader = new FileReader(),
    previewBox = $(".preview"),
    fileField = $(this).parent(),
    previewList = '<li class="img-list img-list2"><figure class="img-list-figure"><img alt="" class="img2"></figure><div class="sell-upload-button"><a href="" class="img-edit">変更</a><a href="" id="delete" class="delete2">削除</a></div></li>';

    previewBox.append(previewList);
    fileField.hide();

    var num = imgCount();
    if(num < 4){
      inputCheckA().siblings(".sell-upload-drop-box").hide();
      inputCheckA().show();
    }

    if(num == 3){
      inputCheck();
    }

    fileReader.onload = function() {
      previewBox.find(".img2").attr("src", fileReader.result);
        previewBox.find(".delete2").on("click", function(){
          $(".img-list2").remove();
          fileField.show();
          fileField.find("input[type=file]").val('');
          fileField.siblings(".sell-upload-drop-box").hide();
          widthEdit();
          return false;
        });
    }
    widthEdit();
    fileReader.readAsDataURL(fileProp);
  });


  // 商品画像４
  $("#product_product_images_attributes_3_image").on("change", function(){
    var fileProp = $(this).prop("files")[0],
    fileReader = new FileReader(),
    previewBox = $(".preview"),
    fileField = $(this).parent(),
    previewList = '<li class="img-list img-list3"><figure class="img-list-figure"><img alt="" class="img3"></figure><div class="sell-upload-button"><a href="" class="img-edit">変更</a><a href="" id="delete" class="delete3">削除</a></div></li>';

    previewBox.append(previewList);
    fileField.hide();

    var num = imgCount();
    if(num < 4){
      inputCheckA().siblings(".sell-upload-drop-box").hide();
      inputCheckA().show();
    }

    if(num == 3){
      inputCheck();
    }

    fileReader.onload = function() {
      previewBox.find(".img3").attr("src", fileReader.result);
        previewBox.find(".delete3").on("click", function(){
          $(".img-list3").remove();
          fileField.show();
          fileField.find("input[type=file]").val('');
          fileField.siblings(".sell-upload-drop-box").hide();
          widthEdit();
          return false;
        });
    }
    widthEdit();
    fileReader.readAsDataURL(fileProp);
  });
});
