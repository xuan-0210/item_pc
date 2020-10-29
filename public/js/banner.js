var i = 0;
var ind = 0;
var imgWidth = 1520;
var count = 4;
var Imgs = document.getElementById('imgs');
var Lis = document.getElementById('ides').children;
// console.log(Lis)
function moveTo(to){
  if(to == undefined){
    to=i+1;
  }
  if(i==0){
    Imgs.className='transition'
  }
  i=to;
  Imgs.style.marginLeft=-i*imgWidth+'px';
  for(var li of Lis){
    li.className=''
  }
  if(i==count){
    i=0
    setTimeout(() => {
      Imgs.className='';
      Imgs.style.marginLeft=0
    },0);
  }
  Lis[i].className='active'
  ind = i;
}


var time = setInterval(()=>{
  moveTo()
  // console.log(i)
},4000)

var banner=document.getElementById("banner_bot");
banner.onmouseover=function(){
  clearInterval(time);
}
banner.onmouseout=function(){
  time=setInterval(function(){
    moveTo()
  },4000);
}



// Lis.onclick = function(e){
  //   if(e.target.nodeName=='LI'){
  //     if(e.target.className!=='active'){
  //       moveTo(i)
  //     }  
  //   }
  // }

// console.log(Lis)
let lis = []
for(let itemli of Lis){
 lis.push(itemli)
 
}
for(let item of lis){
  item.addEventListener('click',function(){
   moveTo(lis.indexOf(item))
  })
  // console.log(lis.indexOf(item))
  // item.num=lis.indexOf(item)
 }





