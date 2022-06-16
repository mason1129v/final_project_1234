<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/index.css">
    <link rel="stylesheet" href="assets/css/member.css">
    <link rel="stylesheet" href="assets/css/basic.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/cart.css">
    <script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/cart.js"></script>
    <title>專屬會員</title>
</head>
<body class="member_body">
    <%@ include file="header.jsp"%>
    <main>
        <!--會員資料-->
        <section>
		 <%
        
        Class.forName("com.mysql.jdbc.Driver");
        String url3="jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con3=DriverManager.getConnection(url3,"root","1234");
        String sql3="USE `jp_snake`";
        con3.createStatement().execute(sql3);
        sql3 = "SELECT * FROM `jp_member` WHERE `email` = '"+session.getAttribute("email")+"'";
        con3.createStatement().execute(sql3);
        ResultSet rr=con3.createStatement().executeQuery(sql3);
        while(rr.next()) 
        {
        %>
		<form action="setmember.jsp" class="form" method="POST">
            <div class="member_container">
			
                <div class="member_box">
                    <div class="member_text">
                        會員資料
                    </div>
                    <div class="member_detail">
                        <table class="m_table">
                            <tbody class="m_tboady">
                                <tr>
                                    <td>
                                        <input class="input" type="text" name="name" placeholder="姓名" required value="<%=rr.getString("name")%>"> <!--value="小妤"-->
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="m_table">
                            <tbody class="m_tboady">
                                <tr>
                                    <td>
                                        <input class="input" type="text" name="email" placeholder="ˊ帳號(電子郵件)" required value="<%=rr.getString("email")%>"> <!--value="doris@gmail.com"--> 
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="m_table">
                            <tbody class="m_tboady">
                                <tr>
                                    <td>
                                        <input class="input" type="password" name="psw" placeholder="密碼" required value="<%=rr.getString("psw")%>"> <!--value="112818"--> 
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="wrap_btn">
                            <input type="submit" name="" id="" value="修改" class="m_btn">
                            <input type="button" name="" id="" value="取消" class="m_btn">
                        </div>    
                            <br><br><span class="warning">*請直接在上面做修改即可&nbsp; </span>
                    </div>
					
                    <br><hr><br>
					<%}%>
                <!--購買資訊-->
                    <div class="member_history">
                        購買資訊
                    </div>
                    
                    <div class="wrap_detail" style="margin-top: 30px;">
                    <%
				    String email_id = (String)session.getAttribute("email");
				    request.setCharacterEncoding("utf-8");			
				
				    sql3="SELECT * FROM `jp_orders`,`jp_products` WHERE jp_orders.ID = jp_products.ID  AND order_email = '"+email_id+"'";
				    ResultSet rss=con3.createStatement().executeQuery(sql3);
				
				    while(rss.next()){
                    %>
                        <div class="history_detail">
                            <div class="history_pic">
                                <img src="<%=rss.getString("Img")%>" alt style="width :100%">
                            </div>
                            <div class="history_text">
                                <p><%=rss.getString("Shortname")%></p><br>
                                <p>數量 : <%=rss.getString("quantity")%></p><br>
                                <P>總價 : <%=rss.getString("price")%></P>
                            </div>
                        </div>
                        <%}%>
                    </div>
                </div>
            </div>
			</form>
        </section>
    </main>
    <%@ include file="footer.jsp"%>
</body>
</html>