<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
    <footer>
        <div class="last_container">
            <div class="lastbox">
                <div class="lastrow1">
                    <img src="assets/img/logo.jpg" alt style="width: 100%;"> 
                </div>
                <div class="lastrow2">
                    <img src="assets/img/logo1.jpg" alt style="width: 100%;">
                </div>
                <div class="lastrow3">
                    <div class="foottitle">
                        連絡先 .
                    </div>
                    <div class="footdetail">
                        <a href="mailto:doris91010114@gmail.com?subject=我的建議">
                            聯絡我們↗</a><br><br>
                        <a href="./about.jsp">關於我們↗</a>
                        <br><br>TEL:+886-3-218-8080
                    </div>
                </div>
            </div>
            <hr >
            <div class="copyright">
                Copyright©&nbsp;2022 CYIM Right.
                <br>
                網頁預覽人數:<%@ include file="counter.jsp"
                %>人
            </div>
        </div>
    </footer>
</body>