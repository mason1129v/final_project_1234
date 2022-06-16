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
</head>
	<body>
    <!--購物車-->
    <section>
        <button class="cart_btn" id="cart_btn"><img src="assets/img/cart.png" class="btn_img"></button>
        <div class="cart_show" id="cart_show">
            <p class="cart_title">購物車</p><span id="cart_close">&times;</span>
            <!--尚未登入會員時顥示-->
            <!--<p class="cart_alert">尚未登入會員</p> -->

                <div class="wrap_orders">
        <%
        if(session.getAttribute("email")==null){
			%>
			<div style="text-align:center" >
                <p class="cart_alert">尚未登入會員</p>
			</div>
			<%
		}
        else{
            Class.forName("com.mysql.jdbc.Driver");
            String url6="jdbc:mysql://localhost/";
            Connection con6=DriverManager.getConnection(url6,"root","1234");
            String sql6="USE `jp_snake`";
            request.setCharacterEncoding("utf-8");
            con6.createStatement().execute(sql6);
            String email_id = (String)session.getAttribute("email");
  
            sql6="SELECT * FROM `jp_cart`, `jp_products` WHERE email='" + email_id + "' AND jp_cart.ID = jp_products.ID";
            ResultSet rs6=con6.createStatement().executeQuery(sql6);
  
            int q=0;
            int totalprice=0;
  
            while(rs6.next()){
              
            q+=Integer.parseInt(rs6.getString("quantity"));
            totalprice+=Integer.parseInt(rs6.getString("quantity"))*Integer.parseInt(rs6.getString("Price"));
            String sql7="USE `jp_snake`";
              sql7="INSERT jp_totalprice(totalprice) VALUES ('"+totalprice+"')";
            con6.createStatement().execute(sql7);
  %>
        
                    <div class="each_order">
                        <div class="cart_img"><img src="<%=rs6.getString("Img")%>"> </div>
                        <div class="cart_info">
                            <p>品名：<%=rs6.getString("Shortname")%></p>
                            <p>價錢：<%=rs6.getString("Price")%> NT$</p>
                            <p>數量：<%=rs6.getString("quantity")%></p>
                            <!-- <p>小計：98 NT$</p> -->
                            <form action="cartdelete.jsp" method="post" accept-charset="utf-8">
                                <input type="submit" name="delete" class="del_btn" value="刪除">
                                <input type="hidden" name="cartid" value='<%=rs6.getString("ID")%>'>
                            </form>
                        </div>
                        <hr class="cart_hr">
                    </div>
                    <%}%>
                    
                    <div class="cart_total">
                        <span>總金額：<%=totalprice%> NT$</span>
                        <span>
                            <input type="button" onclick="location.href='order.jsp'" value="前往確認訂單頁面" class="to_check">
                        </span>
                    </div>
                </div>
                <%}%>

        </div>
    </section>
  
	</body>
</html>