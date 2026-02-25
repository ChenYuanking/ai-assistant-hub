<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>AI助手中心</title>

<style>

body{
font-family: Arial;
background:#f5f5f5;
text-align:center;
}

h1{
margin-top:30px;
}

#chatBox{

width:90%;
max-width:600px;

height:400px;

margin:auto;

background:white;

border-radius:10px;

padding:10px;

overflow:auto;

border:1px solid gray;

}

#inputBox{

width:70%;

height:40px;

font-size:18px;

}

button{

height:45px;

font-size:18px;

margin-left:10px;

}

</style>

</head>


<body>

<h1>我的AI助手中心</h1>

<div id="chatBox">

<p>AI助手已启动</p >

</div>

<br>

<input id="inputBox" placeholder="输入内容">

<button onclick="sendMessage()">

发送

</button>


<script>

function sendMessage(){

var input = document.getElementById("inputBox");

var chat = document.getElementById("chatBox");

var text = input.value;

if(text=="") return;

chat.innerHTML += "<p>你: "+text+"</p >";

chat.innerHTML += "<p>AI: 我收到了：" + text + "</p >";

input.value="";

chat.scrollTop = chat.scrollHeight;

}

</script>


</body>

</html>
