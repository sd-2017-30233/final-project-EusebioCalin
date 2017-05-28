<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--Less styles -->
    <!-- Other Less css file //different less files has different color scheam
     <link rel="stylesheet/less" type="text/css" href="${pageContext.request.contextPath}/resources/themesless/simplex.less">
     <link rel="stylesheet/less" type="text/css" href="${pageContext.request.contextPath}/resources/themesless/classified.less">
     <link rel="stylesheet/less" type="text/css" href="${pageContext.request.contextPath}/resources/themesless/amelia.less">  MOVE DOWN TO activate
     -->
    <!--<link rel="stylesheet/less" type="text/css" href="${pageContext.request.contextPath}/resources/themesless/bootshop.less">
    <script src="${pageContext.request.contextPath}/resources/themes/js/less.js" type="text/javascript"></script> -->

    <!-- Bootstrap style -->
    <link id="callCss" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="${pageContext.request.contextPath}/resources/themes/css/base.css" rel="stylesheet" media="screen"/>
    <!-- Bootstrap style responsive -->
    <link href="${pageContext.request.contextPath}/resources/themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/themes/css/font-awesome.css" rel="stylesheet" type="text/css">
    <!-- Google-code-prettify -->
    <link href="${pageContext.request.contextPath}/resources/themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
    <!-- fav and touch icons -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/themes/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/themes/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/themes/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/themes/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/themes/images/ico/apple-touch-icon-57-precomposed.png">
    <style type="text/css" id="enject"></style>
