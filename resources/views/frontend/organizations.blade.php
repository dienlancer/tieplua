<form method="post" class="frm margin-top-15" name="frm">
	<input type="hidden" name="filter_page" value="1">         
	{{ csrf_field() }}	
	<div class="tieu-de">
		<?php echo $title; ?>		
	</div>
	<h1 style="display: none;"><?php echo $title; ?></h1>
	<h2 style="display: none;"><?php echo $meta_description; ?></h2>
	<div class="row">
		<?php 	
		if(count($items) > 0){
			$k=1;			
			foreach ($items as $key => $value) {
				$id=$value['id'];
				$alias=$value['alias'];
				$fullname=$value['fullname'];
				$permalink=route('frontend.index.index',[$alias]) ;
				$image=get_article_thumbnail($value['image']) ;
				$intro=substr($value['intro'],0,200).'...' ;					
				?>
				<div class="box-row margin-top-10">
					<div class="col-lg-4 no-padding-left"><div class="box-img"><figure><a href="<?php echo $permalink; ?>"><img src="<?php echo $image; ?>" /></a></figure></div></div>
					<div class="col-lg-8 no-padding-left">
						<h3 class="box-title"><a href="<?php echo $permalink; ?>"><?php echo $fullname; ?></a></h3>						
						<div class="margin-top-5 box-intro"><?php echo $intro; ?></div>
						<div class="box-readmore margin-top-10"><a href="<?php echo $permalink; ?>">Xem chi tiết</a></div>
					</div>
					<div class="clr"></div>
				</div>
				<?php			
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
	</div>
</form>