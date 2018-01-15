<?php 
$setting=getSettingSystem();
$map_url=$setting['map_url']['field_value'];       
if(empty($breadcrumb)){
	?>
	<h2 class="tieu-de margin-top-15">
		<?php echo $title; ?>		
	</h2>
	<?php
}else{
	?>
	<h2 class="breadcrumb-title margin-top-15">
		<?php echo $breadcrumb; ?>
	</h2>
	<?php
}	
?>

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
							<div class="margin-top-5"><b><a href="<?php echo $permalink; ?>"><?php echo $fullname; ?></a></b></div>
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



