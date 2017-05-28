<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--Less styles -->
    <!-- Other Less css file //different less files has different color scheam
     <link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
     <link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
     <link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
     -->
    <!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
    <script src="themes/js/less.js" type="text/javascript"></script> -->

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
                    <li class="active"> SHOPPING CART</li>
                </ul>
                <h3>  SHOPPING CART </h3>
                <hr class="soft"/>


                <a href="/user/userPage" class="btn btn-large"><i class="icon-arrow-left"></i> Continue Shopping </a>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Product</th>
                        <th>Description</th>
                        <th>Quantity/Update</th>
                        <th>Price</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items = "${itemList}" var = "item">
                    <tr>
                        <td> <img width="60" src="${pageContext.request.contextPath}/resources/themes/images/products/${item.picture}" alt=""/></td>
                        <td>${item.name}<br/>Color : black, Material : metal</td>
                        <td>
                            <div class="input-append">

                                <input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text">
                                <button class="btn" type="button"><i class="icon-minus"></i></button>
                                <button class="btn" type="submit"><i class="icon-plus"></i></button>
                            </div>
                            <div class="input-append">
                                <form action="/user/delete_from_cart" method="GET" >
                                <button class="btn btn-danger" type="submit" name="idDelete" value="${item.id}"><i class="icon-remove icon-white"></i></button>
                                </form>
                            </div>

                        </td>
                        <td><c:out value="${item.price}"></c:out> </td>

                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <h3>SELECT PAYMENT</h3>
                <div class="span9">
                    <form class="form-inline navbar-search" method="get" action="/user/place_order" >
                        <select class="paymentTxt" name="option">
                            <option value="creditCard" >CREDIT CARD</option>
                            <option value="curier">CURIER </option>
                        </select>
                        <button type="submit" id="payButton" class="btn btn-primary">PROCEED TO PAY</button>
                    </form>
                </div>



              <!--  <a href="/user/place_order" class="btn btn-large pull-right">Next <i class="icon-arrow-right"></i></a> -->

            </div>
        </div></div>
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
            <a href="themes/css/#" name="bootshop"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/bootshop.png" alt="bootstrap business templates" class="active"></a>
            <a href="themes/css/#" name="businessltd"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/businessltd.png" alt="bootstrap business templates" class="active"></a>
        </div>
        <div class="themeName">Bootswatch Skins (11)</div>
        <div class="images style">
            <a href="themes/css/#" name="amelia" title="Amelia"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/amelia.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="spruce" title="Spruce"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/spruce.png" alt="bootstrap business templates" ></a>
            <a href="themes/css/#" name="superhero" title="Superhero"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/superhero.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="cyborg"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/cyborg.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="cerulean"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/cerulean.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="journal"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/journal.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="readable"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/readable.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="simplex"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/simplex.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="slate"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/slate.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="spacelab"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/spacelab.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="united"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/clr/united.png" alt="bootstrap business templates"></a>
            <p style="margin:0;line-height:normal;margin-left:-10px;display:none;"><small>These are just examples and you can build your own color scheme in the backend.</small></p>
        </div>
        <div class="themeName">Background Patterns </div>
        <div class="images patterns">
            <a href="themes/css/#" name="pattern1"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern1.png" alt="bootstrap business templates" class="active"></a>
            <a href="themes/css/#" name="pattern2"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern2.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern3"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern3.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern4"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern4.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern5"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern5.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern6"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern6.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern7"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern7.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern8"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern8.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern9"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern9.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern10"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern10.png" alt="bootstrap business templates"></a>

            <a href="themes/css/#" name="pattern11"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern11.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern12"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern12.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern13"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern13.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern14"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern14.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern15"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern15.png" alt="bootstrap business templates"></a>

            <a href="themes/css/#" name="pattern16"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern16.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern17"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern17.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern18"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern18.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern19"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern19.png" alt="bootstrap business templates"></a>
            <a href="themes/css/#" name="pattern20"><img src="${pageContext.request.contextPath}/resources/themes/switch/images/pattern/pattern20.png" alt="bootstrap business templates"></a>

        </div>
    </div>
</div>
<span id="themesBtn"></span>
</body>
</html>