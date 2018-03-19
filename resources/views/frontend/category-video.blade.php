<?php 
$setting=getSettingSystem();
$map_url=$setting['map_url']['field_value'];    
?>
<div class="tieu-de margin-top-15">
		<?php echo $title; ?>		
	</div>
	<h1 style="display: none;"><?php echo $title; ?></h1>
	<h2 style="display: none;"><?php echo $meta_description; ?></h2>
<form action="" method="POST" class="box-article margin-top-10" >
	<input type="hidden" name="filter_page" value="1">         
	{{ csrf_field() }}		
	<div>
		<?php 
		if(count($items) > 0){
			$k=1;			
			foreach ($items as $key => $value) {
				$id=$value['id'];
				$fullname=$value['fullname'];
				$video_url=$value['video_url'];
				$image=asset('upload/'.$value['image']);
				?>
				<div class="col-lg-3 no-padding-left">
					<div class="margin-top-15">
						<div class="relative liverpool">
							<div><center><img src="<?php echo $image; ?>" /></center></div>			
							<div class="youtube"></div>		
							<div class="youtube-img" >
								<div><a class="js-modal-btn" data-video-id="<?php echo $video_url; ?>" href="javascript:void(0);"><img src="<?php echo asset('upload/youtube.png'); ?>"></a></div>		
							</div>	

						</div>
						<div class="margin-top-5"><h3 class="ioretuiwiutereruwii"><b><?php echo $fullname; ?></b></h3></div>				
					</div>					
				</div>
				<?php
				if($k%4==0 || $k==count($items)){
					echo '<div class="clr"></div>';
				}
				$k++;
			}
		}
		?>
	</div>
	<div class="margin-top-15">

		<?php 
		if(count($items) > 0){
			echo $pagination->showPagination();
		}  
		?>
		<div class="clr"></div>
	</div>
</form>
<script type="text/javascript" language="javascript">
	$(document).ready(function(){
		$(".js-modal-btn").modalVideo();
	})
</script>

