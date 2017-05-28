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
            <div class="span6">
                <div class="pull-right">
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

        </div>
    </div>
</div>
<!-- Header End====================================================================== -->
<div id="mainBody">
    <div class="container">
        <div class="row">
            <!-- Sidebar ================================================== -->

            <div class="span9">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                    <li class="active">Login</li>
                </ul>
                <h3> Login</h3>
                <hr class="soft"/>

                <div class="row">
                    <div class="span4">
                        <div class="well">
                            <h5>CREATE YOUR ACCOUNT</h5><br/>
                            <form action="/registerAccount" method="GET" class="form-signin">
                                <div class="control-group">
                                    <div class="controls">
                                        <input name="name" type="text" class="span3" placeholder="Your name"/>
                                        <input name="username" type="text" class="span3" placeholder="Username"/>
                                        <input name="password1" type="password" class="span3" placeholder="Password"/>
                                        <input name="password2" type="password" class="span3" placeholder="Repeat password"/>
                                        <input name="email" type="text" class="span3" placeholder="Email"/>
                                        <input name="phone" type="text" class="span3" placeholder="Phone"/>
                                        <input name="address" type="text" class="span3" placeholder="Address"/>
                                    </div>
                                </div>
                                <div class="controls">
                                    <button type="submit" class="btn block">Create Your Account</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="span1"> &nbsp;</div>
                    <div class="span4">
                        <div class="well">
                            <h5>ALREADY REGISTERED ?</h5>
                            <form method="POST" action="/login" class="form-signin">
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail1">Username</label>
                                    <div class="controls">
                                        <input name="username" class="span3"  type="text" id="inputEmail1" placeholder="Email">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword1">Password</label>
                                    <div class="controls">
                                        <input name="password" type="password" class="span3"  id="inputPassword1" placeholder="Password">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" class="btn">Sign in</button> <a href="forgetpass.html">Forget password?</a>
                                    </div>
                                </div>
                                <c:if test="${param.error ne null}">
                                    <div class="alert-danger">Invalid username and password.</div>
                                </c:if>
                                <c:if test="${param.logout ne null}">
                                    <div class="alert-normal">You have been logged out.</div>
                                </c:if>
                                <input type="hidden" name="${_csrf.parameterName}"
                                       value="${_csrf.token}" />
                            </form>
                        </div>
                    </div>
                </div>

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>