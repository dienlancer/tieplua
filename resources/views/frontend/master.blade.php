<?php 
$setting=getSettingSystem();
$seo=getSeo();

$telephone=$setting['telephone']['field_value'];
$facebook_url=$setting['facebook_url']['field_value'];
$twitter_url=$setting['twitter_url']['field_value'];
$google_plus=$setting['google_plus']['field_value'];
$youtube_url=$setting['youtube_url']['field_value'];
$instagram_url=$setting['instagram_url']['field_value'];
$pinterest_url=$setting['pinterest_url']['field_value'];   

$seo_title="";
if(isset($title) && !empty($title)){
	$seo_title=$title;
}else{	
	$seo_title=$seo["title"];
}

$seo_meta_description="";
if(isset($meta_description) && !empty($meta_description)){
	$seo_meta_description=$meta_description;
}else{
	$seo_meta_description=$seo["meta_description"];
}

$seo_meta_keyword="";
if(isset($meta_keyword) && ! empty($meta_keyword)){
	$seo_meta_keyword=$meta_keyword;
}else{
	$seo_meta_keyword=$seo["meta_keyword"];
}
$seo_google_analytics=$seo["google_analytics"];
$seo_author=$seo["author"];
$seo_copyright=$seo["copyright"];
$seo_generator="Mã nguồn mở phát triển bởi tichtacso.com";
$seo_google_site_verification=$seo["google_site_verification"];
$seo_page_url=url('/');
$seo_favicon=asset('upload/'.$seo['favicon']);
$seo_logo_frontend=asset('upload/'.$seo['logo_frontend']);
$seo_alias="";
if(isset($alias)){
	$seo_alias=$alias;
}

$ssName="vmuser";
$arrUser =array();   
$user = Sentinel::forceCheck(); 
if(!empty($user)){                
    $arrUser = $user->toArray();    
}          
$account_link=route("frontend.index.viewAccount");  
$logout_link=route("frontend.index.getLgout"); 
$security_link=route("frontend.index.viewSecurity"); 
$invoice_link=route("frontend.index.getInvoice");
$register_member_link=route("frontend.index.register");
$cart_link=route('frontend.index.viewCart');

