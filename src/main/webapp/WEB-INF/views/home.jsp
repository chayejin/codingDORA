<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>

 <html>

    <head>

    	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <meta charset="utf-8">
        <!-- Description, Keywords and Author -->
        <meta name="description" content="">
        <meta name="author" content="">
        <title>::codingDARA funding::</title>

		<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">

        <!-- style -->
        <link href="resources/css/style.css" rel="stylesheet" type="text/css">
        <!-- style -->

        <!-- bootstrap -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- responsive -->
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- effects -->
        <link href="resources/css/effects/set2.css" rel="stylesheet" type="text/css">
        <link href="resources/css/effects/normalize.css" rel="stylesheet" type="text/css">
        <link href="resources/css/effects/component.css"  rel="stylesheet" type="text/css" >
	</head>



    <body>
    	<!-- header -->
        	<header role="header">
            	<div class="container">
                	<!-- logo -->
                    	<h1>
                        	<a href="/" title="codingDARA funding"><img style="width: 150px;" src="resources/images/logo.png" title="codingDORA" alt="codingDORA"/></a>
                        </h1>
                    <!-- logo -->
                    <!-- nav -->
                    <nav role="header-nav" class="navy">
                        <ul>
                            <li><a href="my/fundingList" title="My FundingList">My FundingList</a></li>
                           <!-- 임시 페이지 이동 -->
                           <li><a href="postdetail" title="PostDetail">PostDetail</a></li>
                           <!-- /임시 페이지 이동 -->
                            <c:if test="${userId != null}">
                            <li><a href="my/profile" title="My profile">My profile</a></li>
                            <li><a href="my/newPost" title="newPost">new Posting</a></li>
	                            <li><a href="my/logout" title="logout">Logout</a></li>
							</c:if>
                            <c:if test="${userId == null}">
	                            <li><a href="signUp" title="SignUp">SignUp</a></li>
							</c:if>                            
                        </ul>
                    </nav>
                    <!-- nav -->
                </div>
            </header>
        <!-- header -->

        <!-- main -->

        <main role="main-home-wrapper" class="container">
            <div class="row">
            	<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">
                	<article role="pge-title-content">
                    	<header>
                        	<h2><span>avana</span> A Brand new Agency.</h2>
                        </header>
                        <p>This is the story of Avana, a minimal Bootstrap template for creative agency.</p>
                    </article>
                </section>

                <section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">
                	<figure class="effect-oscar">
                    	<img src="resources/images/home-images/image-1.jpg" alt="" class="img-responsive"/>
                        <figcaption>
                        	<h2>Eliana Dedda<span> Identity</span></h2>
							<p>Personal Brand Identity.</p>
							<a href="works-details.jsp">View more</a>
                        </figcaption>
                    </figure>
                </section>

                <div class="clearfix"></div>

                <section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">
                	<ul class="grid-lod effect-2" id="grid">
                    	<li>
                        	<figure class="effect-oscar">
                            <img src="resources/images/home-images/image-2.jpg" alt="" class="img-responsive"/>
                            <figcaption>
                                    <h2>Studio Thonik <span>Exhibition</span></h2>
                                    <p>Project for Thonik, design studio based in Amsterdam</p>
                                    <a href="works-details.jsp">View more</a>
                            </figcaption>
                        </figure>
                        </li>
                        <li>
                        	<figure class="effect-oscar">
                            <img src="resources/images/home-images/image-4.jpg" alt="" class="img-responsive"/>
                            <figcaption>
                                <h2>A Brand <span>new Agency</span></h2>
                                <p>Over 40,000 customers use our themes to power their</p>
                                <a href="works-details.jsp">View more</a>
                            </figcaption>
                        </figure>
                        </li>
                    </ul>
                </section>

                <section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">
                	<ul class="grid-lod effect-2" id="grid">
                    	<li>
                        	<figure class="effect-oscar">
                            <img src="resources/images/home-images/image-3.jpg" alt="" class="img-responsive"/>
                             <figcaption>
                                <h2>Anatome Milano <span>Galleria</span></h2>
                                <p>Galerie Anatome based in Paris</p>
                                <a href="works-details.jsp">View more</a>
                            </figcaption>
                        </figure>
                        </li>
                        <li>
                        	<figure class="effect-oscar">
                            <img src="resources/images/home-images/image-5.jpg" alt="" class="img-responsive"/>
                             <figcaption>
                                <h2>A Brand <span>new Agency</span></h2>
                                <p>Over 40,000 customers use our themes to power their</p>
                                <a href="works-details.jsp">View more</a>
                            </figcaption>
                        </figure>
                        </li>
                    </ul>
                </section>
                
				<c:forEach var="donation" items="${donationList}">
					${donation.d_num}
					${donation.userid}
					${donation.d_name}
					${donation.d_content}
					${donation.d_introduce}
					${donation.d_target}
					${donation.d_effect}
					${donation.d_goalMoney}
					${donation.d_totalMoney}
					${donation.d_targetWallet}
					${donation.d_term}
					${donation.d_images}
				</c:forEach>
				
                <div class="clearfix"></div>
            </div>
        </main>
    	<!-- main -->
        <!-- footer -->
        <footer role="footer">

            <!-- logo -->

                <h1>

                    <a href="index.jsp" title="avana LLC"><img src="resources/images/logo.png" title="avana LLC" alt="avana LLC"/></a>

                </h1>

            <!-- logo -->

            <!-- nav -->

            <nav role="footer-nav">

            	<ul>

                	<li><a href="index.jsp" title="Work">Work</a></li>

                    <li><a href="about.jsp" title="About">About</a></li>

                    <li><a href="blog.jsp" title="Blog">Blog</a></li>

                    <li><a href="contact.jsp" title="Contact">Contact</a></li>

                </ul>

            </nav>

            <!-- nav -->

            <ul role="social-icons">

            	<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>

                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>

                <li><a href="#"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>

            </ul>

            <p class="copy-right">&copy; 2015  avana LLC.. All rights Resved</p>

        </footer>

        <!-- footer -->

    

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

        <script src="resources/js/jquery.min.js" type="text/javascript"></script>
        <!-- custom -->

		<script src="resources/js/nav.js" type="text/javascript"></script>
        <script src="resources/js/custom.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/js/effects/masonry.pkgd.min.js"  type="text/javascript"></script>
		<script src="resources/js/effects/imagesloaded.js"  type="text/javascript"></script>
		<script src="resources/js/effects/classie.js"  type="text/javascript"></script>
		<script src="resources/js/effects/AnimOnScroll.js"  type="text/javascript"></script>
        <script src="resources/js/effects/modernizr.custom.js"></script>
        <!-- jquery.countdown -->

        <script src="resources/js/html5shiv.js" type="text/javascript"></script>

    </body>

</html>