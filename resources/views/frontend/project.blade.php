<?php 
use App\ProjectModel;
use App\ProjectArticleModel;
use App\ProjectMemberModel;
use Illuminate\Support\Facades\DB;
if(count($item) > 0){		
	$id=$item["id"];
	$fullname = $item["fullname"];	
	$alias=$item["alias"];
	$overview=$item["overview"];
	$total_cost=$item["total_cost"];
	$intro=$item["intro"];	
	$plan=$item["plan"];
	$sponsor=$item["sponsor"];
	/* begin cập nhật count view */
	$count_view=(int)@$item['count_view'];
	$count_view++;
	$row				=	ProjectModel::find((int)@$id); 
	$row->count_view=$count_view;
	$row->save();
	$count_view_text=number_format($count_view,0,",",".");
	/* end cập nhật count view */	
	?>
	<div class="margin-top-15 box-article">
		<h2 class="tieu-de-bai-viet relative">
			<?php echo $title; ?>		
			<div class="tham-gia margin-top-10">
				<form method="post" name="frm-join-project">
					{{ csrf_field() }}
					<input type="hidden" name="project_id" value="<?php echo $id; ?>">
					<input type="hidden" name="project_alias" value="<?php echo $alias; ?>">
					<?php 
					$ssUser= Session::get('vmuser');
					$user=$ssUser['userInfo'];
					$member_id=$user['id'];
					$project_id=$id;
					$projectMember=ProjectMemberModel::whereRaw('project_id = ? and member_id = ?',[(int)@$project_id,(int)@$member_id])->select('id','project_id','member_id')->get()->toArray();					
					if(count($projectMember) > 0){
						?>
						<i class="fa fa-check" aria-hidden="true"></i>&nbsp;Đã tham gia
						<?php
					}else{
						?>
						<div class="box-readmore not-haved-join"><a href="javascript:void(0);" onclick="joinProject();" data-toggle="modal" data-target="#modal-alert-join-project">Tham gia</a></div>
						<div class="haved-join"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;Đã tham gia</div>						
						<?php
					}
					?>					
				</form>				
			</div>
		</h2>
		<div class="margin-top-15">			
			<span class="post-view">
				<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;<?php echo $count_view_text ?>&nbsp;Lượt xem
			</span>
		</div>	
		<hr class="duong-ngang" />			
		<div class="margin-top-15">
			<script type="text/javascript" language="javascript">
				function openCity(evt, cityName) {    
					var i, tabcontent, tablinks;
					tabcontent = document.getElementsByClassName("tabcontent");
					for (i = 0; i < tabcontent.length; i++) {
						tabcontent[i].style.display = "none";
					}   
					tablinks = document.getElementsByClassName("tablinks");
					for (i = 0; i < tablinks.length; i++) {
						tablinks[i].className = tablinks[i].className.replace(" active", "");
					}   
					document.getElementById(cityName).style.display = "block";
					evt.currentTarget.className += " active";
				}
				jQuery(document).ready(function(){
					jQuery("#overview").show();
					jQuery("div.tab > button.tablinks:first-child").addClass('active');
				});
			</script>       
			<div class="tab padding-left-10 padding-right-10">
				<button class="tablinks h-title" onclick="openCity(event, 'overview')">Tổng quan</button>
				<button class="tablinks h-title" onclick="openCity(event, 'total_cost')">Chi phí</button>				
				<button class="tablinks h-title" onclick="openCity(event, 'plan')">Kế hoạch</button>
				<button class="tablinks h-title" onclick="openCity(event, 'member')">Thành viên</button>                 
				<button class="tablinks h-title" onclick="openCity(event, 'sponsor')">Tài trợ</button>                 
				<button class="tablinks h-title" onclick="openCity(event, 'news')">Tin tức</button>                 
				<button class="tablinks h-title" onclick="openCity(event, 'join-with-us')">Mời tham gia</button>                 
				<div class="clr"></div>           
			</div>
			<div id="overview" class="tabcontent">
				<div class="justify"><?php echo $overview; ?></div>
			</div>
			<div id="total_cost" class="tabcontent">
				<div class="justify"><?php echo $total_cost; ?></div>
			</div>			
			<div id="plan" class="tabcontent">
				<div class="justify"><?php echo $plan; ?></div>
			</div>
			<div id="member" class="tabcontent">				
				<form method="post" name="frm-list-member">
					{{ csrf_field() }}
					<input type="hidden" name="project_id" value="<?php echo $id; ?>">
					<table class="table table-striped table-bordered table-hover table-checkable order-column" id="tbl-member">
						<thead>
							<tr>			
							<th width="1%"><input type="checkbox" name="checkall-toggle"></th>                					     						
								<th>Họ tên</th>
								<th>Email</th>
								<th width="5%">Mobilephone</th>
								<th>Địa chỉ</th>							
							</tr>
						</thead>
						<tbody>                                                
						</tbody>
					</table>
				</form>				
			</div> 
			<div id="sponsor" class="tabcontent">
				<div class="justify"><?php echo $sponsor; ?></div>
			</div>
			<div id="news" class="tabcontent">
				<?php  
				$dataNews=ProjectArticleModel::whereRaw("project_id = ? and status = ?",[@$id,1])
				->select('project_article.id','project_article.alias','project_article.fullname','project_article.image','project_article.intro','project_article.count_view')
				->orderBy('project_article.created_at', 'desc')                
                ->take(10)
                ->get()->toArray();
				if(count($dataNews) > 0){
					foreach ($dataNews as $key => $value) {
						$id=$value['id'];
						$alias=$value['alias'];
						$fullname=$value['fullname'];
						$permalink=route('frontend.index.index',[$alias]) ;
						$image=asset('upload/'.$value['image']);
						$intro=substr($value['intro'],0,200).'...' ;
						$count_view=(int)@$value['count_view'];
						$count_view_text=number_format($count_view,0,",",".");
						?>
						<div class="box-row margin-top-10">
							<div class="col-lg-4 no-padding-left"><div class="box-img"><figure><a href="<?php echo $permalink; ?>"><img src="<?php echo $image; ?>" /></a></figure></div></div>
							<div class="col-lg-8 no-padding-left">
								<h3 class="box-title"><a href="<?php echo $permalink; ?>"><?php echo $fullname; ?></a></h3>
								<div class="margin-top-5"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;<?php echo $count_view_text; ?>&nbsp;lượt xem</div>
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
			<div id="join-with-us" class="tabcontent">
				Mời tham gia
			</div>      
		</div>				
	</div>
	<?php
}
$linkJoinProject			=	route('frontend.index.joinProject');
$linkLoadDataMember  		=	route('frontend.index.loadDataMember');
?>	
<div class="modal fade modal-join-project" id="modal-alert-join-project" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>        
			</div>
			<div class="modal-body">
				<div class="join-project-text-center"></div>
			</div>      
		</div>
	</div>
</div>
<script type="text/javascript" language="javascript">
	function joinProject(){
		var xac_nhan = 0;
		var msg="Bạn có muốn tham gia dự án của chúng tôi ?";
		if(window.confirm(msg)){ 
			xac_nhan = 1;
		}
		if(xac_nhan  == 0){
			return 0;
		}
		var token 		= $('form[name="frm-join-project"]  input[name="_token"]').val();
		var project_id 	= $('form[name="frm-join-project"]  input[name="project_id"]').val();
		var project_alias 	= $('form[name="frm-join-project"]  input[name="project_alias"]').val();
		var dataItem={            
            '_token': token,
            'project_id':project_id  ,
            'project_alias':project_alias  ,        
        };
		$.ajax({
			url: '<?php echo $linkJoinProject; ?>',
			type: 'POST', 
			data: dataItem,
			success: function (data, status, jqXHR) {  				
				$(".modal-join-project .modal-body .join-project-text-center").empty();		
				$(".modal-join-project .modal-body .join-project-text-center").append(data.msg);	
				if(parseInt(data.checked)  == 1){
					$('.haved-join').show();
					$('.not-haved-join').hide();
				}		
				vMemberTable.clear().draw();
				vMemberTable.rows.add(data.dulieu).draw();
			},
			beforeSend  : function(jqXHR,setting){
				
			},
		});
	}
	function getList() {  	
		var token = $('form[name="frm-list-member"] > input[name="_token"]').val(); 
        var project_id 	= $('form[name="frm-list-member"]  input[name="project_id"]').val();
		var dataItem={            
            '_token': token,
            'project_id':project_id  ,    
        };
		$.ajax({
			url: '<?php echo $linkLoadDataMember; ?>',
			type: 'POST', 
			data: dataItem,
			success: function (data, status, jqXHR) {  								
				vMemberTable.clear().draw();
				vMemberTable.rows.add(data).draw();
				
			},
			beforeSend  : function(jqXHR,setting){
				
			},
		});
	}	
	$(document).ready(function(){
    	getList();
	});
</script>
