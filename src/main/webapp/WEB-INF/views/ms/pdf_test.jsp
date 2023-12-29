<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Swiper demo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

    <!-- Demo styles -->
    <style>

        #cycle-detail-slide {
            width: 35%;
            height: 35vw;
            margin-left: 1vw;
        }

        .swiper-v {
            width: 100%;
        }

        .swiper-slide {
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 18px;
            font-size: 22px;
            font-weight: bold;
            /*color: #fff;*/
        }

        img {
            width: 100%;
        }

        .metro-city-btn-menu {
            display: flex;
            justify-content: center;
        }

        .metro-city-btns {
            display: flex;
            justify-content: space-evenly;
            width: 60%;
        }

        .metro-city-btn {
            font-family: 'SOYOMapleBoldTTF';
            width: 2vw;
            height: 1vw;
            display: inline-block;
            padding: 1vw 2vw;
            font-size: 1vw;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            border: none;
            border-radius: 5%;
        }

        .orange-btn {
            color: #fff;
            background-color: #F78F3A;
            box-shadow: 0 0.7vw #71431E;
        }

        .orange-btn:hover {
            background-color: #CE6E1F
        }

        .orange-btn:active {
            background-color: #CE6E1F;
            box-shadow: 0 5px #71431E;
            transform: translateY(4px);
        }

        .pink-btn {
            color: #fff;
            background-color: #FC76AC;
            box-shadow: 0 0.7vw #9C2A57;
        }

        .pink-btn:hover {
            background-color: #DA4983
        }

        .pink-btn:active {
            background-color: #DA4983;
            box-shadow: 0 5px #9C2A57;
            transform: translateY(4px);
        }

        .green-btn {
            color: #fff;
            background-color: #609f55;
            box-shadow: 0 0.7vw #1c4728;
        }

        .green-btn:hover {
            background-color: #3e8e41
        }

        .green-btn:active {
            background-color: #3e8e41;
            box-shadow: 0 5px #1c4728;
            transform: translateY(4px);
        }

        .blue-btn {
            color: #fff;
            background-color: #3069E5;
            box-shadow: 0 0.7vw #232A8E;
        }

        .blue-btn:hover {
            background-color: #2F5DBE
        }

        .blue-btn:active {
            background-color: #2F5DBE;
            box-shadow: 0 5px #232A8E;
            transform: translateY(4px);
        }

        /*슬라이드 시작 백그라운드 이미지 관련 코드*/
        #metro-city {
            background-image: url("/resources/static/cycle_detail/Metrocity.jpg");
            background-size: cover;
            width: 100%;
            height: 100%;
            filter: blur(2px);
            z-index: -1;
        }

        #gyeong-gi {
            background-image: url("/resources/static/cycle_detail/Gyeonggi.jpg");
            background-size: cover;
            background-position: right 40% bottom 0px;
            width: 100%;
            height: 100%;
            filter: blur(2px);
            z-index: -1;
        }

        #gang-won {
            background-image: url("/resources/static/cycle_detail/Gangwon.jpg");
            background-size: cover;
            width: 100%;
            height: 100%;
            filter: blur(2px);
            z-index: -1;
        }

        #chung-cheong {
            background-image: url("/resources/static/cycle_detail/Chungcheong.jpg");
            background-size: cover;
            width: 100%;
            height: 100%;
            filter: blur(2px);
            z-index: -1;
        }

        #gyeong-sang {
            background-image: url("/resources/static/cycle_detail/Gyeongsang.jpg");
            background-size: cover;
            width: 100%;
            height: 100%;
            filter: blur(2px);
            z-index: -1;

        }

        #jeol-la {
            background-image: url("/resources/static/cycle_detail/Jeolla.jpg");
            background-size: cover;
            width: 100%;
            height: 100%;
            filter: blur(2px);
            z-index: -1;
        }

        #jeju {
            background-image: url("/resources/static/cycle_detail/Jeju.jpeg");
            background-size: cover;
            background-position: right 60% bottom 0px;
            width: 100%;
            height: 100%;
            filter: blur(2px);
            z-index: -1;
        }

        .thumbnail-txt {
            font-family: 'SOYOMapleBoldTTF';
            position: absolute;
            color: #ffffff;
            font-size: 2vw;
            text-shadow: 2px 2px 1px #275634;
            filter: blur(0);
            z-index: 1;
        }

        /* 슬라이드 가이드 아이콘 */
        #slide-guide {
            position: absolute;
            display: none;
            z-index: 2;
            width: 30%;
            height: 30%;
            top: 50%;
            right: 10%;
        }
        #slide-guide-card:hover #slide-guide{
            display: flex;
            animation: 2.5s ease 0s 1 alternate forwards running slide-guide-motion;
        }
        @keyframes slide-guide-motion {
            0%{left: 10%; top: 50%; transform: translateX(170%)}
            50%{left: 10%; top: 50%; transform: translateX(0)}
            51%{left: 10%; top: 50%; transform: translate(170%, 50%)}
            99%{left: 10%; top: 50%; transform: translate(170%, -180%)}
            100%{visibility: hidden; left: 10%; top: 50%; transform: translate(170%, -180%)}
        }
    </style>
</head>

<body>
<!-- Swiper -->
<div class="swiper mySwiper1 swiper-h">
    <div class="swiper-wrapper">
        <div class="swiper-slide">
            <div class="swiper mySwiper2 swiper-v">
                <div class="swiper-wrapper">
                    <div class="swiper-slide" id="slide-guide-card">
                        <div id="metro-city"></div>
                        <span class="thumbnail-txt">광역시</span>
                        <div id="slide-guide"><img src="/resources/static/cycle_detail/slide-guide-icon.png"></div>
                    </div>
                    <c:forEach begin="1" end="22" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg">
                        </div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper3 swiper-v">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div id="gyeong-gi"></div>
                        <span class="thumbnail-txt">경기도</span>
                    </div>
                    <c:forEach begin="23" end="30" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg">
                        </div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper4 swiper-v">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div id="gang-won"></div>
                        <span class="thumbnail-txt">강원도</span>
                    </div>
                    <c:forEach begin="31" end="43" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg">
                        </div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper5 swiper-v">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div id="chung-cheong"></div>
                        <span class="thumbnail-txt">충청도</span>
                    </div>
                    <c:forEach begin="44" end="57" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg">
                        </div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper6 swiper-v">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div id="jeol-la"></div>
                        <span class="thumbnail-txt">전라도</span>
                    </div>
                    <c:forEach begin="58" end="80" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg">
                        </div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper7 swiper-v">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div id="gyeong-sang"></div>
                        <span class="thumbnail-txt">경상도</span>
                    </div>
                    <c:forEach begin="81" end="96" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg">
                        </div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper8 swiper-v">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div id="jeju"></div>
                        <span class="thumbnail-txt">제주도</span>
                    </div>
                    <c:forEach begin="97" end="100" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg">
                        </div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
    <div class="swiper-pagination"></div>
</div>

<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->

</body>

</html>