</head>
<body>
<div id="header">
    <div class="container">
        <div id="welcomeLine" class="row">
            <div class="span6">Welcome!<strong> User</strong></div>
            <div class="span6">
                <div class="pull-right">
                    <a href="/user/shopping_cart"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> Shopping cart</span> </a>
                </div>
            </div>
        </div>
        <!-- Navbar ================================================== -->
        <div id="logoArea" class="navbar">
            <a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <div class="navbar-inner">
                <a class="brand" href="index.html"><img src="${pageContext.request.contextPath}/resources/themes/images/logo1.png" alt="Bootsshop"/></a>
                <form class="form-inline navbar-search" method="get" action="/user/search" >
                    <input id="srchFld" class="srchTxt" type="text" name="searchString" />
                    <select class="srchTxt" name="option">
                        <option value="all">All</option>
                        <option value="videocards">Video Cards </option>
                        <option value="processors">Processors </option>
                        <option value="memorymodules">Memory Modules</option>
                        <option value="motherboards">Motherboards </option>
                    </select>
                    <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
                </form>
                <ul id="topMenu" class="nav pull-right">
                    <li class=""><a href="special_offer.html">Specials Offer</a></li>
                    <li class=""><a href="normal.html">Delivery</a></li>
                    <li class=""><a href="contact.html">Contact</a></li>
                    <li class="">
                        <form action="/logout" method="post" style="padding-top:5">
                            <input type="submit" class="btn btn-large btn-success" value="Sign Out" />
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Header End====================================================================== -->
<div id="mainBody">
    <div class="container">
        <div class="row">
            <!-- Sidebar ================================================== -->
            <div id="sidebar" class="span3">
                <ul id="sideManu" class="nav nav-tabs nav-stacked">
                    <li class="subMenu open"><a>Components</a>
                        <ul>
                            <li><a class="active" href="/user/videoCards"><i class="icon-chevron-right"></i>Video cards</a></li>
                            <li><a href="/user/processors"><i class="icon-chevron-right"></i>Processors</a></li>
                            <li><a href="/user/motherboards"><i class="icon-chevron-right"></i>Motherboards</a></li>
                            <li><a href="/user/memoryModules"><i class="icon-chevron-right"></i>Memory modules</a></li>
                        </ul>
                    </li>


                </ul>
                <br/>
                <div class="thumbnail">
                    <img src="${pageContext.request.contextPath}/resources/themes/images/products/panasonic.jpg" alt="Bootshop panasonoc New camera"/>
                    <div class="caption">
                        <h5>Panasonic</h5>
                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
                    </div>
                </div><br/>
                <div class="thumbnail">
                    <img src="${pageContext.request.contextPath}/resources/themes/images/products/kindle.png" title="Bootshop New Kindel" alt="Bootshop Kindel">
                    <div class="caption">
                        <h5>Kindle</h5>
                        <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
                    </div>
                </div><br/>
                <div class="thumbnail">
                    <img src="${pageContext.request.contextPath}/resources/themes/images/payment_methods.png" title="Bootshop Payment Methods" alt="Payments Methods">
                    <div class="caption">
                        <h5>Payment Methods</h5>
                    </div>
                </div>
            </div>
            <!-- Sidebar end=============================================== -->
            <div class="span9">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                    <li class="active">Products Name</li>
                </ul>
                <h3> Products Name <small class="pull-right"> 40 products are available </small></h3>
                <hr class="soft"/>
                <p>
                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular and we have a great number of faithful customers all over the country.
                </p>
                <hr class="soft"/>
                <form class="form-horizontal span6">
                    <div class="control-group">
                        <label class="control-label alignL">Sort By </label>
                        <select>
                            <option>Priduct name A - Z</option>
                            <option>Priduct name Z - A</option>
                            <option>Priduct Stoke</option>
                            <option>Price Lowest first</option>
                        </select>
                    </div>
                </form>

                <div id="myTab" class="pull-right">
                    <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
                    <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
                </div>
                <br class="clr"/>
                <div class="tab-content">
                    <div class="tab-pane" id="listView">
                        <div class="row">
                            <div class="span2">
                                <img src="${pageContext.request.contextPath}/resources/themes/images/products/3.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>

                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                </form>
                            </div>
                        </div>
                        <hr class="soft"/>
                        <div class="row">
                            <div class="span2">
                                <img src="${pageContext.request.contextPath}/resources/themes/images/products/1.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>

                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                </form>
                            </div>
                        </div>
                        <hr class="soft"/>
                        <div class="row">
                            <div class="span2">
                                <img src="${pageContext.request.contextPath}/resources/themes/images/products/3.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>

                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                </form>
                            </div>
                        </div>
                        <hr class="soft"/>
                        <div class="row">
                            <div class="span2">
                                <img src="${pageContext.request.contextPath}/resources/themes/images/products/3.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>

                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                </form>
                            </div>
                        </div>

                        <hr class="soft"/>
                        <div class="row">
                            <div class="span2">
                                <img src="${pageContext.request.contextPath}/resources/themes/images/products/3.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>
                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
                                </form>
                            </div>
                        </div>
                        <hr class="soft"/>
                        <div class="row">
                            <div class="span2">
                                <img src="${pageContext.request.contextPath}/resources/themes/images/products/3.jpg" alt=""/>
                            </div>
                            <div class="span4">
                                <h3>New | Available</h3>
                                <hr class="soft"/>
                                <h5>Product Name </h5>
                                <p>
                                    Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies -
                                    that is why our goods are so popular..
                                </p>
                                <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                <br class="clr"/>
                            </div>
                            <div class="span3 alignR">
                                <form class="form-horizontal qtyFrm">
                                    <h3> $140.00</h3>
                                    <label class="checkbox">
                                        <input type="checkbox">  Adds product to compair
                                    </label><br/>

                                    <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
                                    <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                </form>
                            </div>
                        </div>
                        <hr class="soft"/>
                    </div>

                    <div class="tab-pane  active" id="blockView">
                        <ul class="thumbnails">
                            <c:forEach items = "${itemList}" var = "item">
                            <li class="span3">
                                <div class="thumbnail">
                                    <a href="/user/videocard_details?id=${item.id}"><img src="${pageContext.request.contextPath}/resources/themes/images/products/${item.picture}" alt=""/></a>
                                    <div class="caption">
                                        <h5><c:out value = "${item.name}"></c:out></h5>
                                        <p>
                                            <c:out value = "${item.price}"></c:out>
                                        </p>
                                        <h4 style="text-align:center"><a class="btn" href="#"  > <i class="icon-zoom-in"></i></a>
                                            <form action="/user/add_to_cart" method="GET" >
                                                <button type="submit" class="btn" name="idItem" value="${item.id}">Add to cart</button>
                                            </form>
                                        </h4>
                                    </div>
                                </div>
                            </li>
                            </c:forEach>
                        </ul>
                        <hr class="soft"/>
                    </div>
                </div>

                <a href="compair.html" class="btn btn-large pull-right">Compair Product</a>
                <div class="pagination">
                    <ul>
                        <li><a href="#">&lsaquo;</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">...</a></li>
                        <li><a href="#">&rsaquo;</a></li>
                    </ul>
                </div>
                <br class="clr"/>
            </div>
        </div>
    </div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
