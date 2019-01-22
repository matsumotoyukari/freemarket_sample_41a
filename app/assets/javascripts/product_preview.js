$(function() {
//TODO: 画像選択エリア、プレビュー表示をdata属性で管理する。各要素にイベントを設定する際、共通のクラスを当てるなどでリファクタリングをする。

  var fileChoiceArea = [];
// 画像選択エリアの初期表示(出品ページ)
  $(".file").each(function(i){
    $("#product_product_images_attributes_" + i + "_image").parent().hide();
    if(!$("#product_product_images_attributes_" + i + "_id").val() == ""){
      return true;
    } else if ($("#product_product_images_attributes_" + i + "_image").val() == ""){
      fileChoiceArea.push($("#product_product_images_attributes_" + i + "_image"));
      fileChoiceArea[0].parent().show();
    }
    i++;
  });

// 幅初期値（商品編集時）
  $(".preview").each(function(index){
      var count = $("li").find("img").length;
      var partsWidth = count * 160;
      $(".sell-upload-drop-box").width(540 - partsWidth);
  });

  $(".img-list").each(function(i){
    $(".delete" + i).on("click", function(){
      $(".delete" + i).parents(".img-list").remove();
      $("#product_product_images_attributes_" + i + "_image").val("");
      $("#product_product_images_attributes_" + i + "_image").parent().show();
      $("#product_product_images_attributes_" + i + "_image").parent().siblings(".sell-upload-drop-box").hide();
      editImgWidth();
      return false;
    });
  });


  // 画像選択エリアに番号を付与
  $(".sell-upload-drop-box").each(function(i){
    $(this).addClass("have-item" + (i));
    i++;
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
    var fileNoInputArea = [];
    $(".sell-upload-drop-box").each(function(i){
      if($("#product_product_images_attributes_" + i + "_image").val() == "" && !$("#product_product_images_attributes_" + i + "_id").length){
        fileNoInputArea.push($("#product_product_images_attributes_" + i + "_image").parent());
      }
      i++;
    });
    return fileNoInputArea;
  }

  // 画像選択エリアに値があるかを調べて、なければその画像選択エリアを返す。
  function ShowNoInputArea(){
    var abc = [];
    $(".sell-upload-drop-box").each(function(i){
      if($(".have-item" + (i)).find(".file").val().length == 0 && !$("#product_product_images_attributes_" + i + "_id").length){
        abc.push($(".have-item" + (i)));
      }
      i++;
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
            previewList = `<li class="img-list img-list${i}"><figure class="img-list-figure"><img alt="" class="img${i}"></figure><div class="sell-upload-button"><a href="" id="delete" class="delete${i}">削除</a></div></li>`;
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
              ShowNoInputAreaLast().pop().show();
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