$ssNameCart='vmart';
$quantity=0;
$arrCart=array();
if(Session::has($ssNameCart)){    
	$arrCart = @Session::get($ssNameCart)["cart"];    
}         
if(count($arrCart) > 0){
	foreach ($arrCart as $key => $value){
		$quantity+=(int)$value['product_quantity'];              
	}
}        
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">  

	<title><?php echo $seo_title; ?></title>
	<meta name="keywords" content="<?php echo $seo_meta_keyword; ?>">
	<meta name="description" content="<?php echo $seo_meta_description; ?>">	
	<meta name="author" content="<?php echo $seo_author; ?>">
	<meta name="copyright" content="<?php echo $seo_copyright; ?>">
	<meta name="robots" content="index, archive, follow, noodp">
	<meta name="googlebot" content="index,archive,follow,noodp">
	<meta name="msnbot" content="all,index,follow">
	<meta name="generator" content="<?php echo $seo_generator; ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="google-site-verification" content="<?php echo $seo_google_site_verification; ?>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta property="og:title" content="<?php echo $seo_title; ?>">
	<meta property="og:type" content="website">
	<meta property="og:description" content="<?php echo $seo_meta_description; ?>">
	<meta property="og:site_name" content="<?php echo $seo_title; ?>">
	<meta property="og:url" content="<?php echo $seo_page_url; ?>">
	<!-- begin google analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo $seo_google_analytics; ?>"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', '<?php echo $seo_google_analytics; ?>');
	</script>
	<!-- end google analytics -->
	<link rel="shortcut icon" href="<?php echo $seo_favicon; ?>" type="image/x-icon">
	<link rel="icon" href="<?php echo $seo_favicon; ?>" type="image/x-icon">
	<script src="{{ asset('public/frontend/js/jquery-3.2.1.js') }}"></script>
	<!--begin bootstrap-->
	<script src="{{ asset('public/frontend/js/bootstrap.js') }}"></script>
	<link rel="stylesheet" href="{{ asset('public/frontend/css/bootstrap.css') }}" />
	<!--end bootstrap-->
	<!-- begin jquery-ui -->
	<script src="{{ asset('public/frontend/jquery-ui/jquery-ui.min.js') }}"></script>
	<link rel="stylesheet" href="{{ asset('public/frontend/jquery-ui/jquery-ui.css') }}" />
	<!-- end jquery-ui -->
	<!-- begin font-awesome -->
	<link rel="stylesheet" href="{{ asset('public/frontend/css/font-awesome.css') }}" />
	<!-- end font-awesome -->
	
	<!-- begin ddsmoothmenu -->
	<script src="{{ asset('public/frontend/js/ddsmoothmenu.js') }}"></script>
	<link rel="stylesheet" href="{{ asset('public/frontend/css/ddsmoothmenu.css') }}" />
	<link rel="stylesheet" href="{{ asset('public/frontend/css/ddsmoothmenu-v2.css') }}" />
	<!-- end ddsmoothmenu -->
	<!-- begin slick slider -->
	<script src="{{ asset('public/frontend/slick/slick.min.js') }}"></script>
	<link rel="stylesheet" href="{{ asset('public/frontend/slick/slick.css') }}" />
	<link rel="stylesheet" href="{{ asset('public/frontend/slick/slick-theme.css') }}" />
	<!-- end slick slider -->
	<!-- begin tab -->
	<link rel="stylesheet" href="{{ asset('public/frontend/css/tab.css') }}" />
	<!-- end tab-->
	<!-- begin owl_carousel -->
	<script src="{{ asset('public/frontend/owl-carousel/owl.carousel.js') }}"></script>
	<link rel="stylesheet" href="{{ asset('public/frontend/owl-carousel/assets/owl.carousel.css') }}" />  
	<!-- end owl_carousel -->
	<!-- begin elevatezoom -->
	<script src="{{ asset('public/frontend/js/jquery.elevatezoom-3.0.8.min.js') }}"></script>  
	<!-- end elevatezoom -->
	<!-- begin accounting -->
	<script src="{{ asset('public/frontend/js/accounting.min.js') }}"></script>  
	<!-- end accounting -->	
	<!-- begin product -->
	<link rel="stylesheet" href="{{ asset('public/frontend/css/product.css') }}" />
	<!-- end product-->
	<!-- begin datatables -->	
	<script src="{{ asset('public/frontend/js/jquery.dataTables.min.js') }}"></script>    
	<link rel="stylesheet" href="{{ asset('public/frontend/css/jquery.dataTables.min.css') }}" />
	<script src="{{ asset('public/frontend/js/table-library.js') }}"></script>    
	<!-- end datatables -->
	<!-- begin youtube -->    
  <script src="{{ asset('public/frontend/js/jquery-modal-video.min.js') }}"></script>
  <script src="{{ asset('public/frontend/js/modal-video.min.js') }}"></script>
  <link rel="stylesheet" href="{{ asset('public/frontend/css/modal-video.min.css') }}" />
  <!-- end youtube -->
	<!-- begin fancybox -->
	<script language="javascript" type="text/javascript" src="{{asset('public/frontend/js/jquery.fancybox.min.js')}}"                 ></script>
	<link href="{{asset('public/frontend/css/jquery.fancybox.min.css')}}" rel="stylesheet" type="text/css" />
	<!-- end fancybox -->
	<!-- begin custom -->
	<script src="{{ asset('public/frontend/js/custom.js') }}"></script>    
	<link rel="stylesheet" href="{{ asset('public/frontend/css/template.css') }}" />
	<!-- end custom -->
	<script type="text/javascript" language="javascript">
		ddsmoothmenu.init({
			mainmenuid: "smoothmainmenu", 
			orientation: "h", 
			classname: "ddsmoothmenu",
			contentsource: "markup" 
		});    
		$(document).ready(function(){        
			$(window).bind("scroll", function() {                        
				if ($(window).scrollTop() > 104) {
					$("div.bg-header").addClass("fixed");
				}
				else {
					$("div.bg-header").removeClass("fixed");
				}
			});
		});    
	</script>

