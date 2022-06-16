<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/basic.css">
    <link rel="stylesheet" href="assets/css/product.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/cart.css">
    <script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/slider.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/cart.js"></script>
    <title>商品頁面</title>
</head>
<body>
    <%@ include file="header.jsp"%>
    <main>
        <section>
            <div class="all">
                <div id="slide">
                    <ul>
                        <li><img src="assets/img/cm1.jpg" alt="img1"></li>
                        <li><img src="assets/img/cm2.jpg" alt="img2"></li>
                        <li><img src="assets/img/cm3.jpg" alt="img3"></li>
                        <li><img src="assets/img/cm4.jpg" alt="img4"></li>
                    </ul>
                    <button id="prevBtn"><img src="assets/img/prev.png" width="33" height="55" alt="Prev"></button>
                    <button id="nextBtn"><img src="assets/img/next.png" width="33" height="55" alt="Next"></button>
                </div>
                <div class="zone" id="lotte">
                    <p class="title">LOTTE<span class="title_jp">ロッテ</span></p>
                    <div class="group">
                        <%
                        Class.forName("com.mysql.jdbc.Driver");
                        String url1="jdbc:mysql://localhost/";
                        Connection con1=DriverManager.getConnection(url1,"root","1234");
                        String sql1="USE `jp_snake`";
                        request.setCharacterEncoding("utf-8");
                        con1.createStatement().execute(sql1);
                        sql1="SELECT * FROM `jp_products` WHERE Type='lt'";
                        ResultSet rs1=con1.createStatement().executeQuery(sql1);
                        while(rs1.next()){
                        %>

                    <form method="post" action="detail.jsp">
                        <div class="area">
                            <input type="image" src='<%=rs1.getString("Img")%>' class="product_pic">
                            <p class="pn_p"><input type="submit" value='<%=rs1.getString("Shortname")%>' class="product_name"></p>
                            <div class="product_price">$<%=rs1.getString("Price")%></div>
                            <div class="product_sold">已售出:<%=rs1.getString("sold")%></div>
                            <input type="hidden" name="product_ID" value='<%=rs1.getString("ID")%>' >
                        </div>
                    </form>
                    <%}%>
                    </div>
                </div>
                        
                <div class="zone" id="Glico">
                    <p class="title">Glico<span class="title_jp">江崎グリコ</span></p>
                    <div class="group">
                        <%
                        Class.forName("com.mysql.jdbc.Driver");
                        String url2="jdbc:mysql://localhost/";
                        Connection con2=DriverManager.getConnection(url2,"root","1234");
                        String sql2="USE `jp_snake`";
                        request.setCharacterEncoding("utf-8");
                        con2.createStatement().execute(sql2);
                        sql2="SELECT * FROM `jp_products` WHERE Type='glc'";
                        ResultSet rs2=con2.createStatement().executeQuery(sql2);
                        while(rs2.next()){
                        %>
                        <form method="post" action="detail.jsp">
                            <div class="area">
                                <input type="image" src="<%=rs2.getString("Img")%>" class="product_pic">
                                <p class="pn_p"><input type="submit" value="<%=rs2.getString("Shortname")%>" class="product_name"></p>
                                <div class="product_price">$<%=rs2.getString("Price")%></div>
                                <div class="product_sold">已售出:<%=rs2.getString("sold")%></div>
                                <input type="hidden" name="product_ID" value='<%=rs2.getString("ID")%>' >
                            </div>
                        </form>
                        <%}%>
                    </div>
                </div>

                <div class="zone" id="Bourbon">
                    <p class="title">Bourbon<span class="title_jp">ブルボン</span></p>
                    <div class="group">
                        <%
                        Class.forName("com.mysql.jdbc.Driver");
                        String url3="jdbc:mysql://localhost/";
                        Connection con3=DriverManager.getConnection(url3,"root","1234");
                        String sql3="USE `jp_snake`";
                        request.setCharacterEncoding("utf-8");
                        con3.createStatement().execute(sql3);
                        sql3="SELECT * FROM `jp_products` WHERE Type='bbn'";
                        ResultSet rs3=con3.createStatement().executeQuery(sql3);
                        while(rs3.next()){
                        %>
                        <form method="post" action="detail.jsp">
                            <div class="area">
                                <input type="image" src="<%=rs3.getString("Img")%>" class="product_pic">
                                <p class="pn_p"><input type="submit" value="<%=rs3.getString("Shortname")%>" class="product_name"></p>
                                <div class="product_price">$<%=rs3.getString("Price")%></div>
                                <div class="product_sold">已售出:<%=rs3.getString("sold")%></div>
                                <input type="hidden" name="product_ID" value='<%=rs3.getString("ID")%>' >
                            </div>
                        </form>
                        <%}%>
                    </div>
                </div>

                <div class="zone" id="mikakutou">
                    <p class="title">味覺糖<span class="title_jp">味覚糖</span></p>
                    <div class="group">
                        <%
                        Class.forName("com.mysql.jdbc.Driver");
                        String url4="jdbc:mysql://localhost/";
                        Connection con4=DriverManager.getConnection(url4,"root","1234");
                        String sql4="USE `jp_snake`";
                        request.setCharacterEncoding("utf-8");
                        con4.createStatement().execute(sql4);
                        sql4="SELECT * FROM `jp_products` WHERE Type='mkt'";
                        ResultSet rs4=con4.createStatement().executeQuery(sql4);
                        while(rs4.next()){
                        %>
                        <form method="post" action="detail.jsp">
                            <div class="area">
                                <input type="image" src="<%=rs4.getString("Img")%>" class="product_pic">
                                <p class="pn_p"><input type="submit" value="<%=rs4.getString("Shortname")%>" class="product_name"></p>
                                <div class="product_price">$<%=rs4.getString("Price")%></div>
                                <div class="product_sold">已售出:<%=rs4.getString("sold")%></div>
                                <input type="hidden" name="product_ID" value='<%=rs4.getString("ID")%>' >
                            </div>
                        </form>
                        <%}%>
                    </div>
                </div>

                <div class="zone" id="other">
                    <p class="title">其它<span class="title_jp">他の</span></p>
                    <div class="group">
                        <%
                        Class.forName("com.mysql.jdbc.Driver");
                        String url5="jdbc:mysql://localhost/";
                        Connection con5=DriverManager.getConnection(url5,"root","1234");
                        String sql5="USE `jp_snake`";
                        request.setCharacterEncoding("utf-8");
                        con5.createStatement().execute(sql5);
                        sql5="SELECT * FROM `jp_products` WHERE Type='other'";
                        ResultSet rs5=con5.createStatement().executeQuery(sql5);
                        while(rs5.next()){
                        %>
                        <form method="post" action="detail.jsp">
                            <div class="area">
                                <input type="image" src="<%=rs5.getString("Img")%>" class="product_pic">
                                <p class="pn_p"><input type="submit" value="<%=rs5.getString("Shortname")%>" class="product_name"></p>
                                <div class="product_price">$<%=rs5.getString("Price")%></div>
                                <div class="product_sold">已售出:<%=rs5.getString("sold")%></div>
                                <input type="hidden" name="product_ID" value='<%=rs5.getString("ID")%>' >
                            </div>
                        </form>
                        <%}%>
                    </div>
                </div>
            </div>

            <% con1.close(); %>
            <% con2.close(); %>
            <% con3.close(); %>
            <% con4.close(); %>
            <% con5.close(); %>
        </section>
    </main>
    <%@ include file="footer.jsp"%>
</body>
</html>