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
    <%@ include file="header.jsp"%>
<main>
    <section>
        <div class="top_container">
            <div>
            <img src="assets/img/top.jpg" alt style="width: 100%;">
            </div>
            <div>
                <img src="assets/img/top1.jpg" alt style="width: 100%; ">
            </div>
            <div>
                <img src="assets/img/top2.jpg" alt style="width: 100%; ">
            </div>
            <div>
                <img src="assets/img/top3.jpg" alt style="width: 100%; ">
            </div>
            <div>
                <img src="assets/img/top4.jpg" alt style="width: 100%; ">
            </div>
        </div>
        <div class="top_text">
            <img src="assets/img/text.jpg" alt style="width: 100%;">
        </div>
    </section>

    <section>
        <div class="sec_container">
            <div class="sec_b">
            <div class="sec_block">
                <img src="assets/img/sec_pic1.jpg" alt style="width: 100%;">
                <img src="assets/img/sec_pic2.jpg" alt style="width: 100%;">  
            </div>    
        </div>  
        </div>
    </section>
    <section>
        <div class="third_container">
        </div>
    </section>
    <section>
        <div class="fourth_container">
            <div class="side">
                <img src="assets/img/fourth_pic.jpg" alt style="width: 100%;">
            </div>
            <div class="hottext">
                熱賣商品 &nbsp;!!!!!
            </div>
            <div class="hotarea">
                <%
                Class.forName("com.mysql.jdbc.Driver");
                String url1="jdbc:mysql://localhost/";
                Connection con1=DriverManager.getConnection(url1,"root","1234");
                String sql1="USE `jp_snake`";
                request.setCharacterEncoding("utf-8");
                con1.createStatement().execute(sql1);
                sql1="SELECT * FROM jp_snake.jp_products ORDER BY sold DESC limit 0,1";
                ResultSet hb1=con1.createStatement().executeQuery(sql1);
                while(hb1.next()){
                %>
                <form method="POST" action="detail.jsp" class="hotbox">              
                <div class="hotitem">
                    <div  class="hotitem_pic">
                        <img src="<%=hb1.getString("Img")%>" alt style="width: 100%;">
                    </div>
                    <div class="hotitem_detail">
                        <div style="position: relative; z-index: 0;">
                            <input type="submit"style="position: absolute; top:-200px; opacity:0; width: 250px; height: 350px;" value="<%=hb1.getString("Shortname")%>">
                        </div>
                        <div class="text">
                            <h1 >NO. 1</h1>
                            <br><%=hb1.getString("Shortname")%>

                        </div>
                    </div>           
                    <input type="hidden" name="product_ID" value='<%=hb1.getString("ID")%>'>
                </div><%}%>
                </form>
                <%
                Class.forName("com.mysql.jdbc.Driver");
                String url2="jdbc:mysql://localhost/";
                Connection con2=DriverManager.getConnection(url2,"root","1234");
                String sql2="USE `jp_snake`";
                request.setCharacterEncoding("utf-8");
                con2.createStatement().execute(sql2);
                sql2="SELECT * FROM jp_snake.jp_products ORDER BY sold DESC limit 1,1";
                ResultSet hb2=con2.createStatement().executeQuery(sql2);
                while(hb2.next()){
                %>
                <form method="POST" action="detail.jsp" class="hotbox">              
                <div class="hotitem">
                    <div  class="hotitem_pic">
                        <img src="<%=hb2.getString("Img")%>" alt style="width: 100%;">
                    </div>
                    <div class="hotitem_detail" >
                        <div style="position: relative; z-index: 0;">
                            <input type="submit"style="position: absolute; top:-200px; opacity:0; width: 250px; height: 350px;" value="<%=hb2.getString("Shortname")%>">
                        </div>
                        <div class="text">
                            <h1 >NO. 2</h1>
                            <br><%=hb2.getString("Shortname")%>
                        </div>
                    </div>     
                    <input type="hidden" name="product_ID" value='<%=hb2.getString("ID")%>'>      
                </div><%}%>
                </form>
                <%
                Class.forName("com.mysql.jdbc.Driver");
                String url3="jdbc:mysql://localhost/";
                Connection con3=DriverManager.getConnection(url3,"root","1234");
                String sql3="USE `jp_snake`";
                request.setCharacterEncoding("utf-8");
                con3.createStatement().execute(sql3);
                sql3="SELECT * FROM jp_snake.jp_products ORDER BY sold DESC limit 2,1";
                ResultSet hb3=con3.createStatement().executeQuery(sql3);
                while(hb3.next()){
                %>
                <form method="POST" action="detail.jsp" class="hotbox">              
                <div class="hotitem">
                    <div  class="hotitem_pic">
                        <img src="<%=hb3.getString("Img")%>" alt style="width: 100%;">
                    </div>
                    <div class="hotitem_detail">
                        <div style="position: relative; z-index: 0;">
                            <input type="submit"style="position: absolute; top:-200px; opacity:0; width: 250px; height: 350px;" value="<%=hb3.getString("Shortname")%>">
                        </div>
                        <div class="text">
                            <h1 >NO. 3</h1>
                            <br><%=hb3.getString("Shortname")%>
                        </div>
                    </div>    
                    <input type="hidden" name="product_ID" value='<%=hb3.getString("ID")%>'>       
                </div><%}%>
                </form>
            </div>
        </div>
    </section>
    <section>
        <div class="fifth_container">
        </div>
    </section>
            <% con1.close(); %>
            <% con2.close(); %>
            <% con3.close(); %>
    
</main>
<%@ include file="footer.jsp"%>
</body>
</html>