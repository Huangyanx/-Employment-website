console.log('999999');
window.onload=function()
{
	var aPage=[".page_one",".page_two",".page_three",".page_four"];
		var i=0;
		var scrollFunc = function (e) {  
	        e = e || window.event;  
	        
	        if (e.wheelDelta) {  //判断浏览器IE，谷歌滑轮事件               
	            if (e.wheelDelta > 0) { //当滑轮向上滚动时  
	               
	                 i--;
	            
	            }  
	            if (e.wheelDelta < 0) { //当滑轮向下滚动时          
	                
	               i++;
	               
	            }  
	        } else if (e.detail) {  //Firefox滑轮事件  
	            if (e.detail> 0) { //当滑轮向上滚动时  
	            	
	                i--;
	                  
	            }  
	            if (e.detail< 0) { //当滑轮向下滚动时  
	            	
	                  i++;
	               
	            }  

	        } 
	        if (i>3) i=0;
	        if (i<0) i=3;
	
	            var page1=[];
	            for (var j in aPage) {	
	            	/*$(selector).fadeToggle(speed,callback);*/
	            	$(aPage[j]).css("zIndex",2);
	            }
	         /* $(aPage[i]).fadeToggle(300,show1);
	          function show1(){
	          	$(aPage[i]).css("zIndex",10);
	          }*/
	            	$(aPage[i]).css("zIndex",10);
    }  
    //给页面绑定滑轮滚动事件  
    if (document.addEventListener) {//firefox  
        document.addEventListener('DOMMouseScroll', scrollFunc, false);  
    }  
    //滚动滑轮触发scrollFunc方法  //ie 谷歌  
    window.onmousewheel = document.onmousewheel = scrollFunc;   
  
}
