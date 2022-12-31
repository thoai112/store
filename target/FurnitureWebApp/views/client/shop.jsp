<%@ page import="utils.constants.SORT_BY" %>
<%@ page import="utils.constants.PAGE_SIZE" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<jsp:useBean id="categories" type="java.util.ArrayList<models.view_models.categories.CategoryViewModel>" scope="request"/>
<jsp:useBean id="brands" type="java.util.ArrayList<models.view_models.brands.BrandViewModel>" scope="request"/>
<jsp:useBean id="products" type="java.util.ArrayList<models.view_models.products.ProductViewModel>" scope="request"/>
<html>
<head>
    <meta charset="utf-8">
    <title>Furea - Furniture Shop</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/client/img/favicon.ico">
    <jsp:include page="/views/client/common/common_css.jsp"/>
    <style>
        .swiper-wrapper{
            height: unset !important;
        }
    </style>
</head>
<body>
<div class="offcanvas__filter--sidebar widget__area">
    <button type="button" class="offcanvas__filter--close">
        <svg class="minicart__close--icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32" d="M368 368L144 144M368 144L144 368"></path></svg> <span class="offcanvas__filter--close__text">Close</span>
    </button>
    <div class="offcanvas__filter--sidebar__inner">
        <div class="single__widget widget__bg">
            <h2 class="widget__title position__relative h3">Tìm kiếm theo tên sản phẩm</h2>
            <form class="widget__search--form" action="<%=request.getContextPath()%>/products">
                <input type="hidden" name="pageSize" value="${pageSize}"/>
                <input type="hidden" name="sortBy" value="${sortBy}"/>
                <label>
                    <input class="widget__search--form__input border-0" placeholder="Nhập tên sản phẩm..." type="text" name="keyword">
                </label>
                <button class="widget__search--form__btn"  type="submit">
                    Tìm kiếm
                </button>
            </form>
        </div>
        <div class="single__widget widget__bg">
            <h2 class="widget__title position__relative h3">Danh mục sản phẩm</h2>
            <ul class="widget__categories--menu">
                <c:forEach var="c" items="${categories}">
                    <li class="widget__categories--menu__list">
                        <a class="widget__categories--menu__label d-flex align-items-center" href="<%=request.getContextPath()%>/products?categoryId=${c.categoryId}&pageSize=${pageSize}&sortBy=${sortBy}">
                            <img class="widget__categories--menu__img" src="data:image/png;base64, ${c.image}" alt="categories-img">
                            <span class="widget__categories--menu__text">${c.name}</span>
                            <svg class="widget__categories--menu__arrowdown--icon" xmlns="http://www.w3.org/2000/svg" width="12.355" height="8.394">
                                <path  d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z" transform="translate(-6 -8.59)" fill="currentColor"></path>
                            </svg>
                        </a>
                        <ul class="widget__categories--sub__menu">
                            <c:forEach var="sub" items="${c.subCategories}">
                                <li class="widget__categories--sub__menu--list">
                                    <a class="widget__categories--sub__menu--link d-flex align-items-center" href="<%=request.getContextPath()%>/products?categoryId=${c.categoryId}&pageSize=${pageSize}&sortBy=${sortBy}">
                                        <img class="widget__categories--sub__menu--img" src="data:image/png;base64, ${sub.image}" alt="categories-img">
                                        <span class="widget__categories--sub__menu--text">${sub.name}</span>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="single__widget price__filter widget__bg">
            <h2 class="widget__title position__relative h3">Lọc theo giá</h2>
            <form class="price__filter--form" action="<%=request.getContextPath()%>/products">
                <input type="hidden" name="pageSize" value="${pageSize}"/>
                <input type="hidden" name="sortBy" value="${sortBy}"/>
                <div class="price__filter--form__inner mb-15 d-flex align-items-center">
                    <div class="price__filter--group">
                        <label class="price__filter--label" for="Filter-Price-GTE2">Từ</label>
                        <div class="price__filter--input border-radius-5 d-flex align-items-center">
                            <span class="price__filter--currency">$</span>
                            <input class="price__filter--input__field border-0" id="Filter-Price-GTE2" name="filter.v.price.gte" type="number" placeholder="0" min="0" required>
                        </div>
                    </div>
                    <div class="price__divider">
                        <span>-</span>
                    </div>
                    <div class="price__filter--group">
                        <label class="price__filter--label" for="Filter-Price-LTE2">Đến</label>
                        <div class="price__filter--input border-radius-5 d-flex align-items-center">
                            <span class="price__filter--currency">$</span>
                            <input class="price__filter--input__field border-0" id="Filter-Price-LTE2" name="filter.v.price.lte" type="number" min="0" placeholder="250.00" required>
                        </div>
                    </div>
                </div>
                <button class="price__filter--btn primary__btn" type="submit">Lọc</button>
            </form>
        </div>
        <div class="single__widget widget__bg">
            <h2 class="widget__title position__relative h3">Thương hiệu</h2>
            <ul class="widget__tagcloud">
                <c:forEach var="b" items="${brands}">
                    <li class="widget__tagcloud--list"><a class="widget__tagcloud--link" href="<%=request.getContextPath()%>/products?brandId=${b.brandId}&pageSize=${pageSize}&sortBy=${sortBy}">${b.brandName}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
