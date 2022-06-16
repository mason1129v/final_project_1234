<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/basic.css">
    <link rel="stylesheet" href="assets/css/detail.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/cart.css">
    <script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/circle_btn.js"></script>
    <script src="assets/js/cart.js"></script>
    <script src="assets/js/star.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>商品詳細資訊</title>
</head>

<body>
    <%@ include file="header.jsp"%>
    <main>
        <section>
            <div class="all">
                <div class="zone">
                    <form method="post" action="product.jsp">
                        <input type="submit" value="返回/戻る" class="backbtn">
                    </form>
                    <div class="wrap_pic">
                        <%
                        String id =(String) request.getAttribute("product_ID");
                        if (id==null) 
                        {
                        id=request.getParameter("product_ID");    
                        }
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        String url1="jdbc:mysql://localhost/";
                        Connection con1=DriverManager.getConnection(url1,"root","1234");
                        String sql1="USE `jp_snake`";
                        request.setCharacterEncoding("utf-8");
                        con1.createStatement().execute(sql1);
	                    sql1 = "SELECT * FROM `jp_products` WHERE `ID`="+id;
	                    ResultSet pd =  con1.createStatement().executeQuery(sql1);                 
	                    while(pd.next())
	                    {
                        %>
                        <div id="detail_mpic">
                            <ul>
                                <li><img src="<%=pd.getString("Img")%>" alt="img1"></li>
                                <li><img src="<%=pd.getString("Img1")%>" width="1000" height="500" alt="img2"></li>
                                <li><img src="<%=pd.getString("Img2")%>" width="1000" height="500" alt="img3"></li>
                                <li><img src="<%=pd.getString("Img3")%>" width="1000" height="500" alt="img4"></li>
                                
                            </ul>
                        </div>
                        <div id="circle_btn">
                            <ul>
                                <li><a href="#" class="target">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="detail_wrap">
                        <p class="detail_name_jp"><%=pd.getString("Jpname")%></p>
                        <p class="detail_name"><%=pd.getString("Fullname")%></p>
                        <div class="detail_info">
                            <p class="detail_price"><%=pd.getString("Price")%><span class="nt"> NT$</span></p>
                            <a href="<%=pd.getString("BrandWebsite")%>" class="detail_com" target="_blank"><p class="details"><%=pd.getString("Brand")%></p></a>
                            <p class="details"><%=pd.getString("PlaceOfOrigin")%></p>
                            <p class="details"><%=pd.getString("Weight")%></p>
                            <p class="details"><span style="text-decoration: underline; font-size:40px;"><%=pd.getString("comment")%></span>則評價</p>
                        </div>
                        <div class="tobuy">
                            <p class="details">庫存量：<%=pd.getString("Inventory")%></p>
                            <p class="details">已售出：<%=pd.getString("sold")%></p>
                            <form method="post" action="cartcheck.jsp">
                                <p class="details">購買數量：<input type="number"  value="1" min="1" max="<%=Integer.parseInt(pd.getString("Inventory"))%>" name="quantity" class="input_num"></p>
                                <img src="assets/img/cart.png" class="cart_icon"><input type="submit" onclick="this.disabled=true;this.form.submit()" value="加入購物車" class="put_in_cart">
                                <input type="hidden" name="cartid" value='<%=pd.getString("ID")%>' >
                            </form>
                        </div>
                    </div>
                    <%}%>
                    
                    <hr class="long">
                    <div class="cmt">
                        
                        <p class="r_title">顧客評價<span class="r_title_jp">お客様のコメント</span></p>
                        <div class="cmt_show">
                        <%
                        sql1 = "SELECT * FROM `jp_board` WHERE ID = '"+id+"' ORDER BY putdate DESC";
                        ResultSet content = con1.createStatement().executeQuery(sql1);
          
                        while (content.next())
                        {  
                        %>
                            <div class="cmt_sqr">
                                <span class="cmt_name"><%=content.getString("name")%></span>
                                <span class="cmt_name">|</span>
                                <span class="cmt_name"><%=content.getString("putdate")%></span>
                                <span class="cmt_name">|</span>
                                <span class="cmt_name">&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</span>
                                <div class="suggestion"><%=content.getString("comment")%></div>      
                                <hr class="cmt_hr">                 
                            </div>
                        <%
                        }          
                        %>
                        </div>
                        
                    </div>
                    <div class="write_cmt">
                        <p class="rr_title">留言<span class="r_title_jp">コメントする</span></p>
                        <form method="post" action="add_content.jsp" id="addcmt" class="cmt_area">
                            <input type="hidden" name="id" value="<%=request.getParameter("product_ID")%>">
                            <p class="cmt_name">姓名：<input type="text" id="name" name="name" form="addcmt" placeholder="輸入姓名" class="input_n" required></p>
                            <div class="star" id="submit_stars" onmousemove="move(event,0)" onclick="move(event,1)" onmouseout="move(event,0)">
                                <div class="empty_star">&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</div>
                                <div class="full_star" id="full_star">&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</div>
                                <input type="text" id="full_star_value" name="star" value="1" style="display:none;">
                            </div>
                            <p class="cmt_name">評價内容：</p>
                            <textarea id="comment" name="comment" form="addcmt" placeholder="輸入評價" required class="input_c"></textarea>
                            <input type="submit" class="input_s" value="送出">
                        </form>
                    </div>
                    <hr class="long">
                    <div class="recommend">
                        <p class="r_title">推薦商品<span class="r_title_jp">おすすめ</span></p>
                        <div class="wrap_rcm">
                        <%
                        Class.forName("com.mysql.jdbc.Driver");
                        String url2="jdbc:mysql://localhost/";
                        Connection con2=DriverManager.getConnection(url2,"root","1234");
                        String sql2="USE `jp_snake`";
                        request.setCharacterEncoding("utf-8");
                        con2.createStatement().execute(sql2);
                        sql2="SELECT * FROM jp_products  ORDER BY rand() limit 4";
                        ResultSet rc=con2.createStatement().executeQuery(sql2);
                        while(rc.next()){
                        %>
                            <form method="post" action="detail.jsp" >
                                <div class="area">
                                    <input type="image" src="<%=rc.getString("Img")%>" class="img_rcm">
                                    <p class="pn_p"><input type="submit" value="<%=rc.getString("Shortname")%>" class="product_name"></p>
                                    <input type="hidden" name="product_ID" value='<%=rc.getString("ID")%>' >
                                </div>
                            </form>
                        <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <% con1.close(); %>
    </main>
    <%@ include file="footer.jsp"%>
</body>
</html>