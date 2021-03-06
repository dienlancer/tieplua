@extends("adminsystem.master")
@section("content")
<?php 
$setting= getSettingSystem();
$linkCancel             =   route('adminsystem.'.$controller.'.getList');
$linkSave               =   route('adminsystem.'.$controller.'.save');
$inputFullName          =   '<input type="text" class="form-control" name="fullname"       value="'.@$arrRowData['fullname'].'">'; 
$inputNumberMoney          =   '<input type="text" class="form-control" name="number_money" onkeyup="PhanCachSoTien(this);"       value="'.convertToTextPrice(@$arrRowData['number_money']).'">'; 
$inputNote          =   '<input type="text" class="form-control" name="note"       value="'.@$arrRowData['note'].'">'; 
$ddlPaymentMethod      =   cmsSelectboxCategory("payment_method_id","form-control",@$arrPaymentMethod,@$arrRowData['payment_method_id'],"",'Chọn danh mục');
$ddlDonation      =   cmsSelectboxCategory("donation_id","form-control",@$arrDonation,@$arrRowData['donation_id'],"",'Chọn danh mục');

$sort_order=1;
if(@$arrRowData == null){
    $source_sort_order=App\SupporterModel::select('id','fullname','sort_order')->orderBy('sort_order','desc')->get()->toArray();
    if(count($source_sort_order) > 0){
        $sort_order=(int)@$source_sort_order[0]['sort_order']+1;
    }
}else{
    $sort_order=@$arrRowData['sort_order'];
}
$inputSortOrder         =   '<input type="text" class="form-control" name="sort_order"  value="'.@$sort_order.'">';

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
$inputPictureHidden     =   '<input type="hidden" name="image_hidden"  value="'.@$strImage.'" />';
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
                        <label class="col-md-2 control-label"><b>Họ tên</b></label>
                        <div class="col-md-10">
                            <?php echo $inputFullName; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>                         
                </div> 
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Chương trình</b></label>
                        <div class="col-md-10">
                            <?php echo $ddlDonation; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>                        
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Số tiền ủng hộ</b></label>
                        <div class="col-md-10">
                            <?php echo $inputNumberMoney; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                </div> 
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Ghi chú</b></label>
                        <div class="col-md-10">
                            <?php echo $inputNote; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                </div>         
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Hình thức</b></label>
                        <div class="col-md-10">
                            <?php echo $ddlPaymentMethod; ?>
                            <span class="help-block"></span>
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

    function save(){
        var id=$('input[name="id"]').val();        
        var fullname=$('input[name="fullname"]').val();        
        var number_money=$('input[name="number_money"]').val();
        var note=$('input[name="note"]').val();
        var payment_method_id=$('select[name="payment_method_id"]').val();
        var donation_id=$('select[name="donation_id"]').val();
        var sort_order=$('input[name="sort_order"]').val();
        var status=$('select[name="status"]').val();     
        var token = $('input[name="_token"]').val();   
        
        var dataItem={
            "id":id,
            "fullname":fullname,
            "number_money":number_money, 
            "note":note,   
            "payment_method_id":payment_method_id,            
            "donation_id":donation_id,                                 
            "sort_order":sort_order,
            "status":status,
            "_token": token
        };
        $.ajax({
            url: '<?php echo $linkSave; ?>',
            type: 'POST',
            data: dataItem,
            async: false,
            success: function (data) {
                if(data.checked==1){     
                alert(data.msg.success);                     
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
        });
    }    
</script>
@endsection()            