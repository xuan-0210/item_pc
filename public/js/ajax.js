function ajax(type,url,data){
  return new Promise (resolve=>{
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange=function(){
      if(xhr.readyState==4){
        var result=JSON.parse(xhr.responseText);
        // console.log(xhr.responseText);
        resolve(result);
      }
    }
    if(type==="get"&& data!==undefined){
      url+=`?${data}`;
    }
    xhr.open(type,url,true);
    xhr.send();
  })
}