</head>
<body>	
		<!-- begin fanpage -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=206740246563578';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!-- end fanpage -->
	<header class="header zicmanhon relative">
		<div class="container margin-top-15">			
			<div class="rena margin-left-10">			
				<center>
					<ul class="inline-block sinka">
						<li class="mathe vi-vn"><a href="javascript:void(0);">Tiếng Việt</a></li>
						<li class="mathe en-gb"><a href="javascript:void(0);">Tiếng Anh</a></li>
					</ul>
				</center>				
			</div>
			<div class="rena margin-left-5">
				<center>
					<ul class="inline-block sinka">
						<li class="social social-facebook"><a href="<?php echo $facebook_url; ?>"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li class="social social-google-plus"><a href="<?php echo $google_plus; ?>"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						<li class="social social-youtube"><a href="<?php echo $youtube_url; ?>"><i class="fa fa-youtube" aria-hidden="true"></i></i></a></li>
						<li class="social social-twitter"><a href="<?php echo $twitter_url; ?>"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					</ul>
				</center>
			</div>
			<div class="rena">
				<center>
					<ul class="inline-block sinka">
					<?php                                                              
					if( count($arrUser) == 0 ){
						?>
						<li class="mathe top-user"><a href="<?php echo $register_member_link; ?>" ><i class="fa fa-unlock" aria-hidden="true"></i>&nbsp;Đăng ký</a></li>
						<li class="mathe top-user"><a href="<?php echo $account_link; ?>" ><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Đăng nhập</a></li>
						<?php
					}else{                                     
						?>
						<li class="mathe top-user"><a  href="<?php echo $account_link; ?>"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;<?php echo $arrUser["username"]; ?></a></li>
						<li class="mathe top-user"><a  href="<?php echo $security_link; ?>"><i class="fa fa-key" aria-hidden="true"></i>&nbsp;Đổi mật khẩu</a></li>                                                
						<li class="mathe top-user"><a  href="<?php echo $logout_link; ?>"><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp;Logout</a></li>
						<?php                                     
					}
					?>     
				</ul>
				</center>				
			</div>
		</div>		
		
			<div class="container">        
				<div class="logo">
					<center>
						<a href="<?php echo url('/'); ?>">                
							<img src="<?php echo $seo_logo_frontend;?>" />
						</a>
					</center>
				</div>
				<div class="info-header">
					<div>
						<div class="col-sm-5">
							<div class="col-sm-4"><center><img src="<?php echo asset('upload/phone.png'); ?>" /></center></div>
							<div class="col-sm-8"><div class="contact-phone"><center><?php echo $telephone; ?></center></div></div>
							<div class="clr"></div>
						</div>
						<div class="col-sm-7">
							<div class="searching relative">
								<form action="<?php echo route('frontend.index.search'); ?>" method="post" name="frm-search">
									{{ csrf_field() }}
									<input type="text" name="q" autocomplete="off" placeholder="Tìm kiếm" value="">
									<a href="javascript:void(0);" onclick="document.forms['frm-search'].submit();"><i class="fa fa-search" aria-hidden="true"></i></a>
								</form>
							</div>            
						</div>
						<div class="clr"></div>
					</div>          
				</div>
				<div class="clr"></div>          
			</div>            
		</div>       
	

		<div class="container">
			<div class="red-menu">
				<?php     
				$args = array(                         
					'menu_class'            => 'main-menu',                               
					'before_wrapper'        => '<div id="smoothmainmenu" class="ddsmoothmenu">',
					'before_title'          => '',
					'after_title'           => '',
					'before_wrapper_ul'     =>  '',
					'after_wrapper_ul'      =>  '',
					'after_wrapper'         => '</div>'     ,
					'link_before'           => '', 
					'link_after'            => '',                                                                    
					'theme_location'        => 'main-menu' ,
					'menu_li_actived'       => 'current-menu-item',
					'menu_item_has_children'=> 'menu-item-has-children',
					'alias'                 => $seo_alias,
				);                    
				wp_nav_menu($args);
				?>        
				<div class="clr"></div>    
			</div>      
		</div>
	
	<div class="mobilemenu">
		<div class="container">
			<div>
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>                   
						</div>
						<div id="navbar" class="navbar-collapse collapse">
							<?php     
							$args = array(                         
								'menu_class'            => 'nav navbar-nav',                            
								'before_wrapper'        => '',
								'before_title'          => '',
								'after_title'           => '',
								'before_wrapper_ul'     =>  '',
								'after_wrapper_ul'      =>  '',
								'after_wrapper'         => ''     ,
								'link_before'           => '', 
								'link_after'            => '',                                                                    
								'theme_location'        => 'mobile-menu' ,
								'menu_li_actived'       => 'current-menu-item',
								'menu_item_has_children'=> 'menu-item-has-children',
								'alias'                 => ''
							);                 
							wp_nav_menu($args);                          
							?>             
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>    
</header>
@yield("content")
@include("frontend.footer")
</body>
</html>



