 <%@ page language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="../css_hj/footer.css">
    <link rel="stylesheet" type="text/css" href="../css_hj/header.css">
    <link rel="stylesheet" type="text/css" href="../css_hj/menu.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="/resources/static/js_hj/menu.js"></script>
  </head>
  <body>





  <%-- 헤더 시작 --%>
    <div class="hj-container">
      <div class="hj-header">
        <div class="hj-right">
          <div class="hj-logo"></div>
          <!-- 로고 이미지 넣기 -->
          <div class="hj-title">Out<span>&nbsp;go&nbsp;</span>it</div>
          <!-- 글자 나중에    -->
        </div>
        <div class="hj-left">
          <div class="hj-tracking hj-font">
            <span>T</span><span>r</span><span>a</span><span>c</span
            ><span>k</span><span>i</span><span>n</span><span>g</span>
          </div>
          <div class="hj-riding hj-font">
            <span>R</span><span>i</span><span>d</span><span>i</span
            ><span>n</span><span>g</span>
          </div>
          <div class="hj-menu-tab"><div class="hj-menu-icon" id="icon"></div></div>
        </div>
      </div>

      <%-- 헤더 끝--%>

      <%-- 메뉴 디브--%>
      <div class="hj-overlay" id="hj-overlay">
        <div class="hj-box-1">
          <div class="hj-row-1">
            <div class="hj-col-1">
              <div class="hj-menu-icon-2"></div>
            </div>
          </div>
        </div>

        <div class="hj-box">
          <div class="hj-row">
            <div class="hj-col">
              <div class="hj-home" id="hj-home"><span>Home</span></div>
              <div class="hj-star-container"></div>

            </div>
          </div>
        </div>
        <div class="hj-box">
          <div class="hj-row">
            <div class="hj-col-2">
              <div class="hj-story"><span>캠핑 이야기</span></div>
              <div class="hj-star-container-2"></div>
            </div>
          </div>
        </div>
        <div class="hj-box">
          <div class="hj-row">
            <div class="hj-col-3">
              <div class="hj-info"><span>안전 정보</span></div>
              <div class="hj-star-container-3"></div>
            </div>
          </div>
        </div>
        <div class="hj-box">
          <div class="hj-row">
            <div class="hj-col-4">
              <div class="hj-guide"><span>초보자 가이드</span></div>
              <div class="hj-star-container-4"></div>
            </div>
          </div>
        </div>
      </div>

      <%-- 메뉴 끝--%>

      <%-- contents page--%>
      <div>
        <!-- 컨텐츠 페이지 인쿠르드로 설정  -->
      </div>

      <%-- 컨텐트 페이지 끝--%>

      <!-- 푸터 시작 -->
      <div class="hj-container">
        <div class="hj-footer-pic">
          <img src="../Img_hj/footer_tree.png" alt="" />
        </div>
        <div class="hj-footer">
          <div class="hj-footer-box hj-footer-box-first">
            <div class="hj-footer-garo">
              <div class="hj-footer-col">
                <div class="hj-footer-logo">logo</div>

                <div class="hj-footer-kobox">
                  <div class="hj-footer-kozin">
                    <span onclick="">개인정보 처리 방침</span>
                  </div>
                  <div class="hj-footer-design">
                    <span onclick="">디자인 출처</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="hj-footer-box">
            <div class="hj-footer-garo">
              <div class="hj-footer-col">
                <div class="hj-footer-connact">connacts</div>

                <div class="hj-footer-kobox">
                  <div class="hj-footer-tel">
                    <div class="hj-tel-icon"><img src="" alt="" />image</div>
                    <div class="hj-tel">telephone</div>
                  </div>
                  <div class="hj-footer-location">
                    <div class="hj-location-icon">
                      <img src="" alt="" />image >>>>>>> hj
                    </div>
                    <div class="hj-location">location</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="hj-footer-box">
            <div class="hj-footer-garo">
              <div class="hj-footer-col">
                <div class="hj-footer-links">Links</div>

                <div class="hj-footer-kobox">
                  <div class="hj-footer-home">
                    <img src="" alt="" onclick="" />home
                  </div>
                  <div class="hj-footer-camp">
                    <img src="" alt="" onclick="" />camping
                  </div>
                  <div class="hj-footer-tracking">
                    <img src="" alt="" onclick="" />Tracking
                  </div>
                  <div class="hj-footer-riding">
                    <img src="" alt="" onclick="" />Riding
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>