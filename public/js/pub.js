let fixedPanel = document.getElementById('fixedPanel');
let vanish = document.getElementById('vanish');
let shoppingCart = document.getElementById('shoppingCart');
// console.log(shoppingCart)
shoppingCart.onclick = function () {
  if (getComputedStyle(fixedPanel).width == '50px') {
    fixedPanel.style.width = '300px'
  } else {
    fixedPanel.style.width = '50px'
  }
}

function ajaxdrop(num,text,id){
  ajax("get", "http://127.0.0.1:3000/category", `ctypeId=${num}`).then(res => {
    let html = `<span>${text}</span><div>`
    res.results.forEach(v => {
      html += `<a href="javascript:;">${v.ctype}</a>`
    });
    html+="</div>"
    document.getElementById(`${id}`).innerHTML=html;
  })
}
ajaxdrop(1,"用途：",'purpose')
ajaxdrop(2,"对象：",'object')
ajaxdrop(3,"花材：",'cauliflower')
ajaxdrop(4,"支数：",'number')
ajaxdrop(5,"类别：",'classes')
ajaxdrop(6,"颜色：",'colors')


function ajaxlists(num){
  ajax("get", "http://127.0.0.1:3000/lists", `ltypeId=${num}`).then(res => {
    // console.log(res)
    let html="";
    res.results.forEach(v => {
      html += `
      <div>
        <img src="img/${v.limg}" alt="">
        <p>¥${v.lprice} <span>已售${v.lsold}件</span></p>
        <a href="javascript:;">${v.lname}</a>
      </div>
      `
    });
    
    document.getElementById('pro_lists').innerHTML=html;
  })
}
ajaxlists(1)

let pag = document.getElementById('pag')
let proLists = document.getElementById('pro_lists')
// console.log(proLists.dataset.lname)
pag.addEventListener('click',(event)=>{
  // console.log(event.target.tagName)
  let $this = event.target;
  let pagbtns = pag.getElementsByTagName('button')
  if($this.tagName == "BUTTON"){
    for(let v of pagbtns){
      v.setAttribute("class","")
    }
    $this.setAttribute('class','active')
  }
  let n = event.target.innerHTML
  switch (n) {
    case "1":
      proLists.innerHTML="";
      ajaxlists(1)
      proLists.setAttribute('data-lname',1)
      break;
    case "2":
      proLists.innerHTML="";
      ajaxlists(2)
      proLists.setAttribute('data-lname',2)
      break;
    case "3":
      proLists.innerHTML="";
      ajaxlists(3)
      proLists.setAttribute('data-lname',3)
      break; 
    case "4":
      proLists.innerHTML="";
      ajaxlists(4)
      proLists.setAttribute('data-lname',4)
      break; 
  }
})


let paginp =pag.getElementsByTagName("input")[0];
let paglastbtn = pag.lastElementChild
paglastbtn.addEventListener('click',(event)=>{
  ajaxlists(paginp.value)
})
let nextpage = document.getElementById('nextpage')
console.log(nextpage)
let a = 1;
nextpage.addEventListener('click',()=>{
  a+=1
  ajaxlists(a)
})






