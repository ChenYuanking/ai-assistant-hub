<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>我的AI助手中心</title>

<style>

body{

font-family: Arial;

text-align:center;

background:#f5f5f5;

}

h1{

margin-top:30px;

}

#chatbox{

width:90%;

max-width:500px;

height:300px;

margin:auto;

background:white;

border-radius:10px;

padding:10px;

overflow:auto;

text-align:left;

}

input{

width:70%;

height:40px;

font-size:16px;

}

button{

height:45px;

font-size:16px;

margin-top:10px;

}

</style>

</head>

<body>

<h1>我的AI助手中心</h1>

<div id="chatbox">

AI助手已启动

</div>

<br>

<input id="userInput" placeholder="输入你的问题">

<br>

<button onclick="sendMessage()">

发送

</button>

<script>

function sendMessage(){

var input = document.getElementById("userInput").value;

var chatbox = document.getElementById("chatbox");

chatbox.innerHTML += "<br>你："+input;

chatbox.innerHTML += "<br>AI：收到你的消息";

}

</script>

</body>

</html>
