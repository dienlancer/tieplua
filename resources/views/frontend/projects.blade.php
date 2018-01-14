<?php 
use App\ProjectModel;
use App\ProjectArticleModel;
use App\ProjectMemberModel;
?>
<form method="post" class="frm margin-top-15" name="frm">
	<input type="hidden" name="filter_page" value="1">         
	{{ csrf_field() }}	
	<h2 class="tieu-de">
		<?php echo $title; ?>		
	</h2>
	<div class="row">
		<?php 	
		if(count($items) > 0){
			$k=1;			
			foreach ($items as $key => $value) {
				$id=$value['id'];
				$alias=$value['alias'];
				$fullname=$value['fullname'];
				$permalink=route('frontend.index.index',[$alias]) ;
				$image=asset('upload/'.$value['image']);
				$intro=substr($value['intro'],0,200).'...' ;
				$count_view=(int)@$value['count_view'];
				$count_view_text=number_format($count_view,0,",",".");

				$dataMember=DB::table('customer')
				->join('project_member','customer.id','=','project_member.member_id')
				->select('customer.id')
				->where('project_member.project_id','=',(int)@$id)
				->groupBy('customer.id')        		
				->get()->toArray();				
				$number_of_member=(int)count(@$dataMember);
				?>
				<div class="box-row margin-top-10">
					<div class="col-lg-4 no-padding-left"><div class="box-img"><figure><a href="<?php echo $permalink; ?>"><img src="<?php echo $image; ?>" /></a></figure></div></div>
					<div class="col-lg-8 no-padding-left">
						<h3 class="box-title"><a href="<?php echo $permalink; ?>"><?php echo $fullname; ?></a></h3>
						<div class="margin-top-5">
							<div class="view-post-count">
								<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;<?php echo $count_view_text; ?>&nbsp;lượt xem	
							</div>
							<?php  
							if(count(@$dataMember) > 0){
								?>
								<div class="view-member-count margin-left-15">
									<i class="fa fa-user" aria-hidden="true"></i>&nbsp;&nbsp;Số thành viên:&nbsp;
									<?php echo $number_of_member; ?>
								</div>								
								<?php								
							}
							?>
						</div>
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