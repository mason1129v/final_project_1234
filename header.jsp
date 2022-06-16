<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/index.css" >
    <link rel="stylesheet" href="assets/css/header.css" >
    <link rel="stylesheet" href="assets/css/basic.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/cart.css">
    <script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/cart.js"></script>
    <title>駄菓子屋  アカシ</title>
</head>
<body class="index_body">
    <header>
        <div class="list1 header">
            <div class="logo header"><a href="./index.jsp">
                <img src="assets/img/logo.jpg" alt style="width: 100%;">
            </a></div>
            <div class="logo1 header"><a href="./index.jsp">
                <img src="assets/img/logo1.jpg" alt style="width: 100%;">
            </a></div>
        </div>
        <div class="list2 header">
            <div class="intro header"> <a href="./intro.jsp">アカシ簡介 &nbsp;&nbsp;|</a></div>
            <div class="item header">
                <div class="dropdown">
                    <button class="dropbtn"><a href="./product.jsp">預覽商城 &nbsp;&nbsp;</a></button>|
                    <div class="dropdown-content">
                        <a href="./product.jsp">所有商品</a>
                        <a href="./product.jsp#lotte">LOTTE</a>
                        <a href="./product.jsp#Glico">Glico</a>
                        <a href="./product.jsp#Bourbon">Bourbon</a>
                        <a href="./product.jsp#mikakutou">味覺糖</a>
                        <a href="./product.jsp#other">其它</a>
                    </div>
                </div>
            </div>
            <div class="about nav"><a href="./about.jsp">關於我們 &nbsp;</a></div>
			
		<%if(session.getAttribute("email")!= null ){%>
            <a href="./member.jsp"><div class="member header">|&nbsp;會員專屬</div></a> 
        <%}%>
		</div> 
		
		
        <div class="list3 header">
				<%if(session.getAttribute("email")!= null ){
            
                   Object objname = session.getAttribute("email");
                    request.setCharacterEncoding("utf-8");
                    Class.forName("com.mysql.jdbc.Driver");
                    String url2="jdbc:mysql://localhost/?serverTimezone=UTC";
                    Connection con2=DriverManager.getConnection(url2,"root","1234");
                    String sql2="USE `jp_snake`";
                    con2.createStatement().execute(sql2);
                    sql2 = "SELECT * FROM `jp_member` WHERE `email`";
                    ResultSet rs2=con2.createStatement().executeQuery(sql2);
                        %>
						<div class="logout header"><a href="./logout.jsp"><img src="assets/img/log_out.jpg" alt style="width:100%;" ></a></div>
				  <%}else{%>
	                    <div class="member1 header" id="click"><img src="assets/img/member.jpg" alt style="width:100%;"></div>
				  <%}%>
				
            <div id="bg">
                    <dl>
                    <dt><a href="#acc1" class="currentBtn">登入會員</a></dt>
                        <dd id="acc1" class="current">
						
                            <form action="signup.jsp"> <!--check-->
                            <p>登入</p>   
                                <input  class="text_box" type="text" name="email" id="" placeholder="帳號">
                                <input  class="text_box" type="password" name="psw" id="" placeholder="密碼">
                                <div class="btn_group">
                                <input type="submit" class="btn_box" id="login" value="登入">
                                <input type="button" class="btn_box" value="取消" onclick="location.href='index.jsp'">
                            </div>
                        </form>
                        </dd>

                    <dt><a href="#acc2">尚未註冊</a></dt>
                        <dd id="acc2">
                            <form action="signin.jsp" >
                                <p>創立新帳號</p>
                                    <input  class="text_box" type="text" name="name" id="" placeholder="姓名">
                                    <input  class="text_box" type="text" name="email" id="" placeholder="帳號(電子信箱)">
                                    <input  class="text_box" type="password" name="psw" id="" placeholder="密碼">
                                    <div class="btn_group">
                                    <input type="submit" class="btn_box" id="signin" value="註冊">
                                    <input type="button" class="btn_box" value="取消" onclick="location.href='index.jsp'">
                                    </div>
                            </form>
                        </dd>
                    </dl>
            </div>

            <!--登入時人頭換登出鍵 <button class="logout header"><a href=""><img  src="assets/img/log_out.jpg" alt style="width:100%;" ></a></button>-->
            <!--登出實則跳回首頁-->
            <div>
            <form method="post" action="product_srch.jsp" >
                <input type="text" placeholder="商品検索…" name="search"  value="" class="search_text">
            </form>
            </div>
        </div>
    </header>
    <%@ include file="sidecart.jsp"%>
</body>