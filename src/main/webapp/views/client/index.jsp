<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<jsp:useBean id="categories" type="java.util.ArrayList<models.view_models.categories.CategoryViewModel>" scope="request"/>
<jsp:useBean id="products" type="java.util.ArrayList<models.view_models.products.ProductViewModel>" scope="request"/>
<html>
<head>
    <meta charset="utf-8">
    <title>Furea - Furniture Shop</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/client/img/favicon.ico">
    <jsp:include page="/views/client/common/common_css_banner.jsp"/>
    <jsp:include page="/views/client/common/common_css.jsp"/>
    <style>
        .swiper-wrapper{
            height: unset !important;
        }
    </style>
</head>
<body>
<jsp:include page="/views/client/common/header.jsp"/>

<!--== End Hero Area Wrapper ==-->
<main class="main__content_wrapper">

    <!--== Start Hero Area Wrapper ==-->
    <section class="hero-two-slider-area position-relative">
        <div class="swiper hero-two-slider-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide hero-two-slide-item">
                    <div class="container">
                        <div class="row align-items-center position-relative">
                            <div class="col-12 col-md-6">
                                <div class="hero-two-slide-content">
                                    <div class="hero-two-slide-text-img"><img src="assets/custom/assets/images/slider/text-light.webp" width="427" height="232" alt="Image"></div>
                                    <h2 class="hero-two-slide-title">ANTI AGEING</h2>
                                    <p class="hero-two-slide-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis.</p>
                                    <div class="hero-two-slide-meta">
                                        <a class="btn btn-border-primary" href="<%=request.getContextPath()%>/products">Mua Ngay</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="hero-two-slide-thumb">
                                    <img src="assets/custom/assets/images/slider/slider1-man1.webp" width="690" height="690" alt="Image">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide hero-two-slide-item">
                    <div class="container">
                        <div class="row align-items-center position-relative">
                            <div class="col-12 col-md-6">
                                <div class="hero-two-slide-content">
                                    <div class="hero-two-slide-text-img"><img src="assets/custom/assets/images/slider/text-light.webp" width="427" height="232" alt="Image"></div>
                                    <h2 class="hero-two-slide-title">CLEAN FRESH</h2>
                                    <p class="hero-two-slide-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis.</p>
                                    <div class="hero-two-slide-meta">
                                        <a class="btn btn-border-primary" href="<%=request.getContextPath()%>/products">Mua Ngay</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="hero-two-slide-thumb">
                                    <img src="assets/custom/assets/images/slider/slider1-man2.webp" width="690" height="690" alt="Image">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--== Add Pagination ==-->
            <div class="hero-two-slider-pagination"></div>
        </div>
    </section>
    <!--== End Hero Area Wrapper ==-->


    <!-- Start slider section -->
