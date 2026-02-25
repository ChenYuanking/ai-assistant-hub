function send(){

var input=document.getElementById("input");
var chat=document.getElementById("chat");

var text=input.value;

if(text=="") return;

chat.innerHTML += "<p>你："+text+"</p>";

chat.innerHTML += "<p>AI：思考中...</p>";

input.value="";

chat.scrollTop=chat.scrollHeight;

}
