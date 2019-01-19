$(function(){
  $(".select-box-list").siblings(".select-box-list").hide();
  $(".select-box-list-son").siblings(".select-box-list-son").hide();
  $(".form-group-shipment").hide();

  $(".select-box-parent").on("change", function(){
    var parentId = $(this).val();
    $(".select-box-son").val("");
    $(".select-box-son").parent().hide();

    if(parentId == 0){
      $(".select-box-list-son").siblings(".select-box-list-son").hide();
    }


    $(".select-box-child").each(function(){
      if($(this).attr("child_id") == parentId){
        $(this).parent().show();
      } else {
        $(this).parent().hide();
      }
    });

  });

  $(".select-box-child").on("change", function(){
    var childId = $(this).val();
    $(".select-box-son").val("");

    $(".select-box-son").each(function(){
      if($(this).attr("son_id") == childId){
        $(this).parent().show();
      } else {
        $(this).parent().hide();
      }
    });
  });

  $(".select-delivery").on("change", function(){
    var deliveryId = $(this).val();
    $(".select-method").val("");

    if(deliveryId == 0){
      $(".form-group-shipment").hide();
    } else {
      $(".form-group-shipment").show();
    }

    $(".select-method").each(function(){
      if($(this).attr("shipingfee_id") == deliveryId){
        $(this).parent().show();
      } else {
        $(this).parent().hide();
      }
    });
  });

  $(".select-box-son").on("change", function(){
    var category = $(this).val();
    $(".category").val(category);
  });

  $(".select-method").on("change", function(){
    var shipment = $(this).val();
    $(".shipment").val(shipment);
  });
});
