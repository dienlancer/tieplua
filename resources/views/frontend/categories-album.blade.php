<?php 
$setting=getSettingSystem();
$map_url=$setting['map_url']['field_value'];       

?>
	<div class="tieu-de margin-top-15">
		<?php echo $title; ?>		
	</div>
	<h1 style="display: none;"><?php echo $title; ?></h1>
	<h2 style="display: none;"><?php echo $meta_description; ?></h2>
	<form action="" method="POST" class="box-article margin-top-10">
		<input type="hidden" name="filter_page" value="1">         
		{{ csrf_field() }}	

		<div >
			<?php 
			if(count($items) > 0){
				$k=1;			
				foreach ($items as $key => $value) {
					$id=$value['id'];
					$alias=$value['alias'];
					$fullname=$value['fullname'];
					$permalink=route('frontend.index.index',[$alias]) ;
					$image=asset('upload/'.$value['image']);
					?>
					<div class="col-lg-3 no-padding-left">
						<div class="margin-top-15">
							<div class="album-img"><center><figure><a href="<?php echo $permalink; ?>"><img src="<?php echo $image; ?>" /></a></figure></center></div>
							<div class="margin-top-5"><h3 class="ioretuiwiuter"><b><a href="<?php echo $permalink; ?>"><?php echo $fullname; ?></a></b></h3></div>
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



