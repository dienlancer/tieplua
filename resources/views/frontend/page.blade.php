<?php 
use App\PageModel;
if(count($item) > 0){	
	$id=$item["id"];
	$fullname = $item["fullname"];
	$intro=$item["intro"];
	$content=$item['content'];
	/* begin cập nhật count view */
	$count_view=(int)@$item['count_view'];
	$count_view++;
	$row				=	PageModel::find((int)@$id); 
	$row->count_view=$count_view;
	$row->save();
	$count_view_text=number_format($count_view,0,",",".");
	/* end cập nhật count view */
	?>
	<div class="margin-top-15 box-article">
		<h2 class="tieu-de-bai-viet">
			<?php echo $fullname; ?>		
		</h2>
		<div class="margin-top-15">			
			<span class="post-view">
				<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;<?php echo $count_view_text ?>&nbsp;Lượt xem
			</span>
		</div>		
		<hr class="duong-ngang" />
		<div class="margin-top-10 article-excerpt  justify">
			<?php echo $intro; ?>
		</div>	
		<hr class="duong-ngang" />	
		<div class="margin-top-15">
			<?php echo $content; ?>
		</div>	
	</div>
	<?php
}
?>	

