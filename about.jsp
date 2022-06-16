<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/basic.css">
    <link rel="stylesheet" href="assets/css/about.css">
    <link rel="stylesheet" href="assets/css/cart.css">
    <script src="assets/js/jquery-2.1.4.min.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/about.js"></script>
    <script src="assets/js/cart.js"></script>
    <title>關於我們</title>
</head>
<body>
    <%@ include file="header.jsp"%>

    <main>
        <!--自我介紹-->
        <div class="about_container">
            <div class="selfbox">
                <div class="self_img">
                    <img src="assets/img/about2.jpg" alt style="width: 100%;"></div>
                <div class="self_txt">
                    <h2>呉孟軒</h2>
                    <br><hr><br>
                    <p>前端開發</p><br>
                    <div class="self_ig">
                        <a href="https://z-p15.www.instagram.com/mason1129v/?hl=zh-tw" target="_blank"><img src="assets/img/about_ig.jpg" alt style="width: 100%;"></a>
                        <a href="https://www.facebook.com/profile.php?id=100012178399305" target="_blank"><img src="assets/img/fb.jpg" alt style="width: 100%;"></a>
                    </div>
                    <div class="self_word" id="wu1">
                        <span class="1">瀏覽心得</span>
                    </div>
                    <div class="self_word_txt" id="wu2">
                        <p class="swtp"><br>有了上學期做後端的經驗，這次製作前端就更清楚要如何設計才能前後搭配，減少功能對應不上的問題，這次到收尾階段我還因為確診而倒下稍微延後了進度，感謝庭妤對我的包容及幇助，也謝謝後端的兩位對我們不催促，讓我們能比較沒壓力地放揮去完成這次專案。</p>                    </div>
                </div>
            </div>
            <div class="selfbox">
                <div class="self_img">
                    <img src="assets/img/about1.jpg " alt style="width: 100%;">
                </div>
                <div class="self_txt">
                <h2>林庭妤</h2>
                    <br><hr><br>
                    <p>前端開發</p><br>
                    <div class="self_ig">
                        <a href="https://z-p15.www.instagram.com/_t.yuu/?hl=zh-tw" target="_blank"><img src="assets/img/about_ig.jpg" alt style="width: 100%;"></a>
                        <a href="https://www.facebook.com/t.yuulin/" target="_blank"><img src="assets/img/fb.jpg" alt style="width: 100%;"></a>
                    </div>
                    <div class="self_word" id="lin1">
                        <span class="1">瀏覽心得</span>
                    </div>
                    <div class="self_word_txt" id="lin2">
                        <p class="swtp"><br>這學期換我們做前端的部分，可能是因為程式不強的關係，所以後端做起來較吃力，而前端是屬於視覺上的反倒做起來有趣許多，但還是有許多地方還需要加強以及研究!
                        還是要感謝我的partner孟軒依舊這麼罩，希望這次專題順利也希望大家喜歡這次的主題，同時也辛苦後端的伃萱和貝伃了!!</p>
                    </div>
            </div>
            </div>
        
            <div class="selfbox">
                <div class="self_img">
                    <img src="assets/img/about3.jpg" alt style="width: 100%;">
                </div>
                <div class="self_txt">
                    <h2>唐伃萱</h2>
                    <br><hr><br>
                    <p>後端開發</p><br>
                    <div class="self_ig">
                    <a href="https://z-p15.www.instagram.com/shana_480/?hl=zh-tw" target="_blank"><img src="assets/img/about_ig.jpg" alt style="width: 100%;"></a>
                    <a href="https://www.facebook.com/profile.php?id=100004002536687" target="_blank"><img src="assets/img/fb.jpg" alt style="width: 100%;"></a>
                </div>   
                <div class="self_word" id="tang1">
                    <span class="1">瀏覽心得</span>
                </div>
                <div class="self_word_txt" id="tang2">
                    <p class="swtp"><br>這學期是負責後端，需要很多程式邏輯才寫得出來，過程中也遇到不少問題，但覺得寫出來真的超有成就感！也很感謝前端的兩位這麼凱瑞，把網頁做得很漂亮功能也都有齊全，讓我們可以很順利的完成後端的部分。希望自己可以在程式這方面繼續努力，做出更棒的作品。</p>
                </div>
            </div>
            </div>
            <div class="selfbox">
                <div class="self_img">
                    <img src="assets/img/about4.jpg" alt style="width: 100%;">
                </div>
                    <div class="self_txt">
                        <h2>張貝伃</h2>
                        <br><hr><br>
                        <p>後端開發</p><br>
                        <div class="self_ig">
                        <a href="https://z-p15.www.instagram.com/c_yu.11/?hl=zh-tw" target="_blank"><img src="assets/img/about_ig.jpg" alt style="width: 100%;"></a>
                        <a href="https://www.facebook.com/profile.php?id=100005158380187" target="_blank"><img src="assets/img/fb.jpg" alt style="width: 100%;"></a>
                    </div>
                    <div class="self_word" id="chang1">
                        <span class="1">瀏覽心得</span>
                    </div>
                    <div class="self_word_txt" id="chang2">
                        <p class="swtp"><br>這次負責後端編寫，真的是讓我吃了很多苦……因為我程式邏輯沒有很強，但超級感謝我的趴呢很罩我，遇到500都會來幫我debug，還有就是前端的兩位朋友幫我們都把form表單寫好，遇到不清楚的地方也會耐心解釋，希望未來可以慢慢加強程式邏輯的能力讓自己可以獨力完成前後端。</p>
                    </div>
                </div>
            </div>
        </div>

        <!--聯絡我們/地圖-->
        <div class="about_sec_container">
            <div class="sec_left">
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d210000.83826335543!2d135.40768086663238!3d34.673308718891825!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6000e6553406e2e1%3A0xc55bc16ee46a2fe7!2z5pel5pys5aSn6Ziq5bqc5aSn6Ziq5biC!5e0!3m2!1szh-TW!2stw!4v1654187418454!5m2!1szh-TW!2stw" 
                    width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
            <div class="sec_right">
                
                <form method="post" action="mailto:doris91010114@gmail.com?subject=FinalProject-quentions">
                    <h1 style="color:#9e7a7a;">聯絡我們</h1><br>
                        <p style="font-size: 25px; color: #9e7a7a;">姓名</p>
                        <input  class="right_box" type="text" id="feedbackname"><br>

                        <p style="font-size: 25px;color: #9e7a7a;">電子郵件</p>
                        <input  class="right_box" type="text" id="feedbackemail"><br>

                        <p style="font-size: 25px;color: #9e7a7a;">任何問題 / 建議</p>
                        <input  class="right_box1" type="text" id="feedbackemail"><br>
                        
                        <div class="btn_group">
                        <input type="submit" class="btn_box" value="送出">
                        <input type="reset" class="btn_box" value="取消" >
                    </div>
                </form>
            </div>
        </div>

    </main>
    <%@ include file="footer.jsp"%>

</body>
</html>