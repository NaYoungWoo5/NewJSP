$(function() {
Val();
   function Val(){
      $("#sum").on("click", function() {
         var id = $('#productId').val();
         var name = $('#name').val();
         var unitPrice = $('#unitPrice').val();
         var unitsInStock = $('#unitsInStock').val();

         var idex = /^[A-Z0-9+]*$/; // 대문자 영어랑 숫자만가능
         var namex = /^[가-힣]*$/; // 한글만 가능
         var unitPricex = /[0-9]/g; // 숫자만 가능
         var unitsInStockx = /[0-9]/g; // 숫자만 가능

         if (!id || !name || !unitPrice || !unitsInStock) {
            alert("정보가 들어있지 않습니다!");
            return false;
         }

         if (idex.test(id)) {

         } else {
            alert("상품코드는 대문자영어 와 숫자만 사용가능합니다!");
            return false;
         }
         if (namex.test(name)) {

         } else {
            alert("상품명은 한글만 사용가능합니다!");
            return false;
         }
         if (unitPricex.test(unitPrice)) {

         } else {
            alert("가격은 숫자만 사용가능합니다!");
            return false;
         }
         if (unitsInStockx.test(unitsInStock)) {

         } else {
            alert("재고수는 숫자만 사용가능합니다!");
            return false;
         }
      })
   }
      
})