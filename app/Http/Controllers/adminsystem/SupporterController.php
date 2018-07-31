<?php namespace App\Http\Controllers\adminsystem;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\CategoryArticleModel;
use App\CategoryProductModel;
use App\ArticleModel;
use App\ProductModel;
use App\PageModel;
use App\MenuModel;
use App\ProjectModel;
use App\ProjectArticleModel;
use App\ArticleCategoryModel;
use App\PaymentMethodModel;
use App\SupporterModel;
use App\DonationModel;
use DB;
class SupporterController extends Controller {
 var $_controller="supporter";	
 var $_title="Tiếp lửa";
 var $_icon="icon-settings font-dark";    
 public function getList(){		
  $controller=$this->_controller;	
  $task="list";
  $title=$this->_title;
  $icon=$this->_icon;		        
  $arrDonation=DonationModel::select("id","fullname")->orderBy("sort_order","asc")->get()->toArray();     
  $arrPrivilege=getArrPrivilege();
  $requestControllerAction=$this->_controller."-list";         
  if(in_array($requestControllerAction,$arrPrivilege)){
    return view("adminsystem.".$this->_controller.".list",compact("controller","task","title","icon","arrDonation")); 
  }
  else{
    return view("adminsystem.no-access",compact('controller'));
  }
}	    
public function loadData(Request $request){             
  $query=DB::table('supporter')  
  ->join('payment_method','supporter.payment_method_id','=','payment_method.id')  
  ->join('donation','supporter.donation_id','=','donation.id') ;
  if(!empty(@$request->filter_search)){
    $query->where('supporter.fullname','like','%'.trim(mb_strtolower(@$request->filter_search,'UTF-8')).'%')    ;
  }
  if((int)@$request->donation_id > 0){
    $query->where('supporter.donation_id','=',(int)@$request->donation_id); 
  }
  $data=$query->select('supporter.id','supporter.fullname','donation.fullname as donation_name','supporter.number_money','payment_method.fullname as payment_method_name','supporter.sort_order','supporter.status','supporter.created_at','supporter.updated_at')
  ->groupBy('supporter.id','supporter.fullname','donation.fullname','supporter.number_money','payment_method.fullname','supporter.sort_order','supporter.status','supporter.created_at','supporter.updated_at')
  ->orderBy('supporter.sort_order', 'desc')->get()->toArray();                
  $data=convertToArray($data);    
  $data=supporterConverter($data,$this->_controller);            
  return $data;
} 
public function getForm($task,$id=""){     
  $controller=$this->_controller;     
  $title="";
  $icon=$this->_icon; 
  $arrRowData=array();        
  $arrPrivilege=getArrPrivilege();
  $requestControllerAction=$this->_controller."-form";  
  if(in_array($requestControllerAction, $arrPrivilege)){
    switch ($task) {
     case 'edit':
     $title=$this->_title . " : Update";
     $arrRowData=SupporterModel::find((int)@$id)->toArray();                     
     break;
     case 'add':
     $title=$this->_title . " : Add new";
     break;     
   }          
   $arrPaymentMethod=PaymentMethodModel::select("id","fullname")->orderBy("sort_order","asc")->get()->toArray();     
   $arrDonation=DonationModel::select("id","fullname")->orderBy("sort_order","asc")->get()->toArray();     
   return view("adminsystem.".$this->_controller.".form",compact("arrRowData","controller","task","title","icon","arrPaymentMethod","arrDonation"));
 }else{
  return view("adminsystem.no-access",compact('controller'));
}        
}
public function save(Request $request){
  $id 					        =		trim($request->id);        
  $fullname 				    =		trim($request->fullname);
  $number_money         =   trim($request->number_money);
  $note            =   trim($request->note);
  $payment_method_id    =   trim($request->payment_method_id);       
  $donation_id          =   trim($request->donation_id);                        
  $sort_order           =   trim($request->sort_order);
  $status               =   trim($request->status);          
  $data 		            =   array();
  
  $item		              =   null;
  
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();
  if(empty($fullname)){
   $checked = 0;
   
   $msg["fullname"] = "Thiếu tên người hỗ trợ";
 }else{
  $data=array();
  if (empty($id)) {
    $data=ProjectModel::whereRaw("trim(lower(fullname)) = ?",[trim(mb_strtolower($fullname,'UTF-8'))])->get()->toArray();	        	
  }else{
    $data=ProjectModel::whereRaw("trim(lower(fullname)) = ? and id != ?",[trim(mb_strtolower($fullname,'UTF-8')),(int)@$id])->get()->toArray();		
  }  
  if (count($data) > 0) {
    $checked = 0;
    
    $msg["fullname"] = "Bài viết đã tồn tại";
  }      	
}      
if((int)@$payment_method_id == 0){
  $checked = 0;
  
  $msg["payment_method_id"]      = "Thiếu hình thức";
}          
if((int)@$donation_id == 0){
  $checked = 0;
  
  $msg["donation_id"]      = "Thiếu chương trình";
}                 
if(empty($sort_order)){
 $checked = 0;
 
 $msg["sort_order"] 		= "Thiếu sắp xếp";
}
if((int)$status==-1){
 $checked = 0;
 
 $msg["status"] 			= "Thiếu trạng thái";
}
if ($checked == 1) {    
  if(empty($id)){
    $item 				= 	new SupporterModel;       
    $item->created_at 	=	date("Y-m-d H:i:s",time());                            
  } else{
    $item				=	SupporterModel::find((int)@$id);                                                   
  }  
  $item->fullname 		    =	$fullname;
  $item->number_money     = str_replace('.', '',$number_money) ;
  $item->note=@$note;
  $item->payment_method_id = (int)@$payment_method_id;      
  $item->donation_id=(int)@$donation_id;                                 
  $item->sort_order 		  =	(int)@$sort_order;
  $item->status 			    =	(int)@$status;    
  $item->updated_at 		  =	date("Y-m-d H:i:s",time());    	        	
  $item->save();                                  
  $msg['success']='Lưu thành công';  
}
$info = array(
        "checked"       => $checked,          
        'msg'       => $msg,      
        'link_edit'=>route('adminsystem.'.$this->_controller.'.getForm',['edit',@$item->id])
      );                      

return $info;       
}
public function changeStatus(Request $request){
  $id             =       (int)$request->id;     
  
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();

  $status         =       (int)@$request->status;
  $item           =       SupporterModel::find((int)@$id);        
  $item->status   =       $status;
  $item->save();
  $msg['success']='Cập nhật thành công';            
  $data                   =   $this->loadData($request);

  $info = array(
    "checked"       => $checked,          
    'msg'       => $msg,           
    'data'              => $data
  );
  return $info;
}

public function deleteItem(Request $request){
  $id                     =   (int)$request->id;              
  
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();                 
  if($checked == 1){
    $item = SupporterModel::find((int)@$id);
    $item->delete();      
    $msg['success']='Xóa thành công';                                                   
  }        
  $data                   =   $this->loadData($request);
  $info = array(
    "checked"       => $checked,          
    'msg'       => $msg,    
    'data'              => $data
  );
  return $info;
}
public function updateStatus(Request $request){
  $strID                 =   $request->str_id;     
  $status                 =   $request->status;            
  
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();         
  $strID=substr($strID, 0,strlen($strID) - 1);
  $arrID=explode(',',$strID);                 
  if(empty($strID)){
    $checked            =   0;
    
    $msg['chooseone']            =   "Vui lòng chọn ít nhất một phần tử";
  }
  if($checked==1){
    foreach ($arrID as $key => $value) {
      if(!empty($value)){
        $item=SupporterModel::find($value);
        $item->status=$status;
        $item->save();      
      }            
    }
    $msg['success']='Cập nhật thành công';
  }                 
  $data                   =   $this->loadData($request);
  $info = array(
    "checked"       => $checked,          
    'msg'       => $msg,    
    'data'              => $data
  );
  return $info;
}
public function trash(Request $request){
  $strID                 =   $request->str_id;               
  
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();  
  $strID=substr($strID, 0,strlen($strID) - 1);
  $arrID=explode(',',$strID);                 
  if(empty($strID)){
    $checked            =   0;
    
    $msg['chooseone']            =   "Vui lòng chọn ít nhất một phần tử";
  }
  if($checked == 1){                                  

    DB::table('supporter')->whereIn('id',@$arrID)->delete();     
    $msg['success']='Xóa thành công';                                           
  }
  $data                   =   $this->loadData($request);
  $info = array(
    "checked"       => $checked,          
    'msg'       => $msg,         
    'data'              => $data
  );
  return $info;
}
public function sortOrder(Request $request){
  $sort_json              =   $request->sort_json;           
  $data_order             =   json_decode($sort_json);       
  
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();
  if(count($data_order) > 0){              
    foreach($data_order as $key => $value){      
      if(!empty($value)){
        $item=SupporterModel::find((int)@$value->id);                
        $item->sort_order=(int)$value->sort_order;                         
        $item->save();                      
      }                                                  
    }           
  }    
  $msg['success']='Cập nhật thành công';     
  $data                   =   $this->loadData($request);
  $info = array(
    "checked"       => $checked,          
    'msg'       => $msg,          
    'data'              => $data
  );
  return $info;
}
}
?>
