@extends("frontend.master")
@section("content")
<?php 
$data_slideshow=getBanner("slideshow");
$seo=getSeo();
if(count($data_slideshow) > 0){
	$items_banner=$data_slideshow["items"];
	$donation_name="";
	$total_cost_text="";
	$donated_cost=0;
	if(count($items_banner) > 0){
		$data_donation=App\DonationModel::whereRaw('status = 1')->select('id','fullname','total_cost')->get()->toArray();				
		if(count($data_donation) > 0){
			$donation_id=$data_donation[0]['id'];
			$donation_name=$data_donation[0]['fullname'];
			$total_cost=$data_donation[0]['total_cost'];
			$query=DB::table('supporter')
					->where('supporter.donation_id',(int)@$donation_id);
			$data_sum=$query->groupBy('supporter.donation_id')
							->selectRaw('sum(supporter.number_money) as donated_cost')->get()->toArray();
			$donated_cost=0;
			if(count($data_sum) > 0){				
				$donated_cost=(int)$data_sum[0]->donated_cost;
			}			
			$donated_percent=$donated_cost / $total_cost * 100;			
			$total_cost_text=fnPrice($total_cost);			
			$donated_cost_text=fnPrice($donated_cost);
		}
		?>
		<div class="slideshow">
			<script type="text/javascript" language="javascript">        
				$(document).ready(function(){
					$(".slick-slideshow").slick({
						dots: false,
						autoplay:true,
						arrows:false,
						adaptiveHeight:true,
						slidesToShow: 1,
						slidesToScroll: 1,        
					});  
				});     
			</script>
			<div class="slick-slideshow">    
				<?php 
				foreach ($items_banner as $key => $value) {
					$alt=$value["alt"];
					$featuredImg=asset('upload/'.$value["image"]);
					?>
					<div class="relative">
						<div><img src="<?php echo $featuredImg; ?>" alt="<?php echo $alt; ?>" /></div>						
						<div class="afuiasdiu">
							<div class="container">
								<div class="row">
									<div class="col-lg-12">																
										<div><span class="oiweurjkafj">Chương trình : </span><span class="jqheqjwjjqqs"><?php echo $donation_name; ?></span></div>
										<div><span class="oiweurjkafj">Chỉ tiêu quyên góp :</span><span class="jqheqjwjjqqs"><?php echo $total_cost_text; ?></span></div>
										<div><span class="oiweurjkafj">Số tiền quyên góp được :</span><span class="jqheqjwjjqqs"><?php echo $donated_cost_text; ?></span></div>		
										<div>
											<div class="tinafsaiuus">
												<div class="progress">
													<div class="progress-bar" role="progressbar" aria-valuenow="<?php echo $donated_percent ?>" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo $donated_percent ?>%">
														<?php echo $donated_percent; ?>%
													</div>
												</div>
											</div>											
										</div>									
									</div>
								</div>							
							</div>		
						</div>	
					</div>
					<?php 
				}
				?>              
			</div>
		</div>
		<?php
	}  
}
?>
<h1 style="display: none;"><?php echo $seo["title"]; ?></h1>
<div class="content">
	<div class="container">		
		<div class="theraphy">
			<div class="col-sm-4">
				<?php 
				$module=getPage("dich-vu-hoat-dong-widget");
				if(count($module) > 0){
					$fullname=substr($module["fullname"],0,50);
					$featuredImg=get_article_thumbnail($module['image']);
					$permalink=route('frontend.index.index',[$module['alias']]);	
					$intro=substr($module["intro"], 0,250) ;
					?>
					<div class="article-simon margin-top-25">						
						<h1 class="react-title"><a href="<?php echo $permalink; ?>"><?php echo $fullname; ?></a></h1>
								<div class="gaiden"><center><a href="<?php echo $permalink; ?>"><img src="<?php echo $featuredImg; ?>" /></a></center></div>
								<div class="ruby margin-top-15"><?php echo $intro; ?></div>
								<div class="readmore margin-top-10"><a href="<?php echo $permalink; ?>">Xem chi tiết</a></div>				
					</div>
					<?php	
				}
				?>				
			</div>
			<div class="col-sm-4">
				<?php 
				$module=getPage("du-an-widget");
				if(count($module) > 0){
					$fullname=substr($module["fullname"],0,50);
					$featuredImg=get_article_thumbnail($module['image']);
					$permalink=route('frontend.index.index',[$module['alias']]);	
					$intro=substr($module["intro"], 0,250) ;
					?>
					<div class="article-simon margin-top-25">						
						<h1 class="react-title"><a href="<?php echo $permalink; ?>"><?php echo $fullname; ?></a></h1>
								<div class="gaiden"><center><a href="<?php echo $permalink; ?>"><img src="<?php echo $featuredImg; ?>" /></a></center></div>
								<div class="ruby margin-top-15"><?php echo $intro; ?></div>
								<div class="readmore margin-top-10"><a href="<?php echo $permalink; ?>">Xem chi tiết</a></div>				
					</div>
					<?php	
				}
				?>				
			</div>
			<div class="col-sm-4">
				<?php 
				$module=getPage("tham-van-widget");
				if(count($module) > 0){
					$fullname=substr($module["fullname"],0,50);
					$featuredImg=get_article_thumbnail($module['image']);
					$permalink=route('frontend.index.index',[$module['alias']]);	
					$intro=substr($module["intro"], 0,250) ;
					?>
					<div class="article-simon margin-top-25">						
						<h1 class="react-title"><a href="<?php echo $permalink; ?>"><?php echo $fullname; ?></a></h1>
								<div class="gaiden"><center><a href="<?php echo $permalink; ?>"><img src="<?php echo $featuredImg; ?>" /></a></center></div>
								<div class="ruby margin-top-15"><?php echo $intro; ?></div>
								<div class="readmore margin-top-10"><a href="<?php echo $permalink; ?>">Xem chi tiết</a></div>				
					</div>
					<?php	
				}
				?>				
			</div>		
			<div class="clr"></div>	
		</div>				
	</div>
