var show = document.querySelector(".banner_mid>.mid_1");
var banner_mid = document.querySelector(".banner_mid");
var midfl_1 = document.querySelectorAll(".midfl_1");
// var showur = document.querySelector(".show");
show.onmouseover=function(){
  for(var mid of midfl_1){
    mid.style.display="block";
  }
  banner_mid.style.height="100%";
  banner_mid.style.backgroundColor="#999";
}
show.onmouseout=function(){
  for(var mid of midfl_1){
    mid.style.display="none";
  }
  banner_mid.style.height="40px";
}



