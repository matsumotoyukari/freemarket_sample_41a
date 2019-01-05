// $(function() {
//   var day1 =[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
//   var day2 =[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
//   var day3 =[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28]
//   function isUrudoshi(year){

//     if(year == null ||  year.trim() == "") return false;


//     return (year%4 == 0) && (year%100 != 0) || (year%400 == 0) ? true : false;
//   }

//   $('#year').change(function() {
//     var year = $('[name=year] option:selected').val();

//     if(isUrudoshi(year) == true){
//       day3 =[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29]
//     }else{
//       day3 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28]
//     }
//     $('#month').change(function(){
//       var month = $('name=month option:selected').val();
//       for (let i = 0; i < day3.length; i++){
//         var option = document.createElement("option");
//         option.value = day3[i]
//         option.text = day3[i]
//       }
//     })
//   })


// });
