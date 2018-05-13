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
use DB;
class PhotoController extends Controller {
  	var $_controller="photo";	
  	var $_title="Photo";
  	var $_icon="icon-settings font-dark";    
  	public function getList(){		
    		$controller=$this->_controller;	
    		$task="list";
    		$title=$this->_title;
    		$icon=$this->_icon;		   
        $arrAlbum=AlbumModel::select("id","fullname")->orderBy("sort_order","asc")->get()->toArray();     
        $arrPrivilege=getArrPrivilege();
        $requestControllerAction=$this->_controller."-list";         
        if(in_array($requestControllerAction,$arrPrivilege)){
          return view("adminsystem.".$this->_controller.".list",compact("controller","task","title","icon","arrAlbum")); 
        }
        else{
          return view("adminsystem.no-access",compact('controller'));
        }
  	}	    
  	public function loadData(Request $request){                 
      $query=DB::table('photo')
                ->join('album','photo.album_id','=','album.id');        
      if(!empty(@$request->album_id)){
        $query->where('photo.album_id',(int)@$request->album_id);
      }
      $data=$query->select('photo.id','album.fullname as album_name','photo.image','photo.sort_order','photo.status','photo.created_at','photo.updated_at')
      ->groupBy('photo.id','album.fullname','photo.image','photo.sort_order','photo.status','photo.created_at','photo.updated_at')
      ->orderBy('photo.sort_order', 'asc')->get()->toArray()     ;              
      $data=convertToArray($data);    
      $data=photoConverter($data,$this->_controller);            
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
              $arrRowData=PhotoModel::find((int)@$id)->toArray();                     
           break;
           case 'add':
              $title=$this->_title . " : Add new";
           break;     
        }          
        $arrAlbum=AlbumModel::select("id","fullname")->orderBy("sort_order","asc")->get()->toArray();  
        return view("adminsystem.".$this->_controller.".form",compact("arrRowData","controller","task","title","icon","arrAlbum"));
        }else{
          return view("adminsystem.no-access",compact('controller'));
        }        
    }
          public function save(Request $request){      
            $album_id=trim($request->album_id); 
            $source_media_file=array();            
            if(isset($_FILES['source_media_file'])){
              $source_media_file=$_FILES['source_media_file'];
            }   
            $data 		            =   array();
            
            $item		              =   null;
            $info                 =   array();
      $checked              =   1;                           
      $msg                =   array();
            $setting= getSettingSystem();
            $width=$setting['article_width']['field_value'];
            $height=$setting['article_height']['field_value'];   
            if(empty($album_id)){
              $checked = 0;
              
              $msg["album_id"]      = "Thiếu danh mục";
            }               
            if ($checked == 1) {  
              if(count($source_media_file) > 0){
                foreach ($source_media_file['name'] as $key => $value){
                  $media_item=uploadImage($value,$source_media_file['tmp_name'][$key],$width,$height);
                  $item         =   new PhotoModel;        
                  $item->image    =   trim($media_item) ;
                  $item->album_id=(int)@$album_id;
                  $item->sort_order = 1;
                  $item->status = 1;
                  $item->created_at   = date("Y-m-d H:i:s",time());
                  $item->updated_at       = date("Y-m-d H:i:s",time());  
                  $item->save();           
                }
              }                 
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
                  $item           =       PhotoModel::find((int)@$id);        
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
              $item = PhotoModel::find((int)@$id);
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
              $item=PhotoModel::find($value);
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
                  DB::table('photo')->whereIn('id',@$arrID)->delete();   
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
                  $item=PhotoModel::find((int)@$value->id);                
                $item->sort_order=(int)$value->sort_order;                         
                $item->save();                      
                }                                                  
              }           
            }        
            $data                   =   $this->loadData($request);
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
           
           $msg["fullname"] = "Thiếu tên bài viết";
         }else{
          $alias=str_slug($fullname,'-');
          $dataCategoryArticle=array();
        $dataCategoryProduct=array();
        $dataArticle=array();
        $dataProduct=array();
        $dataPage=array();
        $dataProject=array();
        $dataProjectArticle=array();
          $checked_trung_alias=0;          
          if (empty($id)) {              
              $dataProject=AlbumModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();             
            }else{
              $dataProject=AlbumModel::whereRaw("trim(lower(alias)) = ? and id != ?",[trim(mb_strtolower($alias,'UTF-8')),(int)@$id])->get()->toArray();    
            }  
            $dataCategoryArticle=CategoryArticleModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
            $dataCategoryProduct=CategoryProductModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
            $dataArticle=ArticleModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
            $dataProduct=ProductModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
            $dataPage=PageModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
            $dataProjectArticle=ProjectArticleModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
          if (count($dataCategoryArticle) > 0) {
            $checked_trung_alias=1;
          }
          if (count($dataCategoryProduct) > 0) {
            $checked_trung_alias=1;
          }
          if (count($dataArticle) > 0) {
            $checked_trung_alias=1;
          }
          if (count($dataProduct) > 0) {
            $checked_trung_alias=1;
          }    
          if (count($dataPage) > 0) {
            $checked_trung_alias=1;
          }
          if (count($dataProject) > 0) {
            $checked_trung_alias=1;
          }  
          if (count($dataProjectArticle) > 0) {
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
