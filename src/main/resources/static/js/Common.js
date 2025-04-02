/* $Id : common.js 4865 2007-01-31 14:04:10Z paulgao $ */

/* *
 * 添加商品到购物车
 param * buyTag 是直接购买还是放入购物车标志
 */
function addToCart(goodsId,buyTag,sx,kucun)
{
  if(buyTag=='') buyTag=0;
  var spec_arr     = new Array();
  var spec_arr1    = '';
  var fittings_arr = new Array();
  var number       = 1;
  var formBuy      = document.forms['ECS_FORMBUY'];
  var maijia=document.getElementsByName("maijia");
    for(var i=0;i<maijia.length;i++)
   {
     if(maijia.item(i).checked){
       var  mj=maijia.item(i).getAttribute("value");  
   		break;
	 }
  }
 
  // 检查是否有商品规格
  if (formBuy)
  { 
    spec_arr = getSelectedAttributes(formBuy);
 
    if (formBuy.elements['number'])
    {
      number = formBuy.elements['number'].value;
    }
  }
  for(var c in spec_arr){//去除里面的逗号
  	if(spec_arr1!='') spec_arr1+=' ';
	spec_arr1+=spec_arr[c];
  }
  
  if(spec_arr.length<sx) {alert("请选择商品属性");return false;}
  if(isNaN(number) || number<1){alert("请输入正确的商品数量，至少为1件");return false;}
  if(number>1000){alert("商品数量太大了吧，减少一些再试试哦");return false;}
  //alert(kucun);
  if(number>kucun){alert("已经超出了商品库存，请重新输入数量");return false;}
	var xmlHttp=getXMLRequester();
		var url="flow_add.php?step=add_cart&buyTag="+buyTag
		url=url+"&goods="+goodsId+"&number="+number+"&spec_arr="+encodeURI(spec_arr1)+"&sx="+sx+"&mj="+mj+"&timeStamp="+new Date().getMilliseconds()
		//alert(url);
		xmlHttp.onreadystatechange=function(){
		if (xmlHttp.readyState==4 && xmlHttp.status==200)
			{ 
				var xmlstr=xmlHttp.responseText;
				//alert(xmlstr);//return false;
				var strarray=xmlstr.split("|");
				alert(strarray[1]);
				if(strarray[0]==2 && buyTag==0){
					window.open('flow.php','_self');
				}
				if(strarray[0]==2 && buyTag==1){
					display_cart();
					/*document.getElementById('frgwcpAmount').innerHTML=strarray[3];
					document.getElementById('frgwcpNum').innerHTML=strarray[2];
					document.getElementById('frgwc').style.display='';
					document.getElementById('gouwuche').innerHTML="共"+strarray[2]+"件商品";*/
				}
			} 		
		} 
		xmlHttp.open("GET",url,true)
		xmlHttp.send(null)
		return true;
}

function display_cart(){
	var xmlHttp=getXMLRequester();
	var url="flow_add_gwc.php?timeStamp="+new Date().getMilliseconds();
	xmlHttp.onreadystatechange=function(){
	if (xmlHttp.readyState==4 && xmlHttp.status==200)
		{ 
			var xmlstr=xmlHttp.responseText;
			var strarray=xmlstr.split("|");
			document.getElementById('frgwcpAmount').innerHTML=strarray[1];
			document.getElementById('frgwcpNum').innerHTML=strarray[0];
			document.getElementById('frgwc').style.display='';
			document.getElementById('gouwuche').innerHTML="共"+strarray[0]+"件商品";
		} 		
	} 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
	return true;
}

/**
 * 获得选定的商品属性
 */
function getSelectedAttributes(formBuy)
{
  var spec_arr = new Array();
  var j = 0;

  for (i = 0; i < formBuy.elements.length; i ++ )
  {
    var prefix = formBuy.elements[i].name.substr(0, 5);

    if (prefix == 'spec_' && (
      (formBuy.elements[i].type == 'radio' && formBuy.elements[i].checked) ||
      formBuy.elements[i].tagName == 'SELECT'))
    {
      spec_arr[j] = formBuy.elements[i].value.replace('\r','');
      j++ ;
    }
  }

  return spec_arr;
}



function AddFavorite(sURL, sTitle) {  
		if(document.all){
			window.external.AddFavorite(sURL,sTitle)
		}else if(window.sidebar){
			window.sidebar.addPanel(sTitle,sURL,"")
		}else{
			alert("对不起，您的浏览器不支持此操作!\n请您使用菜单栏或Ctrl+D收藏本站。")
		}
    }   
function changeAtt(t) {
	
	t.lastChild.checked='checked'; 
	for (var i = 0; i<t.parentNode.childNodes.length;i++) {  
		if (t.parentNode.childNodes[i].className == 'cattsel') { 
			t.parentNode.childNodes[i].className = ''; 
		}
	}
	t.className = "cattsel";
} 



/* *
 * 评论的翻页函数
 */
function gotoPage(page, id, size)
{
			  var xmlHttp=getXMLRequester();
			   var url="comment.php?act=gotopage"
				url=url+"&page="+page+"&id="+id+"&pagesize="+size+"&timeStamp="+new Date().getMilliseconds()
				xmlHttp.onreadystatechange=function(){
				if (xmlHttp.readyState==4 && xmlHttp.status==200)
					{ 
						var xmlstr=xmlHttp.responseText;
						alert(xmlstr);
						document.getElementById('ECS_COMMENT').innerHTML=xmlstr;
					} 		
				} 
				xmlHttp.open("GET",url,true)
				xmlHttp.send(null)
				return true;
}