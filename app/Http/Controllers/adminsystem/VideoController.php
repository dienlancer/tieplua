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
use App\AlbumModel;
use App\PhotoModel;
use App\CategoryVideoModel;
use App\VideoModel;
use DB;
class VideoController extends Controller {
 var $_controller="video";	
 var $_title="Video";
 var $_icon="icon-settings font-dark";    
 public function getList(){		
  $controller=$this->_controller;	
  $task="list";
  $title=$this->_title;
  $icon=$this->_icon;		   
  $arrCategoryVideo=CategoryVideoModel::select("id","fullname")->orderBy("sort_order","asc")->get()->toArray();     
  $arrPrivilege=getArrPrivilege();
  $requestControllerAction=$this->_controller."-list";         
  if(in_array($requestControllerAction,$arrPrivilege)){
    return view("adminsystem.".$this->_controller.".list",compact("controller","task","title","icon","arrCategoryVideo")); 
  }
  else{
    return view("adminsystem.no-access",compact('controller'));
  }
}	    
public function loadData(Request $request){                 
  $query=DB::table('video')
  ->join('category_video','video.category_id','=','category_video.id');        
  if(!empty(@$request->category_id)){
    $query->where('video.category_id',(int)@$request->category_id);
  }
  $data=$query->select('video.id','video.fullname','category_video.fullname as category_name','video.image','video.video_url','video.sort_order','video.status','video.created_at','video.updated_at')
  ->groupBy('video.id','video.fullname','category_video.fullname','video.image','video.video_url','video.sort_order','video.status','video.created_at','video.updated_at')
  ->orderBy('video.sort_order', 'asc')->get()->toArray()     ;              
  $data=convertToArray($data);    
  $data=videoConverter($data,$this->_controller);            
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
     $arrRowData=VideoModel::find((int)@$id)->toArray();                     
     break;
     case 'add':
     $title=$this->_title . " : Add new";
     break;     
   }          
   $arrCategoryVideo=CategoryVideoModel::select("id","fullname")->orderBy("sort_order","asc")->get()->toArray();  
   return view("adminsystem.".$this->_controller.".form",compact("arrRowData","controller","task","title","icon","arrCategoryVideo"));
 }else{
  return view("adminsystem.no-access",compact('controller'));
}        
}
public function save(Request $request){
  $id                   =   trim(@$request->id);   
  $fullname             =   trim($request->fullname);
  $category_id    =   trim(@$request->category_id);                                
  $image_file           =   null;
  if(isset($_FILES["image"])){
    $image_file         =   $_FILES["image"];
  }
  $image_hidden         =   trim(@$request->image_hidden); 
  $video_url            =   trim(@$request->video_url);             
  $sort_order           =   trim(@$request->sort_order);
  $status               =   trim(@$request->status);          
  $data                 =   array();
  

  $item                 =   null;
  
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();

  if(empty($fullname)){
   $checked = 0;
   
   $msg["fullname"] = "Thiếu tên video";
 }else{
  $data=array();
  if (empty($id)) {
    $data=ArticleModel::whereRaw("trim(lower(fullname)) = ?",[trim(mb_strtolower($fullname,'UTF-8'))])->get()->toArray();           
  }else{
    $data=ArticleModel::whereRaw("trim(lower(fullname)) = ? and id != ?",[trim(mb_strtolower($fullname,'UTF-8')),(int)@$id])->get()->toArray();   
  }  
  if (count($data) > 0) {
    $checked = 0;
    
    $msg["fullname"] = "Tên video đã tồn tại";
  }       
}              
if(empty($video_url)){
 $checked = 0;
 
 $msg["video_url"] = "Thiếu tên bài viết";
}else{
  $data=array();
  if (empty($id)) {
    $data=VideoModel::whereRaw("trim(lower(video_url)) = ?",[trim(mb_strtolower($video_url,'UTF-8'))])->get()->toArray();            
  }else{
    $data=VideoModel::whereRaw("trim(lower(video_url)) = ? and id != ?",[trim(mb_strtolower($video_url,'UTF-8')),(int)@$id])->get()->toArray();    
  }  
  if (count($data) > 0) {
    $checked = 0;
    
    $msg["video_url"] = "Bài viết đã tồn tại";
  }       
}          

if((int)@$category_id == 0){
  $checked = 0;
  
  $msg["category_id"]      = "Thiếu danh mục";
}          
if(empty($sort_order)){
 $checked = 0;
 
 $msg["sort_order"]    = "Thiếu sắp xếp";
}
if((int)$status==-1){
 $checked = 0;
 
 $msg["status"]      = "Thiếu trạng thái";
}
if ($checked == 1) {    
  $image_name='';
  if($image_file != null){                     
    $width=0;
    $height=0;                            
    $image_name=uploadImage($image_file['name'],$image_file['tmp_name'],$width,$height);        
  }  
  if(empty($id)){
    $item         =   new VideoModel;       
    $item->created_at   = date("Y-m-d H:i:s",time());        
    if(!empty($image_name)){
      $item->image    =   trim($image_name) ;  
    }      
  } else{
    $item       = VideoModel::find((int)@$id);   
    $item->image=null;                       
    if(!empty($image_hidden)){
      $item->image =$image_hidden;          
    }
    if(!empty($image_name))  {
      $item->image=$image_name;                                                
    }                   
  }        
  $item->fullname         = $fullname;          
  $item->category_id       = (int)@$category_id;
  $item->video_url = $video_url;                    
  $item->sort_order       = (int)$sort_order;
  $item->status           = (int)$status;    
  $item->updated_at       = date("Y-m-d H:i:s",time());               
  $item->save();                  
  $msg['success']='Lưu thành công'; 
}
$info = array(
  "checked"       => $checked,          
  'msg'       => $msg,                
  "id"            => (int)@$id
);                             
return $info;       
}
public function changeStatus(Request $request){
  $id             =       (int)$request->id;     
  
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();          
  $status         =       (int)$request->status;
  $item           =       VideoModel::find((int)@$id);        
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
    $item = VideoModel::find((int)@$id);
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
        $item=VideoModel::find($value);
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
    DB::table('video')->whereIn('id',@$arrID)->delete();     
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
        $item=VideoModel::find((int)@$value->id);                
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
