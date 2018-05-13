@extends("adminsystem.master")
@section("content")
<?php 
$setting= getSettingSystem();
$linkCancel             =   route('adminsystem.'.$controller.'.getList');
$linkSave               =   route('adminsystem.'.$controller.'.save');

$inputFullName          =   '<input type="text" class="form-control" name="fullname"      value="'.@$arrRowData['fullname'].'">'; 
$inputVideoUrl          =   '<input type="text" class="form-control" name="video_url"     value="'.@$arrRowData['video_url'].'">'; 
 
$ddlCategoryVideo      =   cmsSelectboxCategory("category_id","form-control",$arrCategoryVideo,@$arrRowData['category_id'],"",'Chọn danh mục');
$inputSortOrder         =   '<input type="text" class="form-control" name="sort_order"     value="'.@$arrRowData['sort_order'].'">';
$status                 =   (count($arrRowData) > 0) ? @$arrRowData['status'] : 1 ;
$arrStatus              =   array(-1 => '- Select status -', 1 => 'Publish', 0 => 'Unpublish');  
$ddlStatus              =   cmsSelectbox("status","form-control",$arrStatus,$status,"");

$id                     =   (count($arrRowData) > 0) ? @$arrRowData['id'] : "" ;
$inputID                =   '<input type="hidden" name="id"  value="'.@$id.'" />'; 
$picture                =   "";
$strImage               =   "";
if(count(@$arrRowData)>0){
    if(!empty(@$arrRowData["image"])){
        $picture        =   '<div class="col-sm-6"><center>&nbsp;<img src="'.asset("/upload/".@$arrRowData["image"]).'" style="width:100%" />&nbsp;</center></div><div class="col-sm-6"><a href="javascript:void(0);" onclick="deleteImage();"><img src="'.asset('public/adminsystem/images/delete-icon.png').'"/></a></div>';                        
        $strImage       =   @$arrRowData["image"];
    }        
}   
$inputPictureHidden     =   '<input type="hidden" name="image_hidden"   value="'.@$strImage.'" />';
?>
<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="note"  style="display: none;"></div>
        <div class="caption">
            <i class="{{$icon}}"></i>
            <span class="caption-subject font-dark sbold uppercase">{{$title}}</span>
        </div>
        <div class="actions">
           <div class="table-toolbar">
            <div class="row">
                <div class="col-md-12">
                    <button onclick="save()" class="btn purple">Lưu <i class="fa fa-floppy-o"></i></button> 
                    <a href="<?php echo $linkCancel; ?>" class="btn green">Thoát <i class="fa fa-ban"></i></a>                    </div>                                                
                </div>
            </div>    
        </div>
    </div>
    <div class="portlet-body form">
        <form class="form-horizontal" name="frm" role="form" enctype="multipart/form-data">
            {{ csrf_field() }}
            <?php echo $inputPictureHidden; ?>                
            <?php echo  $inputID; ?>                         
            <div class="form-body">
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Bài viết</b></label>
                        <div class="col-md-10">
                            <?php echo $inputFullName; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>                         
                </div> 
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>VideoURL</b></label>
                        <div class="col-md-10">
                            <?php echo $inputVideoUrl; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>                         
                </div>                 
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Chủ đề</b></label>
                        <div class="col-md-10">
                            <?php echo $ddlCategoryVideo; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                    
                </div>   
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Hình</b></label>
                        <div class="col-md-10">
                            <div class="box-logo">
                                <div><input type="file" name="image"  />   </div>
                                <div><font color="red"><b>Kích thước ảnh không được vượt quá <?php echo (int)max_size_upload; ?>MB</b></font></div>
                            </div> 
                            <div class="picture-area"><?php echo $picture; ?>                      </div>
                        </div>
                    </div>     
                </div>                                                              
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Sắp xếp</b></label>
                        <div class="col-md-10">
                            <?php echo $inputSortOrder; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>  
                </div>
                <div class="row"> 
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Trạng thái</b></label>
                        <div class="col-md-10">                            
                            <?php echo $ddlStatus; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>     
                </div>                                                                                  
            </div>              
        </form>
    </div>
</div>
<script type="text/javascript" language="javascript">
    

    function deleteImage(){
        var xac_nhan = 0;
        var msg="Bạn có muốn xóa ?";
        if(window.confirm(msg)){ 
            xac_nhan = 1;
        }
        if(xac_nhan  == 0){
            return 0;
        }
        $(".picture-area").empty();
        $("input[name='image_hidden']").val("");        
    }
    function save(){
        var id=$('input[name="id"]').val();    
        var fullname=$('input[name="fullname"]').val();    
        var video_url=$('input[name="video_url"]').val();                    
        var category_id=$('select[name="category_id"]').val();
        /* begin xử lý image */
        var image_file=null;
        var image_ctrl=$('input[name="image"]');         
        var image_files = $(image_ctrl).get(0).files;        
        if(image_files.length > 0){            
            image_file  = image_files[0];  
        }        
        /* end xử lý image */
        var image_hidden=$('input[name="image_hidden"]').val();         
        var sort_order=$('input[name="sort_order"]').val();
        var status=$('select[name="status"]').val();     
        var token = $('input[name="_token"]').val();   
                
        var dataItem = new FormData();
        dataItem.append('id',id);
        dataItem.append('fullname',fullname);
        dataItem.append('video_url',video_url);    
        if(image_files.length > 0){
            dataItem.append('image',image_file);
        }        
        dataItem.append('image_hidden',image_hidden);    
        dataItem.append('category_id',category_id);          
        dataItem.append('sort_order',sort_order); 
        dataItem.append('status',status); 
        dataItem.append('_token',token);      
        $.ajax({
            url: '<?php echo $linkSave; ?>',
            type: 'POST',
            data: dataItem,
            async: false,
            success: function (data) {
                if(data.checked==1){
                    
                    window.location.href = data.link_edit;
                }else{
                    showMsg('note',data);       
                }
                spinner.hide();
            },
            error : function (data){
                spinner.hide();
            },
            beforeSend  : function(jqXHR,setting){
                spinner.show();
            },
            cache: false,
            contentType: false,
            processData: false
        });
    }
    
</script>
@endsection()            