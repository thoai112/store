<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<footer class="footer__section footer__bg">
  <div class="container-fluid">
    <div class="main__footer">
      <div class="row">
        <div class="col-lg-4 col-md-6">
          <div class="footer__widget">
            <h2 class="footer__widget--title d-none d-md-block">About<button class="footer__widget--button" aria-label="footer widget button"></button>
              <svg class="footer__widget--title__arrowdown--icon" xmlns="http://www.w3.org/2000/svg" width="12.355" height="8.394" viewBox="0 0 10.355 6.394">
                <path  d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z" transform="translate(-6 -8.59)" fill="currentColor"></path>
              </svg>
            </h2>
            <div class="footer__widget--inner">
              <a class="footer__logo" href="<%=request.getContextPath()%>/home"><img src="<%=request.getContextPath()%>/assets/client/img/logo/nav-log.webp" alt="footer-logo"></a>
              <p class="footer__widget--desc">Website kinh doanh các sản phẩm nội thất<br> FurSshop</p>
              <div class="footer__social">
                <ul class="social__shear d-flex">
                  <li class="social__shear--list">
                    <a class="social__shear--list__icon" target="_blank" href="https://www.facebook.com/">
                      <svg xmlns="http://www.w3.org/2000/svg" width="11.239" height="20.984" viewBox="0 0 11.239 20.984">
                        <path id="Icon_awesome-facebook-f" data-name="Icon awesome-facebook-f" d="M11.575,11.8l.583-3.8H8.514V5.542A1.9,1.9,0,0,1,10.655,3.49h1.657V.257A20.2,20.2,0,0,0,9.371,0c-3,0-4.962,1.819-4.962,5.112V8.006H1.073v3.8H4.409v9.181H8.514V11.8Z" transform="translate(-1.073)" fill="currentColor"></path>
                      </svg>
                      <span class="visually-hidden">Facebook</span>
                    </a>
                  </li>
                  <li class="social__shear--list">
                    <a class="social__shear--list__icon" target="_blank" href="https://twitter.com/">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="19.492" viewBox="0 0 24 19.492">
                        <path id="Icon_awesome-twitter" data-name="Icon awesome-twitter" d="M21.533,7.112c.015.213.015.426.015.64A13.9,13.9,0,0,1,7.553,21.746,13.9,13.9,0,0,1,0,19.538a10.176,10.176,0,0,0,1.188.061,9.851,9.851,0,0,0,6.107-2.1,4.927,4.927,0,0,1-4.6-3.411,6.2,6.2,0,0,0,.929.076,5.2,5.2,0,0,0,1.294-.167A4.919,4.919,0,0,1,.975,9.168V9.107A4.954,4.954,0,0,0,3.2,9.731,4.926,4.926,0,0,1,1.675,3.152,13.981,13.981,0,0,0,11.817,8.3,5.553,5.553,0,0,1,11.7,7.173a4.923,4.923,0,0,1,8.513-3.365A9.684,9.684,0,0,0,23.33,2.619,4.906,4.906,0,0,1,21.167,5.33,9.861,9.861,0,0,0,24,4.569a10.573,10.573,0,0,1-2.467,2.543Z" transform="translate(0 -2.254)" fill="currentColor"></path>
                      </svg>
                      <span class="visually-hidden">Twitter</span>
                    </a>
                  </li>
                  <li class="social__shear--list">
                    <a class="social__shear--list__icon" target="_blank" href="https://www.instagram.com/">
                      <svg xmlns="http://www.w3.org/2000/svg" width="19.497" height="19.492" viewBox="0 0 19.497 19.492">
                        <path id="Icon_awesome-instagram" data-name="Icon awesome-instagram" d="M9.747,6.24a5,5,0,1,0,5,5A4.99,4.99,0,0,0,9.747,6.24Zm0,8.247A3.249,3.249,0,1,1,13,11.238a3.255,3.255,0,0,1-3.249,3.249Zm6.368-8.451A1.166,1.166,0,1,1,14.949,4.87,1.163,1.163,0,0,1,16.115,6.036Zm3.31,1.183A5.769,5.769,0,0,0,17.85,3.135,5.807,5.807,0,0,0,13.766,1.56c-1.609-.091-6.433-.091-8.042,0A5.8,5.8,0,0,0,1.64,3.13,5.788,5.788,0,0,0,.065,7.215c-.091,1.609-.091,6.433,0,8.042A5.769,5.769,0,0,0,1.64,19.341a5.814,5.814,0,0,0,4.084,1.575c1.609.091,6.433.091,8.042,0a5.769,5.769,0,0,0,4.084-1.575,5.807,5.807,0,0,0,1.575-4.084c.091-1.609.091-6.429,0-8.038Zm-2.079,9.765a3.289,3.289,0,0,1-1.853,1.853c-1.283.509-4.328.391-5.746.391S5.28,19.341,4,18.837a3.289,3.289,0,0,1-1.853-1.853c-.509-1.283-.391-4.328-.391-5.746s-.113-4.467.391-5.746A3.289,3.289,0,0,1,4,3.639c1.283-.509,4.328-.391,5.746-.391s4.467-.113,5.746.391a3.289,3.289,0,0,1,1.853,1.853c.509,1.283.391,4.328.391,5.746S17.855,15.705,17.346,16.984Z" transform="translate(0.004 -1.492)" fill="currentColor"></path>
                      </svg>
                      <span class="visually-hidden">Instagram</span>
                    </a>
                  </li>
                  <li class="social__shear--list">
                    <a class="social__shear--list__icon" target="_blank" href="https://www.linkedin.com/">
                      <svg xmlns="http://www.w3.org/2000/svg" width="19.419" height="19.419" viewBox="0 0 19.419 19.419">
                        <path id="Icon_awesome-linkedin-in" data-name="Icon awesome-linkedin-in" d="M4.347,19.419H.321V6.454H4.347ZM2.332,4.686A2.343,2.343,0,1,1,4.663,2.332,2.351,2.351,0,0,1,2.332,4.686ZM19.415,19.419H15.4V13.108c0-1.5-.03-3.433-2.093-3.433-2.093,0-2.414,1.634-2.414,3.325v6.42H6.869V6.454H10.73V8.223h.056A4.23,4.23,0,0,1,14.6,6.129c4.075,0,4.824,2.683,4.824,6.168v7.122Z" fill="currentColor"></path>
                      </svg>
                      <span class="visually-hidden">Linkedin</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="footer__widget">
            <h2 class="footer__widget--title ">Quick Links <button class="footer__widget--button" aria-label="footer widget button"></button>
              <svg class="footer__widget--title__arrowdown--icon" xmlns="http://www.w3.org/2000/svg" width="12.355" height="8.394" viewBox="0 0 10.355 6.394">
                <path  d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z" transform="translate(-6 -8.59)" fill="currentColor"></path>
              </svg>
            </h2>
            <ul class="footer__widget--menu footer__widget--inner">
              <li class="footer__widget--menu__list"><a class="footer__widget--menu__text" href="<%=request.getContextPath()%>/about">About me</a></li>
              <li class="footer__widget--menu__list"><a class="footer__widget--menu__text" href="<%=request.getContextPath()%>/wish-list">Danh sách yêu thích</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="footer__widget">
            <h2 class="footer__widget--title ">Thông tin tài khoản<button class="footer__widget--button" aria-label="footer widget button"></button>
              <svg class="footer__widget--title__arrowdown--icon" xmlns="http://www.w3.org/2000/svg" width="12.355" height="8.394" viewBox="0 0 10.355 6.394">
                <path  d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z" transform="translate(-6 -8.59)" fill="currentColor"></path>
              </svg>
            </h2>
            <ul class="footer__widget--menu footer__widget--inner">
              <li class="footer__widget--menu__list"><a class="footer__widget--menu__text" href="<%=request.getContextPath()%>/my-account">Tài khoản của tôi</a></li>
              <li class="footer__widget--menu__list"><a class="footer__widget--menu__text" href="<%=request.getContextPath()%>/cart/items">Giỏ hàng</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="footer__bottom d-flex justify-content-between align-items-center">
      <p class="copyright__content  m-0">Copyright © 2022 <a class="copyright__content--link" href="<%=request.getContextPath()%>/home">FurSshop</a> . All Rights Reserved.Design By XT</p>
      <div class="footer__payment text-right">
        <img class="footer__payment--visa__card display-block" src="<%=request.getContextPath()%>/assets/client/img/other/payment-visa-card.webp" alt="visa-card">
      </div>
    </div>
  </div>
</footer>
