<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/intro.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/basic.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/cart.css">
    <script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/cart.js"></script>
    <title>アカシ簡介</title>
</head>
<body>
    <%@ include file="header.jsp"%>
    <main>
        <audio id="music" autoplay="" controls="" loop="loop" preload="auto" src="assets/mp3/akashi.mp3"></audio>
        <div>
            <button class="mute" onclick="document.getElementById('music').muted=!document.getElementById('music').muted">音樂開關</button>
        </div>
        <section>
            <div class="intro_zone">
                <img src="assets/img/logo.jpg" class="logoback">
                <p class="intro_title">アカシ簡介</p>
                <p class="intro_content">駄菓子屋在日本相當於台灣的柑仔店<br>
                    結合舊世代的回憶和網路發達的新世代<br>
                    駄菓子屋アカシ這個以販賣日本相關零食的網路商城正式誕生<br><br>
                    從flumpool的<証>,到五月天所填詞的<証明>,串起了台日的友好<br>
                    而我們也以和<証>相同讀音的<アカシ>,持續聯繁起兩地的情誼<br><br>
                    無論是童年記憶中的零食,還是在疫情影響下對日本的嚮往<br>
                    都能在アカシ找回那些感覺</p>
                    <p class="comp_name">駄菓子屋アカシ</p>
            </div>
        </section>
    </main>
    <%@ include file="footer.jsp"%>
</body>
</html>