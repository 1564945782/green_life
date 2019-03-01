function $(selector){
	return document.querySelector(selector);
}
function $$(selector){
	return document.querySelectorAll(selector);
}
//首页左侧菜单折叠效果
var menuH2s=$$(".leftnav h2");
for(var i=0;i<menuH2s.length;i++){
	menuH2s[i].onclick=function(){
		var nextEle=this.nextElementSibling
		if(nextEle.style.display=="block"){
			nextEle.style.display="none";
			this.getElementsByTagName("span")[0].innerHTML="▶";
		}else{
			nextEle.style.display="block";
			this.getElementsByTagName("span")[0].innerHTML="▼";
		}
	}
}
//首页左侧菜单点击，右侧上方的目录结构改变
var menuAs=$$(".leftnav a");
for(var i=0;i<menuAs.length;i++){
	menuAs[i].onclick=function(){
		var currentTxt=this.innerHTML
		var previousTxt=this.parentNode.parentNode.previousElementSibling.innerText.substr(1);
		$$(".bread li")[1].innerText=previousTxt;
		$$(".bread li")[2].innerText=currentTxt;
	}
}