<%--    <section class="hero__slider--section color-scheme-3">--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <div class="col">--%>
<%--                    <div class="hero__slider3--inner hero__slider--activation swiper">--%>
<%--                        <div class="hero__slider3--wrapper swiper-wrapper">--%>
<%--                            <div class="swiper-slide ">--%>
<%--                                <div class="hero__slider3--items hero__slider--bg3 slider1">--%>
<%--                                    <div class="slider__content3 padding-left">--%>
<%--                                        <h2 class="slider__content3--maintitle">Make Beautiful Home <br>--%>
<%--                                            With Moon Sofa</h2>--%>
<%--                                        <p class="slider__content3--desc mb-35">Great furniture can bring beauty at your home, <br>--%>
<%--                                            So buy our popular and stylish furniture. </p>--%>
<%--                                        <a class="slider__content3--btn primary__btn btn__style3" href="<%=request.getContextPath()%>/products" rel="nofollow">Order Now</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="swiper-slide ">--%>
<%--                                <div class="hero__slider3--items hero__slider--bg3 slider2">--%>
<%--                                    <div class="slider__content3 padding-left text-center">--%>
<%--                                        <h2 class="slider__content3--maintitle">Make Beautiful Home <br>--%>
<%--                                            With Moon Sofa</h2>--%>
<%--                                        <p class="slider__content3--desc color-black mb-35">Great furniture can bring beauty at your home, <br>--%>
<%--                                            So buy our popular and stylish furniture. </p>--%>
<%--                                        <a class="slider__content3--btn primary__btn btn__style3" href="<%=request.getContextPath()%>/products" rel="nofollow">Order Now</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="swiper-slide ">--%>
<%--                                <div class="hero__slider3--items hero__slider--bg3 slider3">--%>
<%--                                    <div class="slider__content3 padding-left">--%>
<%--                                        <h2 class="slider__content3--maintitle">Make Beautiful Home <br>--%>
<%--                                            With Moon Sofa</h2>--%>
<%--                                        <p class="slider__content3--desc mb-35">Great furniture can bring beauty at your home, <br>--%>
<%--                                            So buy our popular and stylish furniture. </p>--%>
<%--                                        <a class="slider__content3--btn primary__btn btn__style3" href="<%=request.getContextPath()%>/products" rel="nofollow">Order Now</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="swiper__nav--btn swiper-button-next"></div>--%>
<%--                        <div class="swiper__nav--btn swiper-button-prev"></div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </section>--%>
    <!-- End slider section -->

    <!-- Start Categories section -->
    <section class="categories__section color-scheme-3 section--padding">
        <div class="container">
            <div class="section__heading text-center mb-50">
                <h2 class="section__heading--maintitle">Danh mục sản phẩm</h2>
            </div>
            <div class="categories__section--inner">
                <div class="row row-cols-lg-6 row-cols-md-4 row-cols-sm-3 row-cols-2  mb--n30">
                    <c:forEach var="c" items="${categories}">
                        <div class="col mb-30">
                            <div class="categories__product--items border border-radius-5 text-center">
                                <a class="categories__product--items__link" href="<%=request.getContextPath()%>/products?categoryId=${c.categoryId}">
                                    <img class="categories__product--thumbnail__img display-block" src="data:image/png;base64, ${c.image}" alt="categories-product">
                                    <h3 class="categories__product--title h4">${c.name}</h3>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </section>
    <!-- End Categories section -->

    <!-- Start Choice us section -->
    <section class="choiceus__section color-scheme-3 section--padding pt-0">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 col-md-7">
                    <div class="choiceus__banner position__relative d-flex">
                        <a class="choiceus__banner--thumbnail one display-block" href="<%=request.getContextPath()%>/products" rel="nofollow"><img class="choiceus__banner--thumbnail__img display-block" src="<%=request.getContextPath()%>/assets/client/img/banner/banner25.png" alt="banner-img"></a>
                        <a class="choiceus__banner--thumbnail two display-block" href="<%=request.getContextPath()%>/products" rel="nofollow"><img class="choiceus__banner--thumbnail__img two display-block" src="<%=request.getContextPath()%>/assets/client/img/banner/banner26.png" alt="banner-img"></a>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5">
                    <div class="choiceus__content">
                        <h2 class="choiceus__content--title">Why You Choice Us</h2>
                        <p class="choiceus__content--desc">Get up to 80% off for this weak and get offer.
                            Don't miss this chance hit order button.</p>
                        <div class="choiceus__info">
                            <div class="choiceus__info--step d-flex">
                                <div class="choiceus__info--list">
                                    <svg class="choiceus__info--icon" data-name="Group 118" xmlns="http://www.w3.org/2000/svg" width="38.02" height="41.512" viewBox="0 0 38.02 41.512">
                                        <path data-name="Path 81" d="M51.769,17.16h-.1V14.642a14.642,14.642,0,1,0-29.284,0V17.16h-.616a4.184,4.184,0,0,0-4.007,4.316V27.9a4.059,4.059,0,0,0,3.954,4.16h3.855a.976.976,0,0,0,.929-1.021c0-.019,0-.039,0-.058V18.393c0-.616-.36-1.233-.925-1.233h-1.13V14.642a12.587,12.587,0,0,1,25.174,0V17.16h-1.13c-.565,0-.925.616-.925,1.233V30.98a.976.976,0,0,0,.867,1.074l.058,0h1.182l-.1.154a8.117,8.117,0,0,1-6.525,3.237,5.086,5.086,0,0,0-10.07.976A5.138,5.138,0,0,0,38.1,41.512a5.292,5.292,0,0,0,3.7-1.593,4.521,4.521,0,0,0,1.233-2.466A10.172,10.172,0,0,0,51.2,33.394l.976-1.439a3.5,3.5,0,0,0,3.6-3.545V21.989C55.776,19.78,54.132,17.16,51.769,17.16ZM24.437,30H21.765a2,2,0,0,1-1.954-2.052c0-.018,0-.036,0-.055V21.475a2.13,2.13,0,0,1,1.952-2.261h2.672Zm15.875,8.477a3.031,3.031,0,0,1-2.209.976,3.134,3.134,0,0,1-3.083-3.031,3.031,3.031,0,0,1,6.062,0v0A2.723,2.723,0,0,1,40.312,38.481Zm13.409-10.07C53.721,29.8,52.385,30,51.769,30H49.611V19.215h2.158c1.13,0,1.952,1.593,1.952,2.774Z" transform="translate(-17.756)" fill="currentColor"></path>
                                    </svg>
                                    <span class="choiceus__info--text">24/7 Support</span>
                                </div>
                                <div class="choiceus__info--list">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="35.402" height="41.512" viewBox="0 0 35.402 41.512">
                                        <g id="secure-shield" transform="translate(-37.681 0)">
                                            <g id="Group_117" data-name="Group 117" transform="translate(37.681 0)">
                                                <g id="Group_116" data-name="Group 116" transform="translate(0 0)">
                                                    <path id="Path_75" data-name="Path 75" d="M72.44,7.168A69.052,69.052,0,0,1,55.826.121a.873.873,0,0,0-.888,0A67.162,67.162,0,0,1,38.323,7.168a.873.873,0,0,0-.642.842v8.922a25.668,25.668,0,0,0,7.795,18.754c3.828,3.751,8.287,5.825,9.906,5.825s6.078-2.074,9.906-5.825a25.668,25.668,0,0,0,7.794-18.754V8.01A.873.873,0,0,0,72.44,7.168Zm-1.1,9.764a23.956,23.956,0,0,1-7.27,17.506c-3.765,3.689-7.789,5.326-8.684,5.326s-4.92-1.638-8.684-5.326a23.956,23.956,0,0,1-7.27-17.506V8.673A68.771,68.771,0,0,0,55.382,1.885,70.947,70.947,0,0,0,71.336,8.673Z" transform="translate(-37.681 0)" fill="currentColor"></path>
                                                    <path id="Path_76" data-name="Path 76" d="M86.83,99.5A.873.873,0,0,0,85.7,99c-1.56.615-3.161,1.18-4.759,1.682a.873.873,0,0,0-.612.833v3.372a.873.873,0,1,0,1.746,0v-2.734c1.433-.464,2.865-.977,4.265-1.528A.873.873,0,0,0,86.83,99.5Z" transform="translate(-76.869 -90.921)" fill="currentColor"></path>
                                                    <path id="Path_77" data-name="Path 77" d="M171.078,87.957a.874.874,0,0,0,.35-.073l.016-.007a.873.873,0,1,0-.705-1.6l-.014.006a.873.873,0,0,0,.353,1.672Z" transform="translate(-159.458 -79.216)" fill="currentColor"></path>
                                                    <path id="Path_78" data-name="Path 78" d="M309.9,345.67a.873.873,0,0,0-1.209.253,21.256,21.256,0,0,1-2.509,3.134,22.316,22.316,0,0,1-2.5,2.228.873.873,0,1,0,1.059,1.389,24.077,24.077,0,0,0,2.7-2.4,22.985,22.985,0,0,0,2.716-3.393A.873.873,0,0,0,309.9,345.67Z" transform="translate(-281.793 -317.514)" fill="currentColor"></path>
                                                    <path id="Path_79" data-name="Path 79" d="M277.049,432.086l-.05.029a.873.873,0,1,0,.875,1.511l.058-.034a.873.873,0,1,0-.883-1.507Z" transform="translate(-257.195 -396.943)" fill="currentColor"></path>
                                                    <path id="Path_80" data-name="Path 80" d="M127.667,161.038a2.84,2.84,0,0,0-4.016,4.016l5.156,5.156a2.84,2.84,0,0,0,4.016,0l10.764-10.764a2.84,2.84,0,0,0-4.016-4.016l-8.756,8.756Zm13.139-4.373a1.093,1.093,0,1,1,1.546,1.546l-10.764,10.764a1.094,1.094,0,0,1-1.546,0l-5.156-5.156a1.093,1.093,0,0,1,1.546-1.546l3.766,3.766a.873.873,0,0,0,1.235,0Z" transform="translate(-115.918 -142.064)" fill="currentColor"></path>
                                                </g>
                                            </g>
                                        </g>
                                    </svg>
                                    <span class="choiceus__info--text">Secure Shopping</span>
                                </div>
                            </div>
                            <div class="choiceus__info--step d-flex">
                                <div class="choiceus__info--list">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="54.164" height="41.512" viewBox="0 0 54.164 41.512">
                                        <g id="fast-delivery" transform="translate(0 -59.798)">
                                            <g id="Group_120" data-name="Group 120" transform="translate(10.138 69.954)">
                                                <g id="Group_119" data-name="Group 119" transform="translate(0 0)">
                                                    <path id="Path_103" data-name="Path 103" d="M99.3,162.978l-1.846-1.823-.03-4.569a.793.793,0,0,0-.793-.788h-.005a.793.793,0,0,0-.788.8l.032,4.9a.793.793,0,0,0,.236.559l2.079,2.054a.793.793,0,0,0,1.115-1.129Z" transform="translate(-95.834 -155.798)" fill="#121a25"></path>
                                                </g>
                                            </g>
                                            <g id="Group_122" data-name="Group 122" transform="translate(20.893 78.609)">
                                                <g id="Group_121" data-name="Group 121" transform="translate(0 0)">
                                                    <path id="Path_104" data-name="Path 104" d="M211.589,242.262c0-.007,0-.013,0-.02,0-.022-.006-.043-.011-.064l-.006-.022c0-.02-.01-.04-.017-.059l-.008-.023c-.007-.018-.014-.037-.022-.055l-.012-.024q-.013-.025-.027-.05l-.015-.024c-.01-.016-.021-.031-.032-.046l-.017-.023c-.013-.016-.027-.031-.041-.046l-.014-.016a.777.777,0,0,0-.062-.057h0l-4.836-3.943a.793.793,0,0,0-1,1.23l3.109,2.535H198.294a.793.793,0,0,0,0,1.587h10.277l-3.109,2.535a.793.793,0,1,0,1,1.23l4.836-3.943h0a.806.806,0,0,0,.062-.057l.014-.016c.014-.015.028-.03.041-.047l.017-.022c.011-.015.022-.03.032-.046l.015-.024q.014-.024.027-.049l.012-.024c.008-.018.015-.036.022-.054l.008-.023c.006-.019.012-.039.017-.059l.006-.022c0-.021.008-.043.011-.064,0-.007,0-.013,0-.02a.793.793,0,0,0,0-.086A.812.812,0,0,0,211.589,242.262Z" transform="translate(-197.501 -237.611)" fill="#121a25"/>
                                                </g>
                                            </g>
                                            <g id="Group_124" data-name="Group 124" transform="translate(0 59.798)">
                                                <g id="Group_123" data-name="Group 123" transform="translate(0 0)">
                                                    <path id="Path_105" data-name="Path 105" d="M18.678,67.855a11.127,11.127,0,0,0-1.17-1.007l1.13-1.37a.793.793,0,0,0-1.224-1.01l-1.253,1.519a10.87,10.87,0,0,0-4.405-1.277v-.715h1.6a1.473,1.473,0,0,0,1.471-1.471V61.269A1.473,1.473,0,0,0,13.352,59.8H8.51a1.473,1.473,0,0,0-1.471,1.471v1.254A1.473,1.473,0,0,0,8.51,63.994h1.66v.716a10.874,10.874,0,0,0-4.449,1.3L4.447,64.468a.793.793,0,0,0-1.224,1.01l1.155,1.4a11.128,11.128,0,0,0-1.2,1.053,10.963,10.963,0,0,0,7.788,18.678h.054a10.963,10.963,0,0,0,7.662-18.753ZM8.626,62.407V61.385h4.611v1.023Zm9,19.836a9.315,9.315,0,0,1-6.617,2.778h-.046a9.376,9.376,0,0,1-.044-18.753h.046a9.376,9.376,0,0,1,6.661,15.975Z" transform="translate(0 -59.798)" fill="#121a25"/>
                                                </g>
                                            </g>
                                            <g id="Group_126" data-name="Group 126" transform="translate(2.546 67.228)">
                                                <g id="Group_125" data-name="Group 125" transform="translate(0 0)">
                                                    <path id="Path_106" data-name="Path 106" d="M32.49,130.033h-.041a8.417,8.417,0,0,0,.039,16.833h.042a8.417,8.417,0,0,0-.04-16.833Zm4.852,13.223a6.785,6.785,0,0,1-4.82,2.024h-.034a6.83,6.83,0,0,1-.032-13.66h.033a6.83,6.83,0,0,1,4.852,11.636Z" transform="translate(-24.073 -130.033)" fill="#121a25"></path>
                                                </g>
                                            </g>
                                            <g id="Group_128" data-name="Group 128" transform="translate(11.428 93.479)">
                                                <g id="Group_127" data-name="Group 127" transform="translate(0 0)">
                                                    <path id="Path_107" data-name="Path 107" d="M111.468,378.335a2.388,2.388,0,0,0-1.95.12,2.733,2.733,0,0,0-1.31,1.479,2.574,2.574,0,0,0,1.382,3.358,2.347,2.347,0,0,0,.834.153,2.458,2.458,0,0,0,1.117-.274,2.733,2.733,0,0,0,1.31-1.479A2.573,2.573,0,0,0,111.468,378.335Zm-.1,2.8a1.15,1.15,0,0,1-.546.627.821.821,0,0,1-.669.051.992.992,0,0,1-.461-1.312,1.15,1.15,0,0,1,.546-.627.881.881,0,0,1,.4-.1.757.757,0,0,1,.27.049A.992.992,0,0,1,111.366,381.131Z" transform="translate(-108.024 -378.181)" fill="#121a25"/>
                                                </g>
                                            </g>
                                            <g id="Group_130" data-name="Group 130" transform="translate(41.995 93.481)">
                                                <g id="Group_129" data-name="Group 129">
                                                    <path id="Path_108" data-name="Path 108" d="M400.413,378.352a2.656,2.656,0,0,0-1.878,4.957,2.346,2.346,0,0,0,.834.153,2.458,2.458,0,0,0,1.117-.274,2.734,2.734,0,0,0,1.31-1.479A2.573,2.573,0,0,0,400.413,378.352Zm-.1,2.8a1.15,1.15,0,0,1-.545.627.821.821,0,0,1-.669.051.992.992,0,0,1-.461-1.312,1.063,1.063,0,0,1,.943-.727.761.761,0,0,1,.272.05A.991.991,0,0,1,400.311,381.148Z" transform="translate(-396.97 -378.2)" fill="#121a25"/>
                                                </g>
                                            </g>
                                            <g id="Group_132" data-name="Group 132" transform="translate(5.371 71.8)">
                                                <g id="Group_131" data-name="Group 131" transform="translate(0 0)">
                                                    <path id="Path_109" data-name="Path 109" d="M99.059,183.88h0c-1.162-1.316-2.362-2.688-3.667-4.194a2.1,2.1,0,0,0-1.591-.707l-6.669-.009c.2-1.255.4-2.5.578-3.727a1.708,1.708,0,0,0-1.718-1.979c-5.553,0-8.517,0-13.222-.007l-3,0h0a.793.793,0,0,0,0,1.587l3,0c4.706,0,7.669,0,13.223.007a.163.163,0,0,1,.124.042.16.16,0,0,1,.024.123c-.385,2.619-.843,5.364-1.292,8.036-.654,3.856-1.323,7.81-1.827,11.667l-.006.047H79.4l-1.4,0h-.55l-1.626,0H75.5l-3.811-.007h-.162l-3.937-.009-4.017-.009a4.61,4.61,0,0,0-1.613-1.693L61.894,193l-.108-.062-.094-.051-.095-.048-.123-.058-.076-.035c-.068-.03-.137-.058-.207-.085s-.144-.052-.217-.076l-.12-.036-.094-.027c-.055-.015-.111-.028-.166-.041l-.044-.01c-.067-.015-.134-.027-.2-.039h-.006a4.6,4.6,0,0,0-2.173.158l-.006,0c-.057.018-.114.038-.17.058l-.066.024-.132.052-.056.022-.054.024-.08.035q-.08.036-.158.076l-.037.018-.01.005q-.1.05-.192.1l-.079.046-.105.063-.106.068-.062.042a5.388,5.388,0,0,0-1.473,1.49h-.839l-1.876,0c.147-.906.391-2.412.68-4.2a.793.793,0,1,0-1.566-.254c-.475,2.937-.829,5.117-.829,5.117s0,0,0,.006v.006l-.159,1.079a2.043,2.043,0,0,0,2.021,2.341h1.711a5.236,5.236,0,0,0,.278.97,4.631,4.631,0,0,0,2.672,2.684,4.488,4.488,0,0,0,1.594.292,5.241,5.241,0,0,0,4.791-3.48c.057-.151.107-.3.151-.457l17.262.022,2.147,0h0c.511,0,1.024,0,1.535,0H85.1a5.232,5.232,0,0,0,.271.935,4.631,4.631,0,0,0,2.672,2.684,4.519,4.519,0,0,0,1.6.295,4.789,4.789,0,0,0,2.175-.534,5.446,5.446,0,0,0,2.606-2.949c.052-.139.1-.279.14-.419h.989a2.371,2.371,0,0,0,2.306-1.959c.586-3.814,1.2-7.833,1.684-11.369A2.074,2.074,0,0,0,99.059,183.88ZM54.65,196.324c-.009.032-.017.064-.025.1-.012.047-.025.094-.036.141s-.018.08-.026.12-.016.075-.023.113-.018.1-.026.15c0,.026-.009.052-.012.077-.009.062-.017.123-.024.185,0,.008,0,.015,0,.023H52.816a.457.457,0,0,1-.452-.524l.059-.4,2.121,0h.11Zm7.942,1.582s0,.009,0,.013a4.119,4.119,0,0,1-.214.8,3.477,3.477,0,0,1-4.339,2.267A3.062,3.062,0,0,1,56.28,199.2a3.688,3.688,0,0,1-.251-1.182c0-.01,0-.02,0-.03a3.946,3.946,0,0,1,.022-.6v0c.007-.059.015-.118.025-.177l.006-.036c.008-.048.018-.1.028-.145,0-.018.008-.037.012-.056.01-.043.02-.085.031-.127.006-.021.011-.043.017-.065.012-.042.024-.084.037-.126.006-.02.012-.041.019-.061.02-.062.041-.123.065-.184v0c.03-.079.063-.157.1-.234l.022-.049c.037-.078.075-.156.116-.231l.01-.017a3.527,3.527,0,0,1,3.451-1.893l.078.011.1.018c.064.013.128.027.191.044l.045.013c.076.022.151.046.225.074.049.018.1.038.144.059l.088.042.05.024c.04.02.079.042.118.064l.014.008a3.112,3.112,0,0,1,1.3,1.495A3.761,3.761,0,0,1,62.592,197.906Zm20.119-.645-1.436,0-17.047-.022a5.356,5.356,0,0,0-.087-.917l3.443.008,7.125.015h.576l1.11,0h6.42Q82.762,196.807,82.711,197.26Zm10.443.677s0,.006,0,.01a4.124,4.124,0,0,1-.209.772,3.862,3.862,0,0,1-1.841,2.1,3,3,0,0,1-4.255-1.612,3.684,3.684,0,0,1-.25-1.165c0-.006,0-.011,0-.017a3.931,3.931,0,0,1,.018-.6c0-.01,0-.02,0-.03q.009-.077.021-.154l.01-.06c.007-.042.015-.083.023-.125.005-.025.01-.049.016-.074s.018-.076.028-.114.013-.052.02-.077.023-.08.036-.12c.007-.023.013-.045.021-.068.02-.062.042-.124.065-.186a3.862,3.862,0,0,1,1.841-2.1c.055-.028.111-.054.166-.079l.054-.023.114-.047.064-.023.107-.037.067-.021.108-.03.065-.017.116-.025.057-.011q.076-.014.153-.023l.02,0c.058-.007.116-.012.174-.016l.047,0,.126,0h.044c.079,0,.157,0,.235.011h.006c.079.007.158.018.236.032l.042.007q.113.021.225.052l.041.012c.077.022.154.047.23.075.046.018.092.036.137.056l.082.038.045.022A3.431,3.431,0,0,1,93.154,197.937Zm4.819-12.617c-.482,3.523-1.094,7.535-1.68,11.341a.794.794,0,0,1-.737.614H94.8a5.286,5.286,0,0,0-.366-1.93,4.654,4.654,0,0,0-2.3-2.52l-.092-.044-.086-.039c-.065-.028-.131-.056-.2-.081a4.582,4.582,0,0,0-3.318.033q-.233.091-.461.207a5.446,5.446,0,0,0-2.606,2.949c-.039.1-.073.205-.106.309-.01.03-.018.06-.027.09q-.037.126-.069.252c-.005.022-.012.044-.017.066q-.037.157-.064.315c0,.022-.007.044-.011.066q-.024.144-.04.289c0,.009,0,.018,0,.026h-.727c.062-.538.127-1.082.163-1.384.013-.1.025-.209.039-.315.492-3.846,1.172-7.9,1.831-11.825l.066-.4.022-.133q.227-1.339.448-2.655l6.92.009a.51.51,0,0,1,.394.16c1.309,1.51,2.512,2.885,3.677,4.205A.481.481,0,0,1,97.974,185.32Z" transform="translate(-50.773 -173.254)" fill="#121a25"/>
                                                </g>
                                            </g>
                                            <g id="Group_134" data-name="Group 134" transform="translate(41.126 80.198)">
                                                <g id="Group_133" data-name="Group 133" transform="translate(0 0)">
                                                    <path id="Path_110" data-name="Path 110" d="M398.762,256.326c-.956-1.09-1.9-2.176-2.812-3.229a1.334,1.334,0,0,0-1.011-.454l-3.778-.005h0a1.545,1.545,0,0,0-1.5,1.266l-.114.7c-.257,1.581-.524,3.216-.777,4.826h0a1.312,1.312,0,0,0,.292,1.059,1.339,1.339,0,0,0,1.023.461l7.155.005h0a1.533,1.533,0,0,0,1.5-1.281c.133-.916.2-1.374.33-2.29A1.317,1.317,0,0,0,398.762,256.326Zm-1.581,3.042-6.792-.005c.238-1.5.486-3.028.727-4.5l.1-.634,3.613,0c.86.994,1.751,2.017,2.652,3.044C397.367,258.089,397.3,258.542,397.181,259.368Z" transform="translate(-388.755 -252.638)" fill="#121a25"/>
                                                </g>
                                            </g>
                                        </g>
                                    </svg>

                                    <span class="choiceus__info--text">Free Shipping</span>
                                </div>
                                <div class="choiceus__info--list">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="35.354" height="41.512" viewBox="0 0 35.354 41.512">
                                        <g id="refund" transform="translate(-37.974)">
                                            <path id="Path_100" data-name="Path 100" d="M155.7,167.836h1.122a.406.406,0,1,1,0,.813h-1.778a.608.608,0,0,0,0,1.216h.7v.283a.608.608,0,0,0,1.216,0v-.289a1.623,1.623,0,0,0-.143-3.239H155.7a.407.407,0,1,1,0-.813h1.778a.608.608,0,0,0,0-1.216h-.514v-.283a.608.608,0,0,0-1.216,0v.283H155.7a1.623,1.623,0,1,0,0,3.245Z" transform="translate(-106.693 -150.428)" fill="#121a25"/>
                                            <path id="Path_101" data-name="Path 101" d="M122.2,137.92a4.665,4.665,0,0,0,3.725-2.029,8.2,8.2,0,0,0,0-9.354,4.434,4.434,0,0,0-7.45,0,8.2,8.2,0,0,0,0,9.354A4.664,4.664,0,0,0,122.2,137.92Zm-3.972-6.706c0-3.027,1.782-5.49,3.972-5.49s3.973,2.463,3.973,5.49-1.782,5.49-3.973,5.49S118.232,134.241,118.232,131.214Z" transform="translate(-72.633 -114.413)" fill="#121a25"/>
                                            <path id="Path_102" data-name="Path 102" d="M64.646,13.772h-.761V12.23a.894.894,0,0,0-1.417-.726l-1.3.936V7.507L67.789,9.27a5.465,5.465,0,0,0,3.439,5.907.608.608,0,0,0,1.2.147l.812-3.05A2.717,2.717,0,0,0,71.311,8.95l-2.653-.707h0L61.169,6.248V2.716A2.719,2.719,0,0,0,58.452,0H40.69a2.719,2.719,0,0,0-2.716,2.716V8.391a.608.608,0,1,0,1.216,0V6.036a5.472,5.472,0,0,0,4.82-4.82H55.132a5.472,5.472,0,0,0,4.82,4.82v7.28l-3.345,2.409a1.375,1.375,0,0,0,0,2.232l3.345,2.409v7.2a5.472,5.472,0,0,0-4.82,4.82H44.01a5.472,5.472,0,0,0-4.82-4.82V10.824a.608.608,0,0,0-1.216,0V30.885A2.715,2.715,0,0,0,40.69,33.6h2.864a2.7,2.7,0,0,0,.293,1.983,2.727,2.727,0,0,0,.426.557l.047.046.024.023a2.7,2.7,0,0,0,1.154.636l2.653.707.021.005,14.49,3.86q.132.035.265.057a2.717,2.717,0,0,0,3.058-1.982l.707-2.653,0-.013,1.059-3.974a.608.608,0,0,0-1.175-.313l-.914,3.432a5.465,5.465,0,0,0-5.9,3.417L49.02,36.527a5.46,5.46,0,0,0-.366-2.925h9.8a2.715,2.715,0,0,0,2.716-2.716V21.241l1.3.936a.894.894,0,0,0,1.417-.726V19.909h.761a3.391,3.391,0,0,1,2.736,1.506,5.879,5.879,0,0,1,1.084,3.422,5.065,5.065,0,0,1-5.3,5.06.639.639,0,0,0-.154,1.265,8.457,8.457,0,0,0,7.041-1.788,8.8,8.8,0,0,0,3.207-6.828A8.705,8.705,0,0,0,64.646,13.772Zm4.328-4.186L71,10.125a1.5,1.5,0,0,1,1.064,1.835l-.539,2.024A4.255,4.255,0,0,1,68.974,9.586ZM39.19,4.81V2.716a1.5,1.5,0,0,1,1.5-1.5h2.094A4.256,4.256,0,0,1,39.19,4.81Zm20.762,0a4.256,4.256,0,0,1-3.594-3.594h2.133a1.5,1.5,0,0,1,1.461,1.5ZM40.69,32.385a1.5,1.5,0,0,1-1.5-1.5V28.791a4.256,4.256,0,0,1,3.594,3.594H40.69Zm7.145,3.826-2.023-.539a1.5,1.5,0,0,1-1.063-1.835l.063-.236H47.3A4.247,4.247,0,0,1,47.835,36.211ZM62.728,37.7a4.212,4.212,0,0,1,2.622-.544l-.539,2.025a1.488,1.488,0,0,1-.7.911,1.489,1.489,0,0,1-1.138.152L60.952,39.7A4.214,4.214,0,0,1,62.728,37.7Zm-2.776-6.815a1.5,1.5,0,0,1-1.5,1.5H56.358a4.256,4.256,0,0,1,3.594-3.594v2.094Zm9.33-2.451a7.4,7.4,0,0,1-1.61,1.009l.065-.061a6.226,6.226,0,0,0,1.946-4.546c0-2.955-1.925-6.144-5.036-6.144h-.839a1.139,1.139,0,0,0-1.138,1.138v.992l-1.755-1.264,0,0L57.318,16.97a.159.159,0,0,1,0-.259l3.59-2.585.017-.012,1.745-1.257v.993a1.139,1.139,0,0,0,1.138,1.138h.839a7.488,7.488,0,0,1,7.4,7.558A7.586,7.586,0,0,1,69.282,28.435Z" transform="translate(0)" fill="#121a25"/>
                                        </g>
                                    </svg>
                                    <span class="choiceus__info--text">Money Return</span>
                                </div>
                            </div>
                        </div>
                        <a class="choiceus__info--btn primary__btn btn__style3" href="<%=request.getContextPath()%>/about">Read More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Choice us section -->

    <!-- Start product section -->
    <section class="product__section section--padding color-scheme-3 pt-0">
        <div class="container">
            <div class="section__heading text-center mb-40">
                <h2 class="section__heading--maintitle">Sản phẩm phổ biến</h2>
            </div>
            <div class="product__section--inner">
                <div class="row row-cols-lg-4 row-cols-md-3 row-cols-2 mb--n30">
                    <c:forEach var="p" begin="0" end="${products.size() > 0 ? products.size() - 1 : 0}">
                        <c:if test="${products.size() > 0}">
                            <input type="hidden" id="product-id-${p}" value="${products[p].productId}"/>
                            <input type="hidden" id="product-name-${p}" value="${products[p].name}"/>
                            <input type="hidden" id="product-price-${p}" value="${products[p].price}"/>
                            <input type="hidden" id="product-rating-${p}" value="${products[p].avgRating}"/>
                            <input type="hidden" id="product-totalReview-${p}" value="${products[p].productReviews.size()}"/>
                            <input type="hidden" id="product-desc-${p}" value="${products[p].description}"/>
                            <input type="hidden" class="product-image-${p}" value="${products[p].image}"/>
                            <c:forEach var="i" items="${products[p].productImages}">
                                <input type="hidden" class="product-image-${p}" value="${i.image}"/>
                            </c:forEach>
                            <div class="col mb-30">
                                <div class="product__items ">
                                    <div class="product__items--thumbnail">
                                        <a class="product__items--link" href="<%=request.getContextPath()%>/product/details?productId=${products[p].productId}">
                                            <img class="product__items--img product__primary--img" src="data:image/png;base64, ${products[p].image}" alt="product-img">
                                            <img class="product__items--img product__secondary--img" src="data:image/png;base64, ${products[p].productImages[0].image}" alt="product-img">
                                        </a>
                                        <ul class="product__items--action d-flex justify-content-center">
                                            <li class="product__items--action__list">
                                                <a class="product__items--action__btn" onclick="quickView(this, '<%=request.getContextPath()%>')" data-id="${p}" data-open="modal1">
                                                    <svg class="product__items--action__btn--svg" xmlns="http://www.w3.org/2000/svg"  width="20.51" height="19.443" viewBox="0 0 512 512"><path d="M255.66 112c-77.94 0-157.89 45.11-220.83 135.33a16 16 0 00-.27 17.77C82.92 340.8 161.8 400 255.66 400c92.84 0 173.34-59.38 221.79-135.25a16.14 16.14 0 000-17.47C428.89 172.28 347.8 112 255.66 112z" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"></path><circle cx="256" cy="256" r="80" fill="none" stroke="currentColor" stroke-miterlimit="10" stroke-width="32"></circle></svg>
                                                    <span class="visually-hidden">Quick View</span>
                                                </a>
                                            </li>
                                            <li class="product__items--action__list">
                                                <a class="product__items--action__btn" onclick="addWish(this,'<%=request.getContextPath()%>')" data-productId="${products[p].productId}">
                                                    <svg class="product__items--action__btn--svg"  xmlns="http://www.w3.org/2000/svg" width="17.51" height="15.443" viewBox="0 0 24.526 21.82">
                                                        <path  d="M12.263,21.82a1.438,1.438,0,0,1-.948-.356c-.991-.866-1.946-1.681-2.789-2.4l0,0a51.865,51.865,0,0,1-6.089-5.715A9.129,9.129,0,0,1,0,7.371,7.666,7.666,0,0,1,1.946,2.135,6.6,6.6,0,0,1,6.852,0a6.169,6.169,0,0,1,3.854,1.33,7.884,7.884,0,0,1,1.558,1.627A7.885,7.885,0,0,1,13.821,1.33,6.169,6.169,0,0,1,17.675,0,6.6,6.6,0,0,1,22.58,2.135a7.665,7.665,0,0,1,1.945,5.235,9.128,9.128,0,0,1-2.432,5.975,51.86,51.86,0,0,1-6.089,5.715c-.844.719-1.8,1.535-2.794,2.4a1.439,1.439,0,0,1-.948.356ZM6.852,1.437A5.174,5.174,0,0,0,3,3.109,6.236,6.236,0,0,0,1.437,7.371a7.681,7.681,0,0,0,2.1,5.059,51.039,51.039,0,0,0,5.915,5.539l0,0c.846.721,1.8,1.538,2.8,2.411,1-.874,1.965-1.693,2.812-2.415a51.052,51.052,0,0,0,5.914-5.538,7.682,7.682,0,0,0,2.1-5.059,6.236,6.236,0,0,0-1.565-4.262,5.174,5.174,0,0,0-3.85-1.672A4.765,4.765,0,0,0,14.7,2.467a6.971,6.971,0,0,0-1.658,1.918.907.907,0,0,1-1.558,0A6.965,6.965,0,0,0,9.826,2.467a4.765,4.765,0,0,0-2.975-1.03Zm0,0" transform="translate(0 0)" fill="currentColor"></path>
                                                    </svg>
                                                    <span class="visually-hidden">Wishlist</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product__items--content text-center">
                                        <h3 class="product__items--content__title h4"><a href="<%=request.getContextPath()%>/product/details?productId=${products[p].productId}">${products[p].name}</a></h3>
                                        <div class="product__items--price">
                                            <span class="current__price">${products[p].price} VND</span>
                                        </div>
                                        <a class="product__items--action__cart--btn primary__btn btn__style3" onclick="addCartItem(this,'<%=request.getContextPath()%>')" data-productId="${products[p].productId}">
                                            <svg class="product__items--action__cart--btn__icon" xmlns="http://www.w3.org/2000/svg" width="13.897" height="14.565" viewBox="0 0 18.897 21.565">
                                                <path  d="M16.84,8.082V6.091a4.725,4.725,0,1,0-9.449,0v4.725a.675.675,0,0,0,1.35,0V9.432h5.4V8.082h-5.4V6.091a3.375,3.375,0,0,1,6.75,0v4.691a.675.675,0,1,0,1.35,0V9.433h3.374V21.581H4.017V9.432H6.041V8.082H2.667V21.641a1.289,1.289,0,0,0,1.289,1.29h16.32a1.289,1.289,0,0,0,1.289-1.29V8.082Z" transform="translate(-2.667 -1.366)" fill="currentColor"></path>
                                            </svg>
                                            <span class="add__to--cart__text">Thêm vào giỏ hàng</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </div>
    </section>
    <!-- End product section -->

    <!-- Start instagram section -->
    <div class="instagram__section section--padding color-scheme-3 pt-0">
        <div class="container-fluid p-0">
            <div class="instagram__section--inner instagram__swiper--activation swiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="instagram__thumbnail position__relative">
                            <a class="instagram__thumbnail--link display-block" target="_blank" href="javascript:void(0)" ><img class="instagram__thumbnail--img display-block" src="<%=request.getContextPath()%>/assets/client/img/other/instagram1.webp" alt="instagram-img">

                            </a>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="instagram__thumbnail position__relative">
                            <a class="instagram__thumbnail--link display-block" target="_blank" href="javascript:void(0)" ><img class="instagram__thumbnail--img display-block" src="<%=request.getContextPath()%>/assets/client/img/other/instagram2.webp" alt="instagram-img">
                            </a>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="instagram__thumbnail position__relative">
                            <a class="instagram__thumbnail--link display-block" target="_blank" href="javascript:void(0)" ><img class="instagram__thumbnail--img display-block" src="<%=request.getContextPath()%>/assets/client/img/other/instagram3.webp" alt="instagram-img">

                            </a>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="instagram__thumbnail position__relative">
                            <a class="instagram__thumbnail--link display-block" target="_blank" href="javascript:void(0)" ><img class="instagram__thumbnail--img display-block" src="<%=request.getContextPath()%>/assets/client/img/other/instagram4.webp" alt="instagram-img">

                            </a>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="instagram__thumbnail position__relative">
                            <a class="instagram__thumbnail--link display-block" target="_blank" href="javascript:void(0)" ><img class="instagram__thumbnail--img display-block" src="<%=request.getContextPath()%>/assets/client/img/other/instagram5.webp" alt="instagram-img">
                            </a>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="instagram__thumbnail position__relative">
                            <a class="instagram__thumbnail--link display-block" target="_blank" href="javascript:void(0)" ><img class="instagram__thumbnail--img display-block" src="<%=request.getContextPath()%>/assets/client/img/other/instagram6.webp" alt="instagram-img">
                            </a>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="instagram__thumbnail position__relative">
                            <a class="instagram__thumbnail--link display-block" target="_blank" href="javascript:void(0)" ><img class="instagram__thumbnail--img display-block" src="<%=request.getContextPath()%>/assets/client/img/other/instagram7.webp" alt="instagram-img">
                            </a>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="instagram__thumbnail position__relative">
                            <a class="instagram__thumbnail--link display-block" target="_blank" href="javascript:void(0)" ><img class="instagram__thumbnail--img display-block" src="<%=request.getContextPath()%>/assets/client/img/other/instagram1.webp" alt="instagram-img">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="swiper__nav--btn swiper-button-next"></div>
                <div class="swiper__nav--btn swiper-button-prev"></div>
            </div>
        </div>
    </div>
    <!-- End instagram section -->

    <div class="modal" id="modal-error"  data-animation="slideInUp" style="z-index: 999;">
        <div class="modal-dialog quickview__main--wrapper">
            <h3 class="modal- border-bottom-0">Sản phẩm đã có trong Danh sách yêu thích của bạn</h3>q
        </div>
    </div>
    <div class="modal" id="modal-success" data-animation="slideInUp" style="z-index: 999;">
        <div class="modal-dialog quickview__main--wrapper">
            <h3 class="modal-header border-bottom-0">Thêm thành công</h3>
        </div>
    </div>
    <div class="modal" id="modal-expired" data-animation="slideInUp" style="z-index: 999;">
        <div class="modal-dialog quickview__main--wrapper">
            <h3 class="modal-header border-bottom-0">Sản phẩm đã hết hàng hoặc ngừng kinh doanh</h3>
        </div>
    </div>
