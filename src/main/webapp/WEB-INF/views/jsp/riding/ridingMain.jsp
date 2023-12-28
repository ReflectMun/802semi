<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OUT GO IT - riding </title>
    <link rel="stylesheet" href="/resources/static/kmh/css/main.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
</head>
<body>
    <!-- 헤더 영역 -->

    <div class="header"></div>

    <!-- 컨테이너 영역 -->

    <div class="container">

        <!-- 배너 영역 (슬라이드 들어가면 좋을듯!) -->

        <div class="banner-wrap camp swiper mySwiper">
            <div class="banner swiper-wrapper">
                <div class="swiper-slide"><img src="../kmh/img/riding_banner.jpg"></div>
                <div class="swiper-slide"><img src="../kmh/img/riding_banner.jpg"></div>
                <div class="swiper-slide"><img src="../kmh/img/riding_banner.jpg"></div>
                <div class="swiper-slide"><img src="../kmh/img/riding_banner.jpg"></div>
                <div class="swiper-slide"><img src="../kmh/img/riding_banner.jpg"></div>
            </div>
                <div class="banner-txt-wrap">
                    <div class="banner-title">
<%--                        <span>HKING</span>--%>
                         <div class="banner-sub-txt">
                            <span> &nbsp; Campsite &nbsp; Campfire &nbsp; Tent Pitching &nbsp; Sleeping Bag &nbsp; Fishing Spot &nbsp; Sunrise/Sunset Views &nbsp; Stargazing &nbsp; Nature Exploration &nbsp; Outdoor Enthusiast </span>
                         </div>
                    </div>
                </div>
        </div>

        <!-- 배너 여기까지 / 컨텐트 영역 (지도 API)-->

        <div class="content">
            <div class="map-txt-wrap">
                <div class="map-title">
                    <span> Search </span>
                </div>
                <div class="map-sub-txt">
                    <span> 간단한 기능 설명하는 문장 하나 들어가면 좋을듯</span>
                </div>
            </div>
            <div class="camping-area-search">
                <input id="search-box" placeholder="검색하고 싶은 지역!">
                <button id="submit-search">검색!</button>
            </div>
            <div class="search-result">
                <div class="map-all">
                    <div id="cycle-page-map"></div>
                    <div id="cycle-detail-slide"><jsp:include page="../../ms/pdf_test.jsp"></jsp:include></div>
                </div>
            </div>
        </div>

        <!-- 컨텐트 영역 여기까지 -->

    </div>

    <!--컨테이너 여기까지 -->

    <!-- 모달창 영역 -->

    <!-- 모달창 영역 여기까지-->

    <!-- 푸터 영역 -->

    <div class="footer"></div>

    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=770a2850e8ce3177b209d2d94dc1e58b&libraries=services"></script>

    <script>
        var swiper = new Swiper(".mySwiper", {
            loop: true,
            autoplay: {
                delay: 5000,
            },
        });
    </script>
    <script type="text/javascript" src="/resources/static/ms/js/map.js"></script>
</body>
</html>