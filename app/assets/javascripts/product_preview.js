$(function() {
  $(".file").each(function(i){
    $("#product_product_images_attributes_" + (i + 1) + "_image").parent().hide();
  });

  // 画像選択エリアに番号を付与
  $(".sell-upload-drop-box").each(function(i){
    $(this).addClass("have-item" + (i + 1));
  });

  // 幅変換
  function editImgWidth() {
    $(".preview").each(function(index){
      var count = $("li").find("img").length;
      var partsWidth = count * 160;
      $(".sell-upload-drop-box").width(540 - partsWidth);
    });
  }

  // プレビュー画像の数を取得
  function countPreviewImages() {
    return $(".img-list").length;
  }

  // ファイルに値があるかチェックして値を持っていない選択エリアを表示
  function ShowNoInputAreaLast(){
    $(".sell-upload-drop-box").each(function(){
      fileCheck = $(this).find(".file").val().length;
      if(fileCheck == 0){
        $(this).show();
      }
    });
  }

  // 画像選択エリアに値があるかを調べて、なければその画像選択エリアを返す。
  function ShowNoInputArea(){
    var abc = []
    $(".sell-upload-drop-box").each(function(i){
      if($(".have-item" + (i + 1)).find(".file").val().length == 0){
        abc.push($(".have-item" + (i + 1)));
      }
    });
    return abc;
  }


  // 商品画像１
  $(".file").on("change", function(){
    var fileInput = $(this).attr("id");
    var i = 0;
    $(".file").each(function(){
      if(fileInput == "product_product_images_attributes_" + i + "_image"){
        var fileProp = $("#product_product_images_attributes_" + i + "_image").prop("files")[0],
            fileReader = new FileReader(),
            previewBox = $(".preview"),
            fileField = $("#product_product_images_attributes_" + i + "_image").parent(),
            previewList = `<li class="img-list img-list${i}"><figure class="img-list-figure"><img alt="" class="img${i}"></figure><div class="sell-upload-button"><label href="" class="img-edit">変更<input class="file" type="file" name="product[product_images_attributes_][${i}][image]" id="product_product_images_attributes_${i}_image"></input></label><a href="" id="delete" class="delete${i}">削除</a></div></li>`;

            previewBox.append(previewList);
            fileField.hide();

          // プレビュー画像の数を取得
            var num = countPreviewImages();
          // プレビュー画像の数が３つ以下であれば値の入っていない画像選択エリアを表示し、他の画像選択エリアは見えなくする。
            if(num < 4){
              ShowNoInputArea()[0].siblings(".sell-upload-drop-box").hide();
              ShowNoInputArea()[0].show();
            }

          // ファイルに値があるかチェックして値を持っていない選択エリアを表示（３つの場合
            if(num == 3){
              ShowNoInputAreaLast();
            }

            // ファイルの読み込みが完了したら読み込んだファイルの情報を与え、削除したときにこの画像選択エリアを表示し、この画像選択エリア以外は表示しない。
            fileReader.onload = function(){
              previewBox.children(".img-list").last().find("img").attr("src", fileReader.result);
                previewBox.children(".img-list").last().find("#delete").on("click", function(){
                  $(this).parents(".img-list").remove();
                  fileField.show();
                  fileField.find("input[type=file]").val('');
                  fileField.siblings(".sell-upload-drop-box").hide();
                  editImgWidth();
                  return false;
                });
            }
            editImgWidth();
            fileReader.readAsDataURL(fileProp);
      }
    i++;
    });
  });
});
