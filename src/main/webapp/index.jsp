<%@page import="data.RecodeDao"%>
<%@page import="data.RecodeDto"%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="jquery.fullPage.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
            crossorigin="anonymous"></script>
    <script src="jquery.fullPage.js"></script>

    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Angkor&family=Notable&display=swap" rel="stylesheet">

    <script src="main.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <title>Document</title>
</head>
<%

RecodeDao dao=new RecodeDao();

List<RecodeDto> list=dao.getAllRecode();
    %>
<body>
<header>
    <img src="image/rd3.png" class="logo">
    <nav>
        <ul>
            <li data-menuanchor="section1"><a href="#section1">Home</a></li>
            <li data-menuanchor="section2"><a href="#section2">Album</a></li>
            <li data-menuanchor="section3"><a href="#section3">Chart</a></li>
            <li data-menuanchor="section4"><a href="#section4">Comment</a></li>
        </ul>
    </nav>
</header>
<div id="fullpage">
<%--    <img src="image/dn1.jpeg" class="dn1">--%>
    <div class="box1"></div>
    <div class="box2"></div>
    <div class="box3"></div>
    <img src="image/bcode.png" class="bcode">
    <div class="section" id="home1">
        <div class="big-title">Playlist</div>
        <div class="small-title">Recode</div>
        <video src="video720p.mp4" autoplay loop muted></video>
    </div>
    <div class="section" id="home2">
        <div class="card-container">
            <div class="Album">Album.</div>
            <div class="card">
                <img src="image/small1.jpeg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: #f8c301;">GOLDEN</p>
                </div>
            </div>
            <div class="card">
                <img src="image/small18.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: black;">Merry Go Round</p>
                </div>
            </div>
            <div class="card">
                <img src="image/smalla.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: #441df0">IT'S YOUR WAY</p>
                </div>
            </div>
            <div class="card">
                <img src="image/small17.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: white;">FEARLESS</p>
                </div>
            </div>
            <div class="card">
                <img src="image/small19.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: #e8305e">Rose Blossom</p>
                </div>
            </div>
            <div class="card">
                <img src="image/small14.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: #167bd4">BLUE MOON</p>
                </div>
            </div>
            <div class="card">
                <img src="image/small9.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: white;">ROSE</p>
                </div>
            </div>
            <div class="card">
                <img src="image/smalld.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: #d4f130">Every letter I sent you.</p>
                </div>
            </div>
            <div class="card">
                <img src="image/smalle.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: white">X</p>
                </div>
            </div>
            <div class="card">
                <img src="image/small10.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: white;">ISLAND</p>
                </div>
            </div>
            <div class="card">
                <img src="image/small21.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: white;">4:44</p>
                </div>
            </div>
            <div class="card">
                <img src="image/small11.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: #b454e7;">CHAT-SHIRE</p>
                </div>
            </div>
            <div class="card">
                <img src="image/smallb.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: #fb6eab;">SQUARE TWO</p>
                </div>
            </div>
            <div class="card">
                <img src="image/small12.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: #7d0707">Curtain Call</p>
                </div>
            </div>
            <div class="card">
                <img src="image/small20.jpg" class="card-image" alt="">
                <div class="card-body">
                    <p class="card-title" style="color: black;">LEGEND</p>
                </div>
            </div>
        </div>
    </div>
    <div class="section" id="home3">
        <div class="swiper-container">
            <div class="Chart">Chart.</div>
            <div class="swiper-wrapper">
                <div class="swiper-slide" style="background-image: url(image/1.jpg);"></div>
                <div class="swiper-slide" style="background-image: url(image/2.jpeg);"></div>
                <div class="swiper-slide" style="background-image: url(image/3.jpeg);"></div>
                <div class="swiper-slide" style="background-image: url(image/4.jpeg);"></div>
                <div class="swiper-slide" style="background-image: url(image/5.jpeg);"></div>
                <div class="swiper-slide" style="background-image: url(image/6.jpeg);"></div>
                <div class="swiper-slide" style="background-image: url(image/7.jpeg);"></div>
                <div class="swiper-slide" style="background-image: url(image/8.jpeg);"></div>
                <div class="swiper-slide" style="background-image: url(image/10.jpeg);"></div>
                <div class="swiper-slide" style="background-image: url(image/11.jpeg);"></div>
                <div class="swiper-slide" style="background-image: url(image/12.jpeg);"></div>
                <div class="swiper-slide" style="background-image: url(image/9.jpeg);"></div>
            </div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>

    </div>
    <div class="section" id="home4">
        <div class="table_section">
            <div class="Comment">Comment.Comment.Comment.</div>
            <table>
                <thead>
                <tr>
                    <th>num</th>
                    <th>title</th>
                    <th>review</th>
                    <th>score</th>
                    <th>.</th>
                </tr>
                </thead>
                <tbody>

                <% for(RecodeDto dto:list){ %>
                <tr>
                    <td><%=dto.getNum() %></td>
                    <td><%=dto.getName() %></td>
                    <td><%=dto.getReview() %></td>
                    <td><%=dto.getScore() %></td>
                    <td>
                        <button><i class="fa-solid fa-trash" onclick="location.href='recodedelete.jsp?num=<%=dto.getNum()%>'"></i></button>
                    </td>
                </tr>
                <% } %>
                </tbody>
            </table>
            <div class="lasttext"><b>Pl`aylistPl`aylistPlaylist</b></div>
        </div>
        <form action="recodeform.jsp" method="post">
            <button type="submit" style="margin-left: 85.1%; margin-top: 1%" class="fa-solid fa-pen-to-square" ></button>
        </form>
    </div>
</div>
</div>
</body>
</html>