</div>
<div class="bottom-content">
	<div class="container">
		<div class="col-lg-8">
			<?php 
			$module=getModuleItem("tin-moi-nhat");
			if(count($module) > 0){
				$fullname=$module["fullname"];
				$items=$module["items"];				
				?>
				<div class="news-article">
					<h1 class="relative terexa">
						<?php echo $fullname; ?>
						<span class="rappit"></span>					
					</h1>
					<div class="margin-top-15">
						<?php 
						if(count($items) > 0){
							?>
							<script type="text/javascript" language="javascript">
								$(document).ready(function(){
									$(".rex").owlCarousel({
										autoplay:true,                    
										loop:true,
										margin:10,                        
										nav:true,            
										mouseDrag: true,
										touchDrag: true,                                
										responsiveClass:true,
										responsive:{
											0:{
												items:1
											},
											600:{
												items:1
											},
											1000:{
												items:1
											}
										}
									});
									var chevron_left='<i class="fa fa-chevron-left"></i>';
									var chevron_right='<i class="fa fa-chevron-right"></i>';
									$("div.rex div.owl-prev").html(chevron_left);
									$("div.rex div.owl-next").html(chevron_right);
								});                
							</script>
							<div class="owl-carousel rex owl-theme">
								<?php 
								foreach ($items as $key => $value) {
									$fullname=$value["fullname"];
									$intro=substr($value["intro"], 0,9999) ;
									$featuredImg=get_article_thumbnail($value['image']);
									$permalink=route('frontend.index.index',[$value["alias"]]);
									?>
									<div>
										<div class="col-lg-6 no-padding-left">
											<h2 class="news-article-title"><a href="<?php echo $permalink; ?>"><?php echo $fullname; ?></a></h2>
											<div class="news-article-content margin-top-15">
												<?php echo $intro; ?>
											</div>
										</div>
										<div class="col-lg-6">
											<img src="<?php echo $featuredImg; ?>" />
										</div>
										<div class="clr"></div>
									</div>			
									<?php
								}
								?>																
							</div>				
							<?php	
						}
						?>						
					</div>
				</div>
				<?php				
			}
			?>			
		</div>
		<div class="col-lg-4">
			<div class="tariff">
				<h1 class="tariff-title">Tiếp lửa</h1>
				<div>
					<form action="<?php echo route('frontend.index.searchSupporter'); ?>" method="post" name="frm-ds-an-nhan" >
						{{ csrf_field() }}
						<div class="margin-top-10"><font color="#ffffff">Danh sách các ân nhân ủng hộ tiền mặt</font></div>
						<div class="margin-top-10">
							<div class="col-sm-4 no-padding-left">
								<select name="month" class="soratv">
									<option value="">Tháng</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
							</div>
							<div class="col-sm-4 no-padding-left">
								<select name="year" class="soratv">
									<option value="">Năm</option>
									<option value="2010">2010</option>
									<option value="2011">2011</option>
									<option value="2012">2012</option>
									<option value="2013">2013</option>
									<option value="2014">2014</option>
									<option value="2015">2015</option>
									<option value="2016">2016</option>
									<option value="2017">2017</option>
									<option value="2018">2018</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>									
								</select>
							</div>
							<div class="col-sm-4 no-padding-left">
								<select name="payment_method_id" class="soratv">
									<option value="">Loại hình</option>
									<?php 
									$payment_method=App\PaymentMethodModel::whereRaw('status = 1')->select('id','fullname')->get()->toArray();
									foreach ($payment_method as $key => $value) {
										$id=$value['id'];
										$fullname=$value['fullname'];
										?>
										<option value="<?php echo $id; ?>"><?php echo $fullname; ?></option>									
										<?php	
									}
									?>									
								</select>
							</div>
							<div class="clr"></div>
						</div>
						<div class="margin-top-10"><font color="#ffffff">Tên người hỗ trợ</font></div>
						<div><input type="text" name="q" class="linda" /></div>
						<div class="margin-top-10 tim-an-nhan" ><a href="javascript:void(0);" onclick="document.forms['frm-ds-an-nhan'].submit();">Tìm</a></div>
					</form>					
				</div>
			</div>
		</div>
		<div class="clr"></div>
	</div>
