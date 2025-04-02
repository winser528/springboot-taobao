// JavaScript Document
function resize(){ parent.document.getElementById('I2').style.height = document.body.scrollHeight>300?document.body.scrollHeight:300+"px";}

window.onload=resize;window.onresize = resize;