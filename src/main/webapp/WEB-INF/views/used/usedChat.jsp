<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<title>채팅 페이지</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width:=device-width, initial-scale=1.8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://kit.fontawesome.com/82fb404a29.js" crossorigin="anonymous"></script>

    
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"><div class="pd-wrap">
      

    
    
    
    
    
    <style>
 
*
{
	padding: 0;
	margin: 0;
	border:none;
	text-decoration: none;
	list-style: none;
}

html,body
{
	height: 100%;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";

}
*:focus{
	outline: 0;
}
.chat{height: 100%;display: flex;}
.chat .sidebar
{
	width: 300px;
	display: flex;
	min-width: 300px;
	background: #f5f5f5;
	flex-direction: column;
}
.chat .sidebar .search
{
	height: 40px;
	border-bottom: 1px solid #ddd;
	position: relative;
	display: flex;
	align-items: center;
}
.chat .sidebar .search input
{
	width: 100%;
	font-size: 14px;
	padding: 0 45px 0 15px;
	height: 30px;
	border-radius: 30px;
	background: #fff;
}
.chat .sidebar .search i
{
	position: absolute;
	top: 0;
	height: 40px;
	width: 40px;
	display: flex;
	align-items: center;
	font-size: 14px;
	color: #999;
	right: 0;
}
.chat .sidebar  .contacts 
{
	overflow: auto;
	flex: 1;
}
.chat .sidebar  .contacts ul li a
{
	display: flex;
	height: 60px;
	align-items: center;
	padding: 0 10px;
}
.chat .sidebar  .contacts ul li a:hover
{
	background: #fff;
}
.chat .sidebar  .contacts ul li img
{
	width: 40px;
	height: 40px;
	border-radius: 40px;
	margin-right: 10px;
}
.chat .sidebar  .contacts ul li a .contact .name
{
	font-size: 15px;
	color: #333;
	margin-bottom: 3px;
	font-weight: 500;
	}.chat .sidebar  .contacts ul li a .contact .message
	{
		font-size: 13px;
		color: #999;

	}
		.chat .sidebar  .contacts ul li a  .notification:empty
		{
			display: none;
		}
	.chat .sidebar  .contacts ul li a  .notification

	{
		height: 18px;
		width: 18px;
		border-radius: 50%;
		background: green;
		font-size: 11px;
		color: white;
		text-align: center;
		line-height: 17px;
		margin-left: auto;
	}

	.chat .content
	{
		flex: 1;
		border-left: 1px solid #ddd;
		display: flex;
		flex-direction: column;
	}
	.chat .content .message-header
	{
		height: 50px;
		min-height: 50px;
		border-bottom: 1px solid #999;
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 0 5px 0 15px;
	}
	.chat .content .message-header .user-info
	{
		display: flex;
		align-items: center;
	}
	.chat .content .message-header .user-info img
	{
		width: 40px;
		width: 40px;
		margin-right: 10px;
		border-radius: 50%;
	}
	.chat .content .message-header .user-info .user .name
	{
		font-size: 15px;
		font-weight: 500px;
		color: #222;
	}
	.chat .content .message-header .user-info .user .time
	{
		font-size: 13px;

		color: #999;
	}
	.chat .content .message-header .actions ul
	{
		display: flex;
	}
	.chat .content .message-header .actions ul li a 
	{
		font-size: 19px;
		width: 30px;
		display: block;
		text-align: center;
		color: #999;
	}
	.chat .content .message-header .actions ul li a:hover
	{
		font-size: 19px;
		color: #222;
	}
	.chat .content .message-content
	{
		flex: 1;
	}
	.chat .content .message-form
	{
		border-top: 1px solid	#ddd;
		background: #eee;
		padding: 10px;
	
	}
	.chat .content .message-form ul 
	{
		display: flex;
	}
		.chat .content .message-form ul li
		{
			margin:0 5px;
		}
	.chat .content .message-form ul li:nth-child(2)
	{
		flex: 1;
	}
	.chat .content .message-form ul li:nth-child(2) input
	{
		width: 100%;
		height: 35px;
		border: 1px solid #ddd;
		border-radius: 36px;
		box-sizing: border-box;
		font-size: 14;
		padding: 0 15px;
	}
