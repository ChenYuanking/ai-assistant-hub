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
margin-top:40px;
}

button{

width:260px;
height:60px;

margin:12px;

font-size:18px;

border-radius:10px;

border:none;

background:#4CAF50;

color:white;

}

input{

width:300px;
height:40px;

font-size:18px;

text-align:center;

border-radius:8px;

border:1px solid gray;

}

</style>

</head>

<body>

<h1>AI助手中心</h1>

<p>输入你要做的事情</p >

<input id="task" placeholder="比如：写报告 / 分析数据 / 聊人生">

<br><br>

<button onclick="chooseAI()">
智能选择AI
</button>

<br><br>

<button onclick="window.open('https://chat.openai.com')">
工作助手(GPT)
</button>

<br>

<button onclick="window.open('https://gemini.google.com')">
数据助手(Gemini)
</button>

<br>

<button onclick="window.open('https://chat.openai.com')">
人生助手
</button>

<br>

<button onclick="window.open('https://chat.openai.com')">
随便聊天
</button>

<script>

function chooseAI(){

var text=document.getElementById("task").value;


if(
text.includes("数据")||
text.includes("分析")||
text.includes("表格")
){

window.open("https://gemini.google.com");

}

else if(
text.includes("人生")||
text.includes("感情")||
text.includes("迷茫")
){

window.open("https://chat.openai.com");

}

else{

window.open("https://chat.openai.com");

}

}

</script>

</body>

</html>