</div>
<?php 
$data=getBanner("doi-tac");
if(count($data) > 0){
	$items=$data["items"];
	if(count($items) > 0){
		?>
		<div class="container padding-top-45 padding-bottom-15">
			<div class="col-lg-12">
				<script type="text/javascript" language="javascript">
					$(document).ready(function(){
						$(".partner").owlCarousel({
							autoplay:false,                    
							loop:true,
							margin:25,                        
							nav:true,            
							mouseDrag: false,
							touchDrag: false,                                
							responsiveClass:true,
							responsive:{
								0:{
									items:1
								},
								600:{
									items:1
								},
								1000:{
									items:5
								}
							}
						});
						var chevron_left='<i class="fa fa-chevron-left"></i>';
						var chevron_right='<i class="fa fa-chevron-right"></i>';
						$("div.partner div.owl-prev").html(chevron_left);
						$("div.partner div.owl-next").html(chevron_right);
					});                
				</script>
				<div class="owl-carousel partner owl-theme">
					<?php 
					foreach($items as $key => $value){
						$featuredImg=asset('upload/'.$value['image']) ;
						$page_url=$value['page_url'];
						?>
						<div>
							<a href="<?php echo $page_url; ?>" target="_blank"><img src="<?php echo $featuredImg; ?>" /></a>
						</div>
						<?php
					}
					?>
				</div>
			</div>			
		</div>  
		<?php
	}  
}
?>
@endsection()               