<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/basic.css">
    <title>後臺管理</title>
</head>
<body>
    <header>
        <div class="title">
            アカシ&nbsp;後臺管理介面
        </div>
    </header>
<span id="tab-1">登出</span>
<span id="tab-2">商品新增</span>
<span id="tab-3">商品修改</span>
<span id="tab-4">商品刪除</span>
<span id="tab-5">預覽訂單</span>


<!-- 頁籤按鈕 -->
<div id="tab">
    <ul>
        <li><a href="./logout.jsp">登出</a></li>
        <li><a href="#tab-2">商品新增</a></li>
        <li><a href="#tab-3">商品修改</a></li>
        <li><a href="#tab-4">商品刪除</a></li>
        <li><a href="#tab-5">預覽訂單</a></li>
    </ul>
    <div class="tab-content-1"><br>點選右方按鈕進行商品調整</div>
    <!-- 產品新增 -->
    <div class="tab-content-2">
        <form action="b_new.jsp">
            <div class="group">
                <label for="text_1">瀏覽用品名(Shortname) :</label>
                <input type="text" id="text_1" name="Shortname" value="">
            </div>
            <div class="group">
                <label for="text_2">品名(Fullname) :</label>
                <input type="text" id="text_2" name="Fullname" value="">
            </div>
            <div class="group">
                <label for="text_3">品名(日)(Jpname) :</label>
                <input type="text" id="text_3" name="Jpname" value="">
            </div>
            <div class="group">
                <label for="text_4">價錢(NT)Price :</label><br>
                <input type="text" id="text_4" name="Price" value="">
            </div>
            <div class="group">
                <label for="text_5">品牌Brand :</label>
                <input type="text" id="text_5" name="Brand" value="">
            </div>
            <div class="group">
                <label for="text_6">品牌官網BrandWebsite :</label>
                <input type="text" id="text_6" name="BrandWebsite" value="">
            </div>
            <div class="group">
                <label for="text_7">製造地PlaceOfOrigin :</label>
                <input type="text" id="text_7" name="PlaceOfOrigin" value="">
            </div>
            <div class="group">
                <label for="text_8">保存期限ShelfLife</label>
                <input type="text" id="text_8" name="ShelfLife" value="">
            </div>
            <div class="group">
                <label for="text_9">份量Weight :</label>
                <input type="text" id="text_9" name="Weight" value="">
            </div>
            <div class="group">
                <label for="text_10">主圖片Img</label>
                <input type="text" id="text_10" name="Img" value="">
            </div>
            <div class="group">
                <label for="text_11">圖片1 Img1</label>
                <input type="text" id="text_11" name="Img1" value="">
            </div>
            <div class="group">
                <label for="text_12">圖片2 Img2</label>
                <input type="text" id="text_12" name="Img2" value="">
            </div>
            <div class="group">
                <label for="text_13">圖片3 Img3</label>
                <input type="text" id="text_13" name="Img3" value="">
            </div>
            <div class="group">
                <label for="text_13">類別 Type</label>
                <input type="text" id="text_13" name="Type" value="">
            </div>
            <div class="group">
                <label for="text_13">庫存 Inventory</label>
                <input type="text" id="text_13" name="Inventory" value="">
            </div>
            <div class="group">
                <input type="submit" value="新增商品" class="btn">
                <input type="reset" value="重新設定" class="rst">
            </div>
        </form>
    </div>

    <!-- 產品修改 -->
    <div class="tab-content-3">
        <form action="b_revise.jsp">
		<div class="group">
                <label for="text_1">商品ID :</label>
                <input type="text" id="text_1" name="ID" value="">
            </div>
            <div class="group">
                <label for="text_1">瀏覽用品名(Shortname) :</label>
                <input type="text" id="text_1" name="Shortname" value="">
            </div>
            <div class="group">
                <label for="text_2">品名(Fullname) :</label>
                <input type="text" id="text_2" name="Fullname" value="">
            </div>
            <div class="group">
                <label for="text_3">品名(日)(Jpname) :</label>
                <input type="text" id="text_3" name="Jpname" value="">
            </div>
            <div class="group">
                <label for="text_4">價錢(NT)Price :</label><br>
                <input type="text" id="text_4" name="Price" value="">
            </div>
            <div class="group">
                <label for="text_5">品牌Brand :</label>
                <input type="text" id="text_5" name="Brand" value="">
            </div>
            <div class="group">
                <label for="text_6">品牌官網BrandWebsite :</label>
                <input type="text" id="text_6" name="BrandWebsite" value="">
            </div>
            <div class="group">
                <label for="text_7">製造地PlaceOfOrigin :</label>
                <input type="text" id="text_7" name="PlaceOfOrigin" value="">
            </div>
            <div class="group">
                <label for="text_8">保存期限ShelfLife</label>
                <input type="text" id="text_8" name="ShelfLife" value="">
            </div>
            <div class="group">
                <label for="text_9">份量Weight :</label>
                <input type="text" id="text_9" name="Weight" value="">
            </div>
            <div class="group">
                <label for="text_10">主圖片Img</label>
                <input type="text" id="text_10" name="Img" value="">
            </div>
            <div class="group">
                <label for="text_11">圖片1 Img1</label>
                <input type="text" id="text_11" name="Img1" value="">
            </div>
            <div class="group">
                <label for="text_12">圖片2 Img2</label>
                <input type="text" id="text_12" name="Img2" value="">
            </div>
            <div class="group">
                <label for="text_13">圖片3 Img3</label>
                <input type="text" id="text_13" name="Img3" value="">
            </div>
            <div class="group">
                <label for="text_13">類別 Type</label>
                <input type="text" id="text_13" name="Type" value="">
            </div>
            <div class="group">
                <label for="text_13">庫存 Inventory</label>
                <input type="text" id="text_13" name="Inventory" value="">
            </div>
            <div class="group">
                <input type="submit" value="修改商品" class="btn">
                <input type="reset" value="重新設定" class="rst">
            </div>
        </form>
    </div>

    <!-- 產品刪除 -->
    <div class="tab-content-4">
        <form action="b_delete.jsp">
            <div class="group">
                <label for="text_1">品名(Fullname)：</label>
                <input type="text" id="text_1" name="Fullname" value="">
            </div>
            <div class="group">
                <input type="submit" value="刪除商品" class="btn">
                <input type="reset" value="重新設定" class="rst">
            </div>
        </form>
    </div>

    <!-- 預覽訂單 -->
    <div class="tab-content-5">
        <%
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost/";
        Connection con=DriverManager.getConnection(url,"root","1234");
        String sql="USE `jp_snake`";
        request.setCharacterEncoding("utf-8");
        con.createStatement().execute(sql);
		
		sql="SELECT * FROM `jp_orders`,`jp_ordersdetail` WHERE  jp_orders.order_email = jp_ordersdetail.user_ID";
		
		ResultSet rs=con.createStatement().executeQuery(sql);
	  
	    while(rs.next()){
        %>		
            <p>訂單編號 : <%=rs.getString("order_ID")%></p>
            <p>訂購人姓名 :<%=rs.getString("buyername")%></p>
            <p>訂購人電話 :<%=rs.getString("buyerphone")%></p>
            <p>訂購人信箱 :<%=rs.getString("buyeremail")%></p>
            <p>訂購人地址 :<%=rs.getString("buyeraddress")%></p>
            <hr style="height:2px;border:none;border-top:2px dashed #838485;" />
        <%}%> 
    </div>
    <% con.close();%>
</div>
</body>
</html>