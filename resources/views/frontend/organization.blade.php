<?php 
use App\OrganizationModel;
use Illuminate\Support\Facades\DB;
if(count($item) > 0){		
	$id=$item["id"];
	$fullname = $item["fullname"];
	$intro=$item["intro"];
	$content=$item['content'];	
	$phone=$item['phone'];
	$email=$item['email'];
	$website=$item['website'];
	$image=asset('upload/'.$item['image']);
	/* begin cập nhật count view */
	$count_view=(int)@$item['count_view'];
	$count_view++;
	$row				=	OrganizationModel::find((int)@$id); 
	$row->count_view=$count_view;
	$row->save();
	$count_view_text=number_format($count_view,0,",",".");
	/* end cập nhật count view */	
	?>
	<div class="margin-top-15 box-article">
		
		<div>
			<div class="col-lg-4 no-padding-left"><div class="margin-top-15"><center><figure><img src="<?php echo $image; ?>" /></figure></center></div></div>
			<div class="col-lg-8 no-padding-left">
				<div class="margin-top-15">
					<h2 class="tieu-de-bai-viet-to-chuc">
					<?php echo $fullname; ?>		
				</h2>
				<div class="justify margin-top-10"><?php echo $intro; ?></div>
				<div class="margin-top-10"><b>Địa chỉ:</b><span class="margin-left-5"><?php echo $fullname; ?></span></div>
				<div><b>Điện thoại:</b><span class="margin-left-5"><?php echo $phone; ?></span></div>
				<div><b>Email:</b><span class="margin-left-5"><?php echo $email; ?></span></div>
				<div><b>Website:</b><span class="margin-left-5"><?php echo $website; ?></span></div>
				<div><b>Số lượt xem:</b><span class="margin-left-5"><?php echo $count_view_text; ?></span></div>
				</div>				
			</div>
			<div class="clr"></div>
		</div>

		<div class="justify">
			<?php echo $content; ?>
		</div>	
		<div class="clr"></div>
		
	</div>
	<?php
}
?>	