.chat .content .message-form ul li:nth-child(1) a
{
	width: 36px;
	height: 36px;
	display: block;
	border-radius: 50%;

	color: yellow;
	background:#339af8;
	text-align: center;
	line-height: 36px;
}.chat .content .message-form ul li:nth-child(3) a
{
	width: 36px;
	height: 36px;
	display: block;
	border-radius: 50%;
	background: #ed2f25;
	color: white;
	text-align: center;
	line-height: 36px;
}.chat .content .message-form ul li:nth-child(4) a
{
	width: 36px;
	height: 36px;
	display: block;
	border-radius: 50%;
	background: green;
	color: white;
	text-align: center;
	line-height: 36px;
}
.chat .content .message-content
{
flex: 1;
display: flex;
flex-direction: column;
overflow: auto;
padding: 15px;
}
.chat .content .message-content .message
{
	align-self: flex-start;margin-bottom: 20px;

}
.chat .content .message-content .message .bubble
{
padding: 6px 12px;
border-radius: 20px;
margin-bottom: 5px;
background: #f7f7f7;
}
.chat .content .message-content .message.me
{
	align-self: flex-end;
}.chat .content .message-content .message.me .time
{
	text-align: right;
}
.chat .content .message-content .message.me .bubble 
{
	background: #2196f3;
	color: white;
}
.chat .content .message-content .empty
{
	margin-bottom: auto;
}
</style>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</head>
<body>
	<div class="chat">
		<div class="sidebar">

			<div class="search">
				<input type="text" placeholder="Ara..." name="">
				<i class="fa fa-search"></i>
			</div>
			<div class="contacts">
				<ul>
					<li>
						<a href="">
							<img  src="https://bootstrapmade.com/demo/themes/Company/assets/img/team/team-1.jpg">
							<div class="contact">
								<div class="name">김상철 님</div>
								<div class="message">안녕히계세요</div>


							</div><div class="notification">1</div>
						</a>
					</li><li>
						<a href="">
							<img   src="https://bootstrapmade.com/demo/themes/Company/assets/img/team/team-2.jpg">
							<div class="contact">
								<div class="name">신혜경 님</div>
								<div class="message">안녕히계세요</div>
							</div><div class="notification"></div>
						</a>
					</li><li>
						<a href="">
							<img  src="https://bootstrapmade.com/demo/themes/Company/assets/img/team/team-3.jpg">
							<div class="contact">
								<div class="name">전봉준 님</div>
								<div class="message">안녕히계세요</div>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="content">

			<div class="message-header">
				<div class="user-info">
					<img src="https://bootstrapmade.com/demo/themes/Company/assets/img/team/team-3.jpg">
					<div class="user">
						<div class="name">홍석천</div>
						<div class="time">10시간 전 </div>
					</div>
				</div>
				<div class="actions">
					<ul>
						<li>
							<a href="#">
								<i class="fa fa-circle"></i>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-ellipsis-v"></i>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="message-content">
				<div class="empty"> </div>
				
				
				<div class="message me">
					<div class="bubble">
						안녕하세요! 반갑습니다 
					</div>
					<div class="time"> 1시간 전 </div>
				</div>
				<div class="message">
					<div class="bubble">
						안녕히계세요! 잘가요 
					</div>
					<div class="time"> 1시간 전</div>
				</div><div class="message me">
					<div class="bubble">
						안녕하세요! 반갑습니다 
					</div>
					<div class="time"> 1시간 전</div>
				</div>
				<div class="message">
					<div class="bubble">
						안녕히계세요! 잘가요 
					</div>
					<div class="time"> 1시간 전</div>
				</div><div class="message me">
					<div class="bubble">
						안녕하세요! 반갑습니다 
					</div>
					<div class="time"> 1시간 전</div>
				</div>
				<div class="message">
					<div class="bubble">
						안녕하세요! 반갑습니다
					</div>
					<div class="time"> 1시간 전</div>
				</div><div class="message me">
					<div class="bubble">
						안녕히계세요! 잘가요
					</div>
					<div class="time">1시간 전</div>
				</div>
				<div class="message">
					<div class="bubble">
						안녕하세요! 반갑습니다 
					</div>
					<div class="time"> 1시간 전</div>
				</div><div class="message me">
					<div class="bubble">
						안녕히계세요! 잘가요 
					</div>
					<div class="time"> 1시간 전</div>
				</div>
				<div class="message">
					<div class="bubble">
						안녕하세요! 반갑습니다
					</div>
					<div class="time"> 1시간 전</div>
				</div>
			<div class="message-form">
				<ul>
					<li>
						<a href="">
							<i class="fa fa-laugh"></i>
						</a>		
					</li>
					<li class="input">
						<input type="text" name="" placeholder=" 내용을 작성하세요">
					</li>
					<li>
						<a href="">
							<i class="fa fa-microphone"></i>
						</a>
					</li>
					<li>
						<a href="">
							<i class="fa fa-image"></i>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<script >
		setIn2terval(function(){

			location.href=location.href;
		},1000);
	</script>
</body>

