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
use App\DonationModel;
use App\SupporterModel;
use DB;
class DonationController extends Controller {
 var $_controller="donation";	
 var $_title="Chương trình quyên góp";
 var $_icon="icon-settings font-dark";    
 public function getList(){		
  $controller=$this->_controller;	
  $task="list";
  $title=$this->_title;
  $icon=$this->_icon;		        
  $arrPrivilege=getArrPrivilege();
  $requestControllerAction=$this->_controller."-list";         
  if(in_array($requestControllerAction,$arrPrivilege)){
    return view("adminsystem.".$this->_controller.".list",compact("controller","task","title","icon")); 
  }
  else{
    return view("adminsystem.no-access",compact('controller'));
  }
}	    
public function loadData(Request $request){           
  $query=DB::table('donation');        
  if(!empty(@$request->filter_search)){
    $query->where('donation.fullname','like','%'.trim(@$request->filter_search).'%');
  }
  $data=$query->select('donation.id','donation.fullname','donation.total_cost','donation.sort_order','donation.status','donation.created_at','donation.updated_at')
  ->groupBy('donation.id','donation.fullname','donation.total_cost','donation.sort_order','donation.status','donation.created_at','donation.updated_at')
  ->orderBy('donation.sort_order', 'asc')->get()->toArray()     ;             
  $data=convertToArray($data);    
  $data=donationConverter($data,$this->_controller);            
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
     $arrRowData=DonationModel::find((int)@$id)->toArray();                     
     break;
     case 'add':
     $title=$this->_title . " : Add new";
     break;     
   }            
   return view("adminsystem.".$this->_controller.".form",compact("arrRowData","controller","task","title","icon"));
 }else{
  return view("adminsystem.no-access",compact('controller'));
}        
}
public function save(Request $request){
  $id 					        =		trim($request->id);        
  $fullname 				    =		trim($request->fullname);
  $alias                =   trim($request->alias);                  
  $meta_keyword         =   trim($request->meta_keyword);
  $meta_description     =   trim($request->meta_description);             
  $total_cost           =   trim($request->total_cost);                  
  $sort_order           =   trim($request->sort_order);
  $status               =   trim($request->status);          
  $data 		            =   array();

  $item		              =   null;
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();
  if(empty($fullname)){
   $checked = 0;

   $msg["fullname"] = "Thiếu tên bài viết";
 }else{
  $data=array();
  if (empty($id)) {
    $data=DonationModel::whereRaw("trim(lower(fullname)) = ?",[trim(mb_strtolower($fullname,'UTF-8'))])->get()->toArray();	        	
  }else{
    $data=DonationModel::whereRaw("trim(lower(fullname)) = ? and id != ?",[trim(mb_strtolower($fullname,'UTF-8')),(int)@$id])->get()->toArray();		
  }  
  if (count($data) > 0) {
    $checked = 0;

    $msg["fullname"] = "Bài viết đã tồn tại";
  }      	
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
    $item 				= 	new DonationModel;       
    $item->created_at 	=	date("Y-m-d H:i:s",time());                            
  } else{
    $item				=	DonationModel::find((int)@$id);                           
  }  
  $item->fullname 		    =	$fullname;
  $item->alias            = $alias;                       
  $item->meta_keyword     = $meta_keyword;
  $item->meta_description = $meta_description;                             
  $item->total_cost            = (int)(str_replace('.', '',@$total_cost)) ;                        
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
  $status         =       (int)$request->status;
  $item           =       DonationModel::find((int)@$id);        
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
  $data=SupporterModel::whereRaw("donation_id = ?",[(int)@$id])->select('id')->get()->toArray();
  if(count($data) > 0){
    $checked                =   0;

    $msg['cannotdelete']                    =   "Phần tử có dữ liệu con. Vui lòng không xoá";
  }                     
  if($checked == 1){
    $item = DonationModel::find((int)@$id);
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
        $item=DonationModel::find($value);
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
  $data=DB::table('supporter')->whereIn('donation_id',@$arrID)->select('id')->get()->toArray();             
  if(count($data) > 0){
    $checked                =   0;

    $msg['cannotdelete']                    =   "Phần tử này có dữ liệu con. Vui lòng không xoá";
  }   
  if($checked == 1){                                 
    DB::table('donation')->whereIn('id',@$arrID)->delete();   
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
        $item=DonationModel::find((int)@$value->id);                
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

public function createAlias(Request $request){
  $id            =  trim($request->id)  ; 
  $fullname      =  trim($request->fullname)  ;        
  $data          =  array();

  $item          =  null;

  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();
  $alias='';                     
  if(empty($fullname)){
   $checked = 0;

   $msg["fullname"] = "Thiếu tên";
 }else{
  $alias=str_slug($fullname,'-');        
  $dataDonation=array();        
  $checked_trung_alias=0;          
  if (empty($id)) {              
    $dataDonation=DonationModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();             
  }else{
    $dataDonation=DonationModel::whereRaw("trim(lower(alias)) = ? and id != ?",[trim(mb_strtolower($alias,'UTF-8')),(int)@$id])->get()->toArray();    
  }                        
  if (count($dataDonation) > 0) {
    $checked_trung_alias=1;
  }  
  if((int)$checked_trung_alias == 1){
    $code_alias=rand(1,999999);
    $alias=$alias.'-'.$code_alias;
  }
}
if ($checked == 1){
  $msg['success']='Lưu thành công';     
}  
$info = array(
  "checked"       => $checked,          
  'msg'       => $msg,      
  "alias"            => $alias
);                       
return $info;
}      
}
?>
