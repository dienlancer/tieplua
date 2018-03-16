<?php 
?>
<footer class="footer padding-bottom-45">
	<div class="container">
		<div class="col-lg-3">
			
			<?php 
			$module=getPage("trung-tam-widget");
			if(count($module) > 0){
				$fullname=substr($module["fullname"],0,50);
				$featuredImg=asset('upload/'.$module['image']);
				$permalink=route('frontend.index.index',[$module['alias']]);	
				$intro=substr($module["intro"], 0,250) ;	
				$content=$module['content'];
				?>		
				<div class="margin-top-40">
					<h1 class="brabel"><?php echo $fullname; ?></h1>
					<div class="tialia margin-top-15">
						<?php 						
						echo $content;					
						?>
					</div>		
				</div>										
				<?php				
			}
			?>			

		</div>
		<div class="col-lg-3">
			
			<?php 
			$module=getPage("about-us-widget");
			if(count($module) > 0){
				$fullname=substr($module["fullname"],0,50);
				$featuredImg=asset('upload/'.$module['image']);
				$permalink=route('frontend.index.index',[$module['alias']]);	
				$intro=substr($module["intro"], 0,250) ;
				$content=$module['content'];				
				?>			
				<div class="margin-top-40">
					<h1 class="brabel"><?php echo $fullname; ?></h1>
					<div class="tialia margin-top-15">
						<?php 						
						echo $content;					
						?>
					</div>	
				</div>									
				<?php				
			}
			?>			

		</div>
		<div class="col-lg-3">
			<div class="margin-top-40">
				<h1 class="brabel">Danh mục</h1>
				<div class="tialia margin-top-15">
					<?php     
					$seo_alias="";
					if(isset($alias)){
						$seo_alias=$alias;
					}
					$args = array(                         
						'menu_class'            => 'danh-muc',                               
						'before_wrapper'        => '',
						'before_title'          => '',
						'after_title'           => '',
						'before_wrapper_ul'     =>  '',
						'after_wrapper_ul'      =>  '',
						'after_wrapper'         => ''     ,
						'link_before'           => '<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>', 
						'link_after'            => '',                                                                    
						'theme_location'        => 'danh-muc' ,
						'menu_li_actived'       => 'current-menu-item',
						'menu_item_has_children'=> 'menu-item-has-children',
						'alias'                 => $seo_alias,
					);                    
					wp_nav_menu($args);
					?>        
					<div class="clr"></div>  
				</div>
			</div>						
		</div>
		<div class="col-lg-3">
			<div class="margin-top-40">
				<h1 class="brabel">Fanpage</h1>
				<div class="tialia margin-top-15">
					<?php 
					$module=getPage("fanpage-footer");			
					if(count($module) > 0){		
						$fullname=$module['fullname'];		
						$intro=$module["intro"];					
						echo $intro;		
					}
					?>		
				</div>	
			</div>						
		</div>
	</div>
</footer>
<div class="modal fade modal-add-cart" id="modal-alert-add-cart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>        
			</div>
			<div class="modal-body">

			</div>      
		</div>
	</div>
</div>