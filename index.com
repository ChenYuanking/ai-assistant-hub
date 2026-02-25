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

width:250px;
height:60px;

margin:15px;

font-size:18px;

border-radius:10px;

border:none;

background:#4CAF50;

color:white;

}
</style>

</head>

<body>

<h1>我的AI助手中心</h1>

<p>选择一个AI助手</p >

<br>

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

</body>

</html>
