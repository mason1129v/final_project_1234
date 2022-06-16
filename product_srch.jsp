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
        <%
		  Class.forName("com.mysql.jdbc.Driver");
          String urls="jdbc:mysql://localhost/";
          Connection cons=DriverManager.getConnection(urls,"root","1234");
          String sqls="USE `jp_snake`";
          request.setCharacterEncoding("utf-8");
          cons.createStatement().execute(sqls);
		  String search = request.getParameter("search");
		%>
        <section>
            <div class="zone">
                <p class="title"><%=search%><span class="title_jp">的搜尋結果</span></p>
                <%
                        sqls="SELECT * FROM jp_products WHERE Shortname OR Fullname LIKE '%"+search+"%' ";
		  
		                ResultSet rss=cons.createStatement().executeQuery(sqls);
                        while(rss.next()){
			    %>
                <div class="group">
                    <form method="post" action="detail.jsp">
                    <div class="area">
                        <input type="image" src='<%=rss.getString("Img")%>' class="product_pic">
                        <p class="pn_p"><input type="submit" value='<%=rss.getString("Shortname")%>' class="product_name"></p>
                        <div class="product_price">$<%=rss.getString("Price")%></div>
                        <div class="product_sold">已售出:<%=rss.getString("sold")%></div>
                        <input type="hidden" name="product_ID" value='<%=rss.getString("ID")%>' >
                    </div>
                </form>
                </div>
                <%}%>
            </div>
        </section>
        <% cons.close(); %>
    </main>
</body>
<%@ include file="footer.jsp"%>
</html>