<div  id="footerSection">
    <div class="container">
        <div class="row">
            <div class="span3">
                <h5>ACCOUNT</h5>
                <a href="login.html">YOUR ACCOUNT</a>
                <a href="login.html">PERSONAL INFORMATION</a>
                <a href="login.html">ADDRESSES</a>
                <a href="login.html">DISCOUNT</a>
                <a href="login.html">ORDER HISTORY</a>
            </div>
            <div class="span3">
                <h5>INFORMATION</h5>
                <a href="contact.html">CONTACT</a>
                <a href="register.html">REGISTRATION</a>
                <a href="legal_notice.html">LEGAL NOTICE</a>
                <a href="tac.html">TERMS AND CONDITIONS</a>
                <a href="faq.html">FAQ</a>
            </div>
            <div class="span3">
                <h5>OUR OFFERS</h5>
                <a href="#">NEW PRODUCTS</a>
                <a href="#">TOP SELLERS</a>
                <a href="special_offer.html">SPECIAL OFFERS</a>
                <a href="#">MANUFACTURERS</a>
                <a href="#">SUPPLIERS</a>
            </div>
            <div id="socialMedia" class="span3 pull-right">
                <h5>SOCIAL MEDIA </h5>
                <a href="#"><img width="60" height="60" src="${pageContext.request.contextPath}/resources/themes/images/facebook.png" title="facebook" alt="facebook"/></a>
                <a href="#"><img width="60" height="60" src="${pageContext.request.contextPath}/resources/themes/images/twitter.png" title="twitter" alt="twitter"/></a>
                <a href="#"><img width="60" height="60" src="${pageContext.request.contextPath}/resources/themes/images/youtube.png" title="youtube" alt="youtube"/></a>
            </div>
        </div>
        <p class="pull-right">&copy; Bootshop</p>
    </div><!-- Container End -->
</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
<script src="${pageContext.request.contextPath}/resources/themes/js/jquery.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/themes/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/themes/js/google-code-prettify/prettify.js"></script>

<script src="${pageContext.request.contextPath}/resources/themes/js/bootshop.js"></script>
<script src="${pageContext.request.contextPath}/resources/themes/js/jquery.lightbox-0.5.js"></script>

<!-- Themes switcher section ============================================================================================= -->
<div id="secectionBox">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/switch/themeswitch.css" type="text/css" media="screen" />
    <script src="${pageContext.request.contextPath}/resources/themes/switch/theamswitcher.js" type="text/javascript" charset="utf-8"></script>
    <div id="themeContainer">
        <div id="hideme" class="themeTitle">Style Selector</div>
        <div class="themeName">Oregional Skin</div>
        <div class="images style">
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="bootshop"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/bootshop.png" alt="bootstrap business templates" class="active"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="businessltd"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/businessltd.png" alt="bootstrap business templates" class="active"></a>
        </div>
        <div class="themeName">Bootswatch Skins (11)</div>
        <div class="images style">
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="amelia" title="Amelia"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/amelia.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="spruce" title="Spruce"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/spruce.png" alt="bootstrap business templates" ></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="superhero" title="Superhero"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/superhero.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="cyborg"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/cyborg.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="cerulean"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/cerulean.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="journal"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/journal.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="readable"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/readable.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="simplex"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/simplex.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="slate"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/slate.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="spacelab"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/spacelab.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="united"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/united.png" alt="bootstrap business templates"></a>
            <p style="margin:0;line-height:normal;margin-left:-10px;display:none;"><small>These are just examples and you can build your own color scheme in the backend.</small></p>
        </div>
        <div class="themeName">Background Patterns </div>
        <div class="images patterns">
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern1"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern1.png" alt="bootstrap business templates" class="active"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern2"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern2.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern3"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern3.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern4"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern4.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern5"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern5.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern6"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern6.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern7"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern7.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern8"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern8.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern9"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern9.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern10"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern10.png" alt="bootstrap business templates"></a>

            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern11"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern11.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern12"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern12.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern13"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern13.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern14"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern14.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern15"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern15.png" alt="bootstrap business templates"></a>

            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern16"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern16.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern17"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern17.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern18"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern18.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern19"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern19.png" alt="bootstrap business templates"></a>
            <a href="${pageContext.request.contextPath}/resources/themes/css/#" name="pattern20"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern20.png" alt="bootstrap business templates"></a>

        </div>
    </div>
</div>
<span id="themesBtn"></span>
</body>
</html>