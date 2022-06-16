<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/header.css" >
    <link rel="stylesheet" href="assets/css/basic.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/order.css">
    <script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/login.js"></script>
    <title>訂單頁面</title>
</head>
<body>
    <%@ include file="header.jsp"%>
    <main>
        <section>
            <div class="all">
                <div class="zone">
                    <p class="title">訂單確認</p>
                    <%
				    if(session.getAttribute("email")==null)
				    {
					    out.print("您尚未登入");
				    }
				    else{
				    Class.forName("com.mysql.jdbc.Driver");
				    String url4="jdbc:mysql://localhost/";
				    Connection con4=DriverManager.getConnection(url4,"root","1234");
				    String sql4="USE `jp_snake`";
				    request.setCharacterEncoding("utf-8");
				    con4.createStatement().execute(sql4);
				    String email_id = (String)session.getAttribute("email");
				    sql4="SELECT * FROM `jp_cart`, `jp_products` WHERE email='" + email_id + "' AND jp_cart.ID = jp_products.ID";
				    ResultSet rs4=con4.createStatement().executeQuery(sql4);
				    while(rs4.next()){
	  
			        %>
                    <div class="wrap_item">
                        <div class="item_img"><img src="<%=rs4.getString("Img")%>"></div>
                        <div class="item_content">
                            <p><%=rs4.getString("Shortname")%></p>
                            <p>價錢：<%=rs4.getString("Price")%> NT$</p>
                            <p>數量：<%=rs4.getString("quantity")%></p>
                            <p>小計：<%=rs4.getString("Price")%> NT$</p>
                        </div>
                        <hr class="item_hr">
                    </div>
                    <%}%>
				<%
                    String sql5="USE `jp_snake`";
				  request.setCharacterEncoding("utf-8");
				  con4.createStatement().execute(sql5); 
				  sql5="SELECT * FROM jp_snake.jp_totalprice ORDER BY totalprice_ID DESC limit 1";
				  ResultSet rs5=con4.createStatement().executeQuery(sql5);
				  while(rs5.next()){
				  %>
                    <div class="total">總金額：<%=rs5.getString("totalprice")%> NT$</div>
                    <hr class="item_hr">
                    <p class="title">訂購人資訊填寫</p>
                    <form method="post" action="checkorder.jsp" class="wrap_item">
                        <div class="typing">
                            <label for="username" class="check">訂購人姓名：</label>
                            <input type="text" name="buyername" id="username" class="input name" placeholder="輸入姓名">
                        </div>
                        <div class="typing">
                            <label for="phone" class="check">訂購人電話：</label>
                            <input type="text" name="buyerphone" id="phone" class="input phone" placeholder="輸入電話號碼">
                        </div>
                        <div class="typing">
                            <label for="email" class="check">訂購人信箱：</label>
                            <input type="text" name="buyeremail" id="email" class="input email" placeholder="輸入電子信箱">
                        </div>
                        <div class="typing">
                            <label for="address" class="check">送貨地址：</label>
                            <input type="text" name="buyeraddress" id="address" class="input address" placeholder="輸入地址">
                        </div>
                        <div class="check_btn">
                            <input type="button" class="order_btn" value="繼續選購商品" onclick="location.href='product.jsp'"> 
                            <input type="submit" class="order_btn" value="確認訂購">
                            <input type="hidden" name="totalprice" value='<%=rs5.getString("totalprice")%>'>
                        </div>
                        <%}%>
                        <%}%>
                    </form>
                </div>
            </div>
        </section>
    </main>
    <%@ include file="footer.jsp"%>
</body>
</html>