</main>

<jsp:include page="/views/client/common/footer.jsp" />
<!-- Quickview Wrapper -->
<div class="modal color-scheme-3" id="modal1" data-animation="slideInUp">
    <div class="modal-dialog quickview__main--wrapper">
        <header class="modal-header quickview__header">
            <button class="close-modal quickview__close--btn" aria-label="close modal" data-close>✕ </button>
        </header>
        <div class="quickview__inner">
            <div class="row row-cols-lg-2 row-cols-md-2">
                <div class="col">
                    <div class="product__details--media">
                        <div class="product__media--preview swiper">
                            <div class="swiper-wrapper">
                            </div>
                        </div>
                        <div class="product__media--nav swiper">
                            <div class="swiper-wrapper" id="swiper-wrapper-clearHeight">
                            </div>
                            <div class="swiper__nav--btn swiper-button-next"></div>
                            <div class="swiper__nav--btn swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="quickview__info">
                        <form action="#">
                            <h2 class="product__details--info__title mb-15"></h2>
                            <div class="product__details--info__price mb-12">
                                <span class="current__price"></span>
                            </div>
                            <div class="quickview__info--ratting d-flex align-items-center mb-15">
                                <ul class="rating d-flex justify-content-center">

                                </ul>
                                <span class="quickview__info--review__text"></span>
                            </div>
                            <p class="product__details--info__desc mb-15"></p>
                            <div class="product__variant">
                                <div class="quickview__variant--list quantity d-flex align-items-center mb-15">
                                    <a class="primary__btn quickview__cart--btn" id="add-cartitem" onclick="addCartItem(this,'<%=request.getContextPath()%>')">Thêm vào giỏ hàng</a>
                                </div>
                                <div class="quickview__variant--list variant__wishlist mb-15">
                                    <a class="variant__wishlist--icon" id="add-wishlist" onclick="addWish(this,'<%=request.getContextPath()%>')" title="Add to wishlist">
                                        <svg class="quickview__variant--wishlist__svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M352.92 80C288 80 256 144 256 144s-32-64-96.92-64c-52.76 0-94.54 44.14-95.08 96.81-1.1 109.33 86.73 187.08 183 252.42a16 16 0 0018 0c96.26-65.34 184.09-143.09 183-252.42-.54-52.67-42.32-96.81-95.08-96.81z" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"></path></svg>
                                        Thêm vào danh sách yêu thích
                                    </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Quickview Wrapper End -->
<script src="<%=request.getContextPath()%>/assets/admin/plugins/jquery/jquery-3.5.1.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/client/js/app/product/product_handler.js"> </script>
<jsp:include page="/views/client/common/common_js.jsp"/>
<script src="<%=request.getContextPath()%>/assets/client/js/app/wishlist/wishlist_handler.js"></script>
<script src="<%=request.getContextPath()%>/assets/client/js/app/cart/cart-handler.js"></script>
</body>
</html>
