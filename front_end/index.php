<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title> ONLINE GROCERY STORE </title>
<script src = "javascriptfunctions.js"></script>
</head>
<style type="text/css">
	body
	{
		padding: 40px;
		background-image: url("https://images.unsplash.com/photo-1534723452862-4c874018d66d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=525e1fc546acf366f76f225fea4f8f24&auto=format&fit=crop&w=1950&q=80");
		 background-repeat:no-repeat;
		 background-size: cover;
	}
	.jumbotron
	{
		width:95%;
		height:80%
		padding-top: 140px
	}
	.down
	{
		padding-top: 90px;
	}
	.left
	{
		padding-left: 10px;
	}
	li
	{
		font-size: 20px;
	}
	.font
	{
		font-weight: bold;
		font-size: 20px;
	}
.qb{
               width:70%;
               height:30%;
}
.textBoxButton{
              width:30%;
height:40px;
margin-top:50px;
background-color:#333;
border-radius:20px;
font-weight:bold;
color:#fff;
}
.textBoxButton:hover{
background-color:#fff;
color:#000;
}
.title{
text-align:center;
background-color:#f8f8f8;
padding:10px 15px;
width:400px;
color:#000;
font-size:40px;
border-radius:20px;
}
.head{
text-align:center;
font-weight:bold;
font-size:70px;
color:#FFFF00;
font-family:Lato;

}
</style>
<body style="background-color:black ">


<div class="container">
<h1  class="head"> ONLINE GROCERY STORE <h1>
<hr>

	<div id = AdHocSection class = "section">
	<h1 id = "AdHocTitle" class = "title"> Enter your Query </h1>
	<form action = "runQuery.php" method="post" target = "_blank">
		<strong style="color:white">Please enter your query below: </strong> <br> <br>
		<textarea name="queryBox" id = "queryBox" class="qb" ></textarea><br/>
		<button class = "textBoxButton" type = "button" onClick="clearTextArea();">Clear</button>
		<input class = "textBoxButton" type = "Submit">
	</form>
	</div>

<hr>
</div>
	
	
	
</div>
</body>
</html>
