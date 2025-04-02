
$(function(){//订单查询结果
$("#order_quey").click(function(e){
$.getJSON(
    "order.php",
    {action:'query',order_num:$('#order_num').val(),rand:Math.random()},
    function(json){
     if(json.err){ alert(json.err); return false; }
     $('#order_result').show();
     $('#ordersn').html(json.ordersn);
     $('#delivery_code').html(json.delivery_code);
     $('#consignee').html(json.consignee);
     $('#status').html(json.status);
     $('#sendtime').html(json.sendtime);
     })
});//end
});

$(function(){
	//"五箱" 滑过效果 class=five_box;
	$(".five_box > li").mouseover(function(){
        $(this).siblings().children("p").hide().siblings("strong").removeClass("title_FB_hover");
		$(this).children("p").show().siblings("strong").addClass("title_FB_hover");
	});
	$(".five_box li p:first").show().siblings("strong").addClass("title_FB_hover");
	
	//旁边的菜单
	$("a[@rel=menu_head]").click(function(e){
	    e.preventDefault();
		var o=$(this).parent().siblings("dd");
		$(this).toggleClass("show").toggleClass("hide");
		if(o.size()>=1)
		{
		    if(o.get(0).style.display=="none") o.slideDown(300);
			else o.slideUp(300);
		}
	});
});

$(function(){    //所有分类，所有店铺ajax
    //所有分类
	$("a[@rel=allcat],#ad_category").hover(
	    function(){
		    var allcat = $("a[@rel=allcat]").position();
		    var header = $(".top_nav").position();
		    var top = allcat.top+28+"px";
		    var left = header.left+"px";
		    $("#ad_category").css({"left":left,"top":top})
			$("#ad_category").show();
			if($("#ad_category").children().size()<=0)
			{
			    $("#ad_category").append("<div>正在加载中...</div>");
			    $.ajax({
				    url:"ajax.php",
					type:"GET",
					cache:true,
					dataType:"json",
					success:function(json){
					            $("#ad_category").empty();
								for(var i in json)
								{   
									$("#ad_category").append('<dl><dt><a href="'+json[i].url+'" title="'+json[i].category_name+'">'+json[i].category_name+'</a></dt><dd></dd></dl>');
									for(var j in json[i]["child"])
									{
									    $("#ad_category > dl > dd:last").append('<a href="'+json[i]["child"][j]["url"]+'" title="'+json[i]["child"][j][0]+'">'+json[i]["child"][j][0]+'</a>');
									}
								}
							}
				});
			}
	    },
		function(){
		    $("#ad_category").hide();
	    }
	);
	
    //所有店铺
	$("a[@rel=allshop],#ad_shop").hover(
	    function(){
		    var allcat = $("a[@rel=allshop]").position();
		    var header = $(".top_nav").position();
		    var top = allcat.top+28+"px";
		    var left = header.left+"px";
		    $("#ad_shop").css({"left":left,"top":top});
			$("#ad_shop").show();
	    },
		function(){
		    $("#ad_shop").hide();
	    }
	);
});

$(function(){    //搜索表单的提交
    $("#search").submit(function(e){
	    var search_text=$("#search>input[@name=ps_search]").val();
		if($.trim(search_text)=="")
		{
		    alert("请输入要搜索的内容");
			return false;
		}
		if($("#search>select[@name=search_type]").val()=="1")
		{
		    $("#search").attr("action",$("#search>input[@name=goods_search]").val());
		}
		else
		{
		    $("#search").attr("action",$("#search>input[@name=shop_search]").val());
		    $("#search>input[@name=shop_name]").val(search_text);
		}
		return true;
	});
});

$(function(){
    var script_name=("index.php".split("."))[0];
	var param="";
	var arr_param=param==""?new Array():param.split("|");
	var i,j,flag;
	for(i=0;i<$("a[@rel=mid_link]").size();i++)
	{
	    if($("a[@rel=mid_link]").eq(i).attr("href").indexOf(script_name)!=-1)
		{
		    if(arr_param.length>0)
			{
			    flag=true;
				for(j=0;j<arr_param.length;j++)
				    if($("a[@rel=mid_link]").eq(i).attr("href").indexOf(arr_param[j])==-1)
					    flag=false;
				if(flag) break;
			}
			else
			{
			    if($("a[@rel=mid_link]").eq(i).attr("href").length<=script_name.length+3)
				    break;
			}
		}
	}
	if(i>=$("a[@rel=mid_link]").size()) return;
	$("a[@rel=mid_link]").eq(i).css({"color":"yellow","fontWeight":"bold"});
});

function setTab(name,cursel,n)
{
    for(i=1;i<=n;i++)
	{
        var menu=document.getElementById(name+i);
        var con=document.getElementById("con_"+name+"_"+i);
        menu.className=i==cursel?"now":"";
        con.style.display=i==cursel?"block":"none";
    }
}
