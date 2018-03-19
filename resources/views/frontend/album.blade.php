<?php 
$setting=getSettingSystem();
$map_url=$setting['map_url']['field_value'];       
?>
<form action="" method="POST">
	<input type="hidden" name="filter_page" value="1">         
	{{ csrf_field() }}	
	<div class="tieu-de margin-top-15">
			<?php echo $title; ?>		
	</div>
	<h1 style="display: none;"><?php echo $title; ?></h1>
	<h2 style="display: none;"><?php echo $meta_description; ?></h2>		
	<div class="margin-top-15">
		<?php 
		if(count($items) > 0){
			$k=1;			
			foreach ($items as $key => $value) {
				$id=$value['id'];				
				$large_image=asset('upload/'.$value['image']);
				$small_image=asset('upload/400x250-'.$value['image']);
				?>
				<h2 class="box-photo">
					<center><figure><a data-fancybox="gallery" href="<?php echo $large_image ; ?>"><img src="<?php echo $small_image; ?>" /></a></figure></center>
				</h2>
				<?php
				if($k%7==0 || $k==count($items)){
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

