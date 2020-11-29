/**
 * 
 */
$(function(){
	
	$("input[type='text']").change(function(){
		var quantityVal = $.trim(this.value);
		var flag = false;
		var reg = /^\d+$/g;
	    var quantity = -1;
	    if (reg.test(quantityVal)) {
	    	quantity = parseInt(quantityVal);
	    	if (quantity>=0) {
	    		flag = true;
	    	}
	    }
	    if (!flag ) {
	        alert("Please provide valid quantity");
	        return;
	    }
	    var $tr = $(this).parent().parent();
	    var productName = $.trim($tr.find("td:first").find("a:eq(1)").text());
	    $.ajax({
	        url: "CartUpdate",
	        type: "POST",
	        data: {
	        	"method" : "updateQuantity",
	        	"productName" : productName,
	        	"quantity":quantity
	        },
	        success: function (msg) {
	            window.location.reload();
	        },
	        error: function(){
	            console.log("error occurred while making ajax call;")
	        }
	    });    
	    
	});
	$("#delete").click(function(){
	    var $tr = $(this).parent().parent();
	    var productName = $.trim($tr.find("td:first").find("a:eq(1)").text());
		$.ajax({
	        url: "CartUpdate",
	        type: "POST",
	        data: {
	        	"method" : "deleteProduct",
	        	"productName" : productName
	        },
	        success: function (msg) {
	            window.location.reload();
	        },
	        error: function(){
	            console.log("error occurred while making ajax call;")
	        }
	    });    
	});
});