<jsp:include page="/views/client/common/header.jsp"/>
<main class="main__content_wrapper">
    <!-- Start breadcrumb section -->
    <section class="breadcrumb__section breadcrumb__bg">
        <div class="container-fluid">
            <div class="row row-cols-1">
                <div class="col">
                    <div class="breadcrumb__content">
                        <h1 class="breadcrumb__content--title text-white mb-10">Shop</h1>
                        <ul class="breadcrumb__content--menu d-flex">
                            <li class="breadcrumb__content--menu__items"><a class="text-white" href="<%=request.getContextPath()%>/home">Home</a></li>
                            <li class="breadcrumb__content--menu__items"><span class="text-white">Shop</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End breadcrumb section -->
    <section class="shop__section section--padding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-4">
                    <div class="shop__sidebar--widget widget__area d-md-none">
                        <div class="single__widget widget__bg">
                            <h2 class="widget__title position__relative h3">Tìm kiếm theo tên sản phẩm</h2>
                            <form class="widget__search--form" action="<%=request.getContextPath()%>/products">
                                <input type="hidden" name="pageSize" value="${pageSize}"/>
                                <input type="hidden" name="sortBy" value="${sortBy}"/>
                                <label>
                                    <input class="widget__search--form__input border-0" placeholder="Nhập tên sản phẩm..." type="text" name="keyword" id="keyword">
                                </label>
                                <button class="widget__search--form__btn"  type="submit">
                                    Tìm kiếm
                                </button>
                            </form>
                        </div>
                        <div class="single__widget widget__bg">
                            <h2 class="widget__title position__relative h3">Danh mục sản phẩm</h2>
                            <ul class="widget__categories--menu">
                                <c:forEach var="c" items="${categories}">
                                    <li class="widget__categories--menu__list">
                                        <a class="widget__categories--menu__label d-flex align-items-center" href="<%=request.getContextPath()%>/products?categoryId=${c.categoryId}&pageSize=${pageSize}&sortBy=${sortBy}">
                                            <img class="widget__categories--menu__img" src="data:image/png;base64, ${c.image}" alt="categories-img">
                                            <span class="widget__categories--menu__text">${c.name}</span>
                                            <svg class="widget__categories--menu__arrowdown--icon" xmlns="http://www.w3.org/2000/svg" width="12.355" height="8.394">
                                                <path  d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z" transform="translate(-6 -8.59)" fill="currentColor"></path>
                                            </svg>
                                        </a>
                                        <ul class="widget__categories--sub__menu">
                                            <c:forEach var="sub" items="${c.subCategories}">
                                                <li class="widget__categories--sub__menu--list">
                                                    <a class="widget__categories--sub__menu--link d-flex align-items-center" href="<%=request.getContextPath()%>/products?categoryId=${sub.categoryId}&pageSize=${pageSize}&sortBy=${sortBy}">
                                                        <img class="widget__categories--sub__menu--img" src="data:image/png;base64, ${sub.image}" alt="categories-img">
                                                        <span class="widget__categories--sub__menu--text">${sub.name}</span>
                                                    </a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="single__widget price__filter widget__bg">
                            <h2 class="widget__title position__relative h3">Lọc sản phẩm theo giá</h2>
                            <form class="price__filter--form" action="<%=request.getContextPath()%>/products">
                                <input type="hidden" name="pageSize" value="${pageSize}"/>
                                <input type="hidden" name="sortBy" value="${sortBy}"/>
                                <div class="price__filter--form__inner mb-15 d-flex align-items-center">
                                    <div class="price__filter--group">
                                        <label class="price__filter--label" for="Filter-Price-GTE2">Từ</label>
                                        <div class="price__filter--input border-radius-5 d-flex align-items-center">
                                            <span class="price__filter--currency">VND</span>
                                            <input class="price__filter--input__field border-0" id="filterPrice-GTE2" name="filter.v.price.gte" type="number" placeholder="0" min="0" required>
                                        </div>
                                    </div>
                                    <div class="price__divider">
                                        <span>-</span>
                                    </div>
                                    <div class="price__filter--group">
                                        <label class="price__filter--label" for="Filter-Price-LTE2">Đến</label>
                                        <div class="price__filter--input border-radius-5 d-flex align-items-center">
                                            <span class="price__filter--currency">VND</span>
                                            <input class="price__filter--input__field border-0" id="filterPrice-LTE2" name="filter.v.price.lte" type="number" min="0" placeholder="250.00" required>
                                        </div>
                                    </div>
                                </div>
                                <button class="price__filter--btn primary__btn" type="submit">Lọc giá</button>
                            </form>
                        </div>
                        <div class="single__widget widget__bg">
                            <h2 class="widget__title position__relative h3">Thương hiệu</h2>
                            <ul class="widget__tagcloud">
                                <c:forEach var="b" items="${brands}">
                                    <li class="widget__tagcloud--list"><a class="widget__tagcloud--link" href="<%=request.getContextPath()%>/products?brandId=${b.brandId}&pageSize=${pageSize}&sortBy=${sortBy}">${b.brandName}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-8">
                    <div class="shop__header bg__gray--color d-flex align-items-center justify-content-between mb-30">
                        <button class="widget__filter--btn d-none d-md-flex align-items-center">
                            <svg  class="widget__filter--btn__icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="28" d="M368 128h80M64 128h240M368 384h80M64 384h240M208 256h240M64 256h80"></path><circle cx="336" cy="128" r="28" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="28"></circle><circle cx="176" cy="256" r="28" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="28"></circle><circle cx="336" cy="384" r="28" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="28"></circle></svg>
                            <span class="widget__filter--btn__text">Lọc</span>
                        </button>
                        <div class="product__view--mode d-flex align-items-center">
                            <div class="product__view--mode__list product__short--by align-items-center d-none d-lg-flex">
                                <label class="product__view--label">Page Size</label>
                                <form action="<%=request.getContextPath()%>/products" class="d-flex">
                                    <div class="select shop__header--select">
                                        <input type="hidden" name="sortBy" value="${sortBy}"/>
                                        <select class="product__view--select" name="pageSize">
                                            <c:forEach var="s" items="<%=PAGE_SIZE.PageSize%>">
                                                <option <c:if test="${s.value == pageSize}"> selected</c:if> value="${s.value}">${s.value}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <button type="submit" class="price__filter--btn primary__btn">Chọn</button>
                                </form>
                            </div>
                            <div class="product__view--mode__list product__short--by align-items-center d-none d-lg-flex">
                                <label class="product__view--label">Sắp xếp :</label>
                                <form action="<%=request.getContextPath()%>/products" class="d-flex">
                                    <div class="select shop__header--select">
                                        <input type="hidden" name="pageSize" value="${pageSize}"/>
                                        <select class="product__view--select" name="sortBy">
                                            <c:forEach var="s" items="<%=SORT_BY.SortBy%>">
                                                <option <c:if test="${s.value == sortBy}"> selected</c:if> value="${s.value}">${s.key}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <button type="submit" class="price__filter--btn primary__btn">Sắp xếp</button>
                                </form>
                            </div>
                            <div class="product__view--mode__list">
                                <div class="product__grid--column__buttons d-flex justify-content-center">
                                    <button class="product__grid--column__buttons--icons active" data-toggle="tab" aria-label="product grid btn" data-target="#product_grid">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 9 9">
                                            <g  transform="translate(-1360 -479)">
                                                <rect id="Rectangle_5725" data-name="Rectangle 5725" width="4" height="4" transform="translate(1360 479)" fill="currentColor"></rect>
                                                <rect id="Rectangle_5727" data-name="Rectangle 5727" width="4" height="4" transform="translate(1360 484)" fill="currentColor"></rect>
                                                <rect id="Rectangle_5726" data-name="Rectangle 5726" width="4" height="4" transform="translate(1365 479)" fill="currentColor"></rect>
                                                <rect id="Rectangle_5728" data-name="Rectangle 5728" width="4" height="4" transform="translate(1365 484)" fill="currentColor"></rect>
                                            </g>
                                        </svg>
                                    </button>
                                    <button class="product__grid--column__buttons--icons" data-toggle="tab" aria-label="product list btn" data-target="#product_list">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="17" height="16" viewBox="0 0 13 8">
                                            <g id="Group_14700" data-name="Group 14700" transform="translate(-1376 -478)">
                                                <g  transform="translate(12 -2)">
                                                    <g id="Group_1326" data-name="Group 1326">
                                                        <rect id="Rectangle_5729" data-name="Rectangle 5729" width="3" height="2" transform="translate(1364 483)" fill="currentColor"></rect>
                                                        <rect id="Rectangle_5730" data-name="Rectangle 5730" width="9" height="2" transform="translate(1368 483)" fill="currentColor"></rect>
                                                    </g>
                                                    <g id="Group_1328" data-name="Group 1328" transform="translate(0 -3)">
                                                        <rect id="Rectangle_5729-2" data-name="Rectangle 5729" width="3" height="2" transform="translate(1364 483)" fill="currentColor"></rect>
                                                        <rect id="Rectangle_5730-2" data-name="Rectangle 5730" width="9" height="2" transform="translate(1368 483)" fill="currentColor"></rect>
                                                    </g>
                                                    <g id="Group_1327" data-name="Group 1327" transform="translate(0 -1)">
                                                        <rect id="Rectangle_5731" data-name="Rectangle 5731" width="3" height="2" transform="translate(1364 487)" fill="currentColor"></rect>
                                                        <rect id="Rectangle_5732" data-name="Rectangle 5732" width="9" height="2" transform="translate(1368 487)" fill="currentColor"></rect>
                                                    </g>
                                                </g>
                                            </g>
                                        </svg>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="shop__product--wrapper">
                        <div class="tab_content">
                            <div id="product_grid" class="tab_pane active show">
                                <div class="product__section--inner product__grid--inner">
                                    <div class="row row-cols-xxl-4 row-cols-xl-3 row-cols-lg-3 row-cols-md-3 row-cols-2 mb--n30">
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
                                                                    <a class="product__items--action__btn" onclick="quickView(this, '<%=request.getContextPath()%>')"  data-id="${p}" data-open="modal1" href="javascript:void(0)">
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
                                                            <a class="product__items--action__cart--btn primary__btn" onclick="addCartItem(this,'<%=request.getContextPath()%>')" data-productId="${products[p].productId}">
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
                            <div id="product_list" class="tab_pane">
                                <div class="product__section--inner">
                                    <div class="row row-cols-1 mb--n30">
                                        <c:forEach var="p" begin="0" end="${products.size() > 0 ? products.size() - 1 : 0}">
                                            <c:if test="${products.size() > 0}">
                                                <div class="col mb-30">
                                                    <div class="product__items product__list--items border-radius-5 d-flex align-items-center">
                                                        <div class="product__list--items__left d-flex align-items-center">
                                                            <div class="product__items--thumbnail product__list--items__thumbnail">
                                                                <a class="product__items--link" href="<%=request.getContextPath()%>/product/details?productId=${products[p].productId}">
                                                                    <img class="product__items--img product__primary--img" src="data:image/png;base64, ${products[p].image}" alt="product-img">
                                                                    <img class="product__items--img product__secondary--img" src="data:image/png;base64, ${products[p].productImages[0].image}" alt="product-img">
                                                                </a>
                                                            </div>
                                                            <div class="product__list--items__content">
                                                                <span class="product__items--content__subtitle mb-5">${products[p].categoryName}</span>
                                                                <h4 class="product__list--items__content--title mb-15"><a href="<%=request.getContextPath()%>/product/details?productId=${products[p].productId}">${products[p].name}</a></h4>
                                                                <p class="product__list--items__content--desc m-0">${products[p].description}</p>
                                                            </div>
                                                        </div>
                                                        <div class="product__list--items__right">
                                                            <span class="product__list--current__price">${products[p].price} VND</span>
                                                            <ul class="rating product__list--rating d-flex">
                                                                <c:forEach var="i" begin="1" end="5">
                                                                    <li class="rating__list">
                                                                <span class="rating__list--icon">
                                                                    <svg class="rating__list--icon__svg" xmlns="http://www.w3.org/2000/svg" width="11.105" height="11.732" viewBox="0 0 10.105 9.732">
                                                                    <path data-name="star - Copy" d="M9.837,3.5,6.73,3.039,5.338.179a.335.335,0,0,0-.571,0L3.375,3.039.268,3.5a.3.3,0,0,0-.178.514L2.347,6.242,1.813,9.4a.314.314,0,0,0,.464.316L5.052,8.232,7.827,9.712A.314.314,0,0,0,8.292,9.4L7.758,6.242l2.257-2.231A.3.3,0,0,0,9.837,3.5Z" transform="translate(0 -0.018)" fill="${i <= products[p].avgRating ? "currentColor" : ""}"></path>
                                                                    </svg>
                                                                </span>
                                                                    </li>
                                                                </c:forEach>
                                                                <li class="rating__list"><span class="rating__list--text">( ${products[p].avgRating}.0)</span></li>
                                                            </ul>
                                                            <div class="product__list--action">
                                                                <a class="product__list--action__cart--btn primary__btn" onclick="addCartItem(this, '<%=request.getContextPath()%>')" data-productId="${products[p].productId}">
                                                                    <svg class="product__list--action__cart--btn__icon" xmlns="http://www.w3.org/2000/svg" width="16.897" height="17.565" viewBox="0 0 18.897 21.565">
                                                                        <path  d="M16.84,8.082V6.091a4.725,4.725,0,1,0-9.449,0v4.725a.675.675,0,0,0,1.35,0V9.432h5.4V8.082h-5.4V6.091a3.375,3.375,0,0,1,6.75,0v4.691a.675.675,0,1,0,1.35,0V9.433h3.374V21.581H4.017V9.432H6.041V8.082H2.667V21.641a1.289,1.289,0,0,0,1.289,1.29h16.32a1.289,1.289,0,0,0,1.289-1.29V8.082Z" transform="translate(-2.667 -1.366)" fill="currentColor"></path>
                                                                    </svg>
                                                                    <span class="product__list--action__cart--text">Thêm vào giỏ hàng</span>
                                                                </a>
                                                                <ul class="product__list--action__wrapper d-flex align-items-center">
                                                                    <li class="product__list--action__child">
                                                                        <a class="product__list--action__btn" onclick="quickView(this, '<%=request.getContextPath()%>')"  data-id="${p}" data-open="modal1" href="javascript:void(0)">
                                                                            <svg class="product__list--action__btn--svg" xmlns="http://www.w3.org/2000/svg" width="30.51" height="25.443" viewBox="0 0 512 512"><path d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z" fill="none" stroke="currentColor" stroke-miterlimit="10" stroke-width="32"></path><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-miterlimit="10" stroke-width="32" d="M338.29 338.29L448 448"></path></svg>

                                                                            <span class="visually-hidden">Quick View</span>
                                                                        </a>
                                                                    </li>
                                                                    <li class="product__list--action__child">
                                                                        <a class="product__list--action__btn" onclick="addWish(this, '<%=request.getContextPath()%>')" data-productId="${products[p].productId}">
                                                                            <svg class="product__list--action__btn--svg" xmlns="http://www.w3.org/2000/svg" width="24.403" height="20.204" viewBox="0 0 24.403 20.204">
                                                                                <g  transform="translate(0)">
                                                                                    <g  data-name="Group 473" transform="translate(0 0)">
                                                                                        <path  data-name="Path 242" d="M17.484,35.514h0a6.858,6.858,0,0,0-5.282,2.44,6.765,6.765,0,0,0-5.282-2.44A6.919,6.919,0,0,0,0,42.434c0,6.549,11.429,12.943,11.893,13.19a.556.556,0,0,0,.618,0c.463-.247,11.893-6.549,11.893-13.19A6.919,6.919,0,0,0,17.484,35.514ZM12.2,54.388C10.41,53.338,1.236,47.747,1.236,42.434A5.684,5.684,0,0,1,6.919,36.75a5.56,5.56,0,0,1,4.757,2.564.649.649,0,0,0,1.05,0,5.684,5.684,0,0,1,10.441,3.12C23.168,47.809,13.993,53.369,12.2,54.388Z" transform="translate(0 -35.514)" fill="currentColor"></path>
                                                                                    </g>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="visually-hidden">Wishlist</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="pagination__area bg__gray--color">
                            <nav class="pagination">
                                <ul class="pagination__wrapper d-flex align-items-center justify-content-center">
                                    <li class="pagination__list">
                                        <a onclick="onClickLink(this, '${pageIndex - 1 > 0 ? pageIndex - 1 : 1}')" class="pagination__item--arrow  link ">
                                            <svg xmlns="http://www.w3.org/2000/svg"  width="22.51" height="20.443" viewBox="0 0 512 512">
                                                <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M244 400L100 256l144-144M120 256h292"></path>
                                            </svg>
                                        </a>
                                    <li>
                                    <c:forEach var="i" begin="1" end="${totalPage}">
                                        <li class="pagination__list">
                                            <a <c:if test="${i == pageIndex}">class="pagination__item pagination__item--current"</c:if> onclick="onClickLink(this, '${i}')" class="pagination__item link">
                                                ${i}
                                            </a>
                                        </li>
                                    </c:forEach>
                                    <li class="pagination__list">
                                        <a onclick="onClickLink(this, '${pageIndex + 1 <= totalPage ? pageIndex + 1 : totalPage}')" class="pagination__item--arrow link">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="22.51" height="20.443" viewBox="0 0 512 512">
                                                <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M268 112l144 144-144 144M392 256H100"></path>
                                            </svg>
                                        </a>
                                    <li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="modal" id="modal-error" style="z-index: 999;" data-animation="slideInUp">
        <div class="modal-dialog quickview__main--wrapper">
            <h3 class="modal- border-bottom-0">Sản phẩm đã có trong Danh sách yêu thích của bạn</h3>
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
                                    <a class="primary__btn quickview__cart--btn" id="add-cartitem" onclick="addCartItem(this, '<%=request.getContextPath()%>')">Thêm vào giỏ hàng</a>
                                </div>
                                <div class="quickview__variant--list variant__wishlist mb-15">
                                    <a class="variant__wishlist--icon" id="add-wishlist" onclick="addWish(this, '<%=request.getContextPath()%>')" title="Add to wishlist">
                                        <svg class="quickview__variant--wishlist__svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M352.92 80C288 80 256 144 256 144s-32-64-96.92-64c-52.76 0-94.54 44.14-95.08 96.81-1.1 109.33 86.73 187.08 183 252.42a16 16 0 0018 0c96.26-65.34 184.09-143.09 183-252.42-.54-52.67-42.32-96.81-95.08-96.81z" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"></path></svg>
                                        Thêm vào Danh sách yêu thích
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
<script>
    if(${products.size() == 0}){
        document.querySelector(".shop__product--wrapper").innerHTML = `<p class="text-center " style="font-size: 30px; color:red;">Không có sản phẩm</p>`
    }
    function onClickLink(e, index){
        index = parseInt(index)
        let alteredURL = removeParam('pageIndex', window.location.href)
        if(!alteredURL.includes('?')) {
            alteredURL += '?pageIndex=' + index
        }
        else{
            alteredURL += '&pageIndex='+ index
        }
        e.href = alteredURL
    }
    function removeParam(key, sourceURL) {
        let rtn = sourceURL.split("?")[0],
            param,
            params_arr = [],
            queryString = (sourceURL.indexOf("?") !== -1) ? sourceURL.split("?")[1] : "";
        if (queryString !== "") {
            params_arr = queryString.split("&");
            for (let i = params_arr.length - 1; i >= 0; i -= 1) {
                param = params_arr[i].split("=")[0];
                if (param === key) {
                    params_arr.splice(i, 1);
                }
            }
            if (params_arr.length) rtn = rtn + "?" + params_arr.join("&");
        }
        return rtn;
    }
</script>
</body>
</html>
