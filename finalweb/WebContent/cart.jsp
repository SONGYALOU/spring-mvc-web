<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>cart</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="renderer" content="webkit">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
		<link rel="stylesheet" href="/finalweb/css/demo.css" />
		<link rel="stylesheet" href="/finalweb/css/cartstyle.css" />
		<link rel="stylesheet" href="/finalweb/css/fen.css" />
		<script type="text/javascript" src="/finalweb/js/jquery-2.2.0.min.js"></script>
		
		
		
		<link href="/finalweb/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="/finalweb/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" type="text/css" href="/finalweb/css/demo.css" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }>
</script>
<meta name="keywords" content="Kick flips Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<link href='http://fonts.useso.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
		
	</head>

	<body>
	
	
	<!--banner start here-->
<div class="banner-stripes">
		<div class="banner-strip-lft">
			 <div class="container"> 
				<div class="bann-head">
					<a href="finalweb/index.jsp"><img src="/finalweb/images/logo.png" alt=""/></a>
					<ul  class="bann-list">
						<li><a href="${pageContext.request.contextPath}/product/findAll">商城</a></li>
						<li><a href="magazine.html">简报</a></li>
					</ul>
				</div>
		   </div>
	    </div>
	    <div class="banner-strip-rit">
	    		<div class="bann-contact">
	    			<div class="search">
	    				<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
	    				<input type="submit" value=""/>
	    			</div>
	    			<ul>
		    			<li><a href="signup.jsp">注册</a></li>
		    			<li><a href="login.jsp">登陆</a></li>
		    			<li><a href="${pageContext.request.contextPath}/cart/checkCart">购物车</li>
	    			</ul>
	    		</div>
	    </div>
	   <div class="clearfix"> </div>
	 </div> 
<!--banner end here-->
	
	
	
	
			<script>
				$(function(){
					$(".meau").on("click", function(e) {
					$(".meau_box").slideToggle();
					$(document).one("click", function() {
						$(".meau_box").slideUp();
					});
					e.stopPropagation();
				});
				$(".meau").on("click", function(e) {
					e.stopPropagation();
				});
				});
			</script>
		<div class="personal">
			<p class="title" style="margin-bottom: 30px;">我的购物车</p>
			<div class="per_box">
				<ul class="per_navul shop_carul">
					<li style="width: 130px;margin-right: 10px;">
						<input type="checkbox" style="margin-right: 20px;"/>
						全选
					</li>
					<li style="width: 450px;text-align: left;">商品名称</li>
					<li>单价</li>
					<li>数量</li>
					<li>样式</li>
					<li>合计</li>
				</ul>
				
				<c:forEach items="${checkcart}" var="cc">
				<ul class="per_listul shop_carul" style="padding-top: 10px;box-sizing: border-box;">
					<li style="width: 130px;margin-right: 10px;">
						<input type="checkbox" style="margin-right: 10px;margin-left: 18px;"/>
						<img src="" style="vertical-align: middle;"/>
					</li>
					<li style="width: 450px;text-align: left;">${cc.productname }</li>
					<li style="color: #3CA5F1;">$ ${cc.productprice }</li>
					<li>
						<p class="p5">
							<span class="num">-</span>
							<input type="text" value="${cc.ordernum}"/>
							<span class="num">+</span>
						</p>
					</li>
					<li>M10</li>
					<li style="color: #3CA5F1;">${cc.ordernum }x${cc.productprice }</li>
					<li>删除</li>
				</ul>
				</c:forEach>
			</div>
			<p class="shop_car_totle">
				不包含运费共计：<span style="font-size: 19px;color: #d20000;">￥147</span>
				<a class="jie_btn" href="fill_order.html">确认结算</a>
			</p>
		</div>
		
		
		
		<!--footer start here-->
<div class="footer">
	<div class="container">
		<div class="footer-main">
			<div class="col-md-4 ftr-grid">
				<h3>新品预览</h3>
				<div class="ftr-glss">
					<div class="glss-text">
					<h3>Sunglasses VI</h3>
					<p>This is Photoshop's version  of Lorem Ipsum.</p>
					<div class="ftr-gls-bwn">
						<a href="#">View</a>
					</div>
					</div>
				 </div>
			</div>
			<div class="col-md-5 ftr-grid">
				<h3>新品简介</h3>
				<div class="ft-killbg">
					<h3>Killin,It</h3>
					<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis.</p>
				  <div class="ftr-black-bwn">
				  	<a href="#">View Post</a>
				  </div>
				</div>
			</div>
			<div class="col-md-3 ftr-small-grid">
				<span class="ftr-line"> </span>
				<ul>
					<li><a href="magazine.html">简报Magazine</a></li>
					<li><a href="store.html">商城Store</a></li>
					<li><a href="newsletter.html">订阅邮件Newsletter</a></li>
					<li><a href="about.html">关于我们About</a><li>
					<li><a href="contact.html">联系我们Contact</a><li>
					
				</ul>
			</div>
			<div class="clearfix"> </div>
			<div class="copyright">
				<p>Copyright &copy; 2015.Company name All rights reserved</a>  <a href="http://www.cssmoban.com/" ></a></p>			</div>
		</div>
	</div>
</div>
<!--footer end here-->
		

	</body>

</html>