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

        #cycle-detail-slide{
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
        .metro-city-btn-menu{
            display: flex;
            justify-content: center;
        }
        .metro-city-btns{
            display: flex;
            justify-content: space-evenly;
            width: 60%;
        }
        .metro-city-btn{
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
        .orange-btn{
            color: #fff;
            background-color: #F78F3A;
            box-shadow: 0 0.7vw #71431E;
        }
        .orange-btn:hover{
            background-color: #CE6E1F
        }
        .orange-btn:active{
            background-color: #CE6E1F;
            box-shadow: 0 5px #71431E;
            transform: translateY(4px);
        }
        .pink-btn{
            color: #fff;
            background-color: #FC76AC;
            box-shadow: 0 0.7vw #9C2A57;
        }
        .pink-btn:hover{
            background-color: #DA4983
        }
        .pink-btn:active{
            background-color: #DA4983;
            box-shadow: 0 5px #9C2A57;
            transform: translateY(4px);
        }
        .green-btn{
            color: #fff;
            background-color: #609f55;
            box-shadow: 0 0.7vw #1c4728;
        }
        .green-btn:hover{
            background-color: #3e8e41
        }
        .green-btn:active{
            background-color: #3e8e41;
            box-shadow: 0 5px #1c4728;
            transform: translateY(4px);
        }
        .blue-btn{
            color: #fff;
            background-color: #3069E5;
            box-shadow: 0 0.7vw #232A8E;
        }
        .blue-btn:hover{
            background-color: #2F5DBE
        }
        .blue-btn:active{
            background-color: #2F5DBE;
            box-shadow: 0 5px #232A8E;
            transform: translateY(4px);
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
                <div class="swiper-slide"> 광역시</div>
                    <c:forEach begin="1" end="22" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg"></div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper3 swiper-v">
                <div class="swiper-wrapper">
                <div class="swiper-slide"> 경기도</div>
                    <c:forEach begin="23" end="30" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg"></div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper4 swiper-v">
                <div class="swiper-wrapper">
                <div class="swiper-slide"> 강원도</div>
                    <c:forEach begin="31" end="43" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg"></div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper5 swiper-v">
                <div class="swiper-wrapper">
                <div class="swiper-slide"> 충청도</div>
                    <c:forEach begin="44" end="57" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg"></div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper6 swiper-v">
                <div class="swiper-wrapper">
                <div class="swiper-slide"> 전라도</div>
                    <c:forEach begin="58" end="80" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg"></div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper7 swiper-v">
                <div class="swiper-wrapper">
                <div class="swiper-slide"> 경상도</div>
                    <c:forEach begin="81" end="96" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg"></div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper mySwiper8 swiper-v">
                <div class="swiper-wrapper">
                <div class="swiper-slide"> 제주도</div>
                    <c:forEach begin="97" end="100" var="i">
                        <div class="swiper-slide" data-value="${i}"><img src="/resources/static/cycle_detail/${i}.jpg"></div>
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
