<?php namespace App\Http\Controllers\frontend;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CategoryModel;
use App\CategoryArticleModel;
use App\CategoryProductModel;
use App\GroupModel;
use App\MenuModel;
use App\ArticleModel;
use App\PageModel;
use App\PaginationModel;
use App\ProductModel;
use App\ModuleMenuModel;
use App\ModuleCustomModel;
use App\ModuleArticleModel;
use App\ModMenuTypeModel;
use App\User;
use App\UserGroupModel;
use App\UserGroupMemberModel;
use App\GroupMemberModel;
use App\CustomerModel;
use App\InvoiceModel;
use App\InvoiceDetailModel;
use App\BannerModel;
use App\ModuleItemModel;
use App\PaymentMethodModel;
use App\ProjectModel;
use App\ProjectArticleModel;
use App\ProjectMemberModel;
use App\OrganizationModel;
use App\AlbumModel;
use App\PhotoModel;
use App\CategoryVideoModel;
use App\VideoModel;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use Session;
use DB;
use Hash;
use Sentinel;
class IndexController extends Controller {  
  var $_pageRange=4;
  var $_ssNameUser="vmuser";
  var $_ssNameCart="vmart";      
  public function getHome(Request $request){   
    return view("frontend.home");
  }  
  public function search(Request $request){
    /* begin standard */    
    $layout="two-column";                                                           
    $totalItems=0;
    $totalItemsPerPage=0;
    $pageRange=0;      
    $currentPage=1;  
    $pagination ;                                              
    $setting= getSettingSystem();     
         
    /* end standard */     
    $items=array();                            
    $component='search';              
    $title="Tìm kiếm"; 
    $query=DB::table('article')
                ->join('article_category','article.id','=','article_category.article_id')
                ->join('category_article','category_article.id','=','article_category.category_id')
                ->where('article.status',1);
    if(!empty(@$request->q)){
      $query->where('article.fullname','like', '%'.@$request->q.'%');
    }                     
    $data=$query->select('article.id')
                ->groupBy('article.id')                
                ->get()->toArray();
        $data=convertToArray($data);
        $totalItems=count($data);
        $totalItemsPerPage=(int)@$setting['article_perpage']['field_value']; 
        $pageRange=$this->_pageRange;
        if(!empty(@$request->filter_page)){
          $currentPage=@$request->filter_page;
        }       
        $arrPagination=array(
          "totalItems"=>$totalItems,
          "totalItemsPerPage"=>$totalItemsPerPage,
          "pageRange"=>$pageRange,
          "currentPage"=>$currentPage   
        );           
        $pagination=new PaginationModel($arrPagination);
        $position   = ((int)@$arrPagination['currentPage']-1)*$totalItemsPerPage;        
        $query=DB::table('article')
                ->join('article_category','article.id','=','article_category.article_id')
                ->join('category_article','category_article.id','=','article_category.category_id')
                ->where('article.status',1);
    if(!empty(@$request->q)){
      $query->where('article.fullname','like', '%'.@$request->q.'%');
    }                     
    $data=$query->select('article.id','article.alias','article.fullname','article.image','article.intro','article.count_view')
                ->groupBy('article.id','article.alias','article.fullname','article.image','article.intro','article.count_view')
                ->orderBy('article.created_at', 'desc')
                ->skip($position)
                ->take($totalItemsPerPage)
                ->get()->toArray();   
        $items=convertToArray($data);      
    return view("frontend.index",compact("component","title","items","pagination","layout"));
  }
  public function searchSupporter(Request $request){
    /* begin standard */  
    $layout="two-column";                                                  
    $totalItems=0;
    $totalItemsPerPage=0;
    $pageRange=0;      
    $currentPage=1;  
    $pagination ;                                              
    $setting= getSettingSystem();     

    /* end standard */     
    $items=array();                            
    $component='supporter';      
    $title="Tìm kiếm ân nhân giúp đỡ";        
    $query=DB::table('supporter')  
              ->join('payment_method','supporter.payment_method_id','=','payment_method.id')
              ->where('supporter.status',1);  
    if(!empty(@$request->month)){
      $query->whereMonth('supporter.created_at',(int)@$request->month);
    }
    if(!empty(@$request->year)){
      $query->whereYear('supporter.created_at',(int)@$request->year) ;
    }
    if(!empty(@$request->payment_method_id)){
      $query->where('supporter.payment_method_id',(int)@$request->payment_method_id)   ;                                 
    }  
    if(!empty(@$request->q)){
      $query->where('supporter.fullname','like','%'.trim(mb_strtolower(@$request->q,'UTF-8')).'%');
    }
    $data=$query->select('supporter.id')                                                                                             
    ->groupBy('supporter.id')                        
    ->get()->toArray();            
    $data=convertToArray($data);    
    $totalItems=count($data);
        $totalItemsPerPage=(int)@$setting['article_perpage']['field_value']; 
        $pageRange=$this->_pageRange;
        if(!empty(@$request->filter_page)){
          $currentPage=@$request->filter_page;
        }       
        $arrPagination=array(
          "totalItems"=>$totalItems,
          "totalItemsPerPage"=>$totalItemsPerPage,
          "pageRange"=>$pageRange,
          "currentPage"=>$currentPage   
        );           
        $pagination=new PaginationModel($arrPagination);
        $position   = ((int)@$arrPagination['currentPage']-1)*$totalItemsPerPage;             
    $query=DB::table('supporter')  
              ->join('payment_method','supporter.payment_method_id','=','payment_method.id')
              ->where('supporter.status',1);  
    if(!empty(@$request->month)){
      $query->whereMonth('supporter.created_at',(int)@$request->month);
    }
    if(!empty(@$request->year)){
      $query->whereYear('supporter.created_at',(int)@$request->year) ;
    }
    if(!empty(@$request->payment_method_id)){
      $query->where('supporter.payment_method_id',(int)@$request->payment_method_id)   ;                                 
    }  
    if(!empty(@$request->q)){
      $query->where('supporter.fullname','like','%'.trim(mb_strtolower(@$request->q,'UTF-8')).'%');
    }
    $data=$query->select('supporter.id','supporter.fullname','supporter.number_money','payment_method.fullname as payment_method_name','supporter.sort_order','supporter.status','supporter.created_at','supporter.updated_at')                                                                                 
    ->groupBy('supporter.id','supporter.fullname','supporter.number_money','payment_method.fullname','supporter.sort_order','supporter.status','supporter.created_at','supporter.updated_at')  
    ->orderBy('supporter.created_at', 'desc')  
    ->skip($position)
    ->take($totalItemsPerPage)                             
    ->get()->toArray();                    
    $items=convertToArray($data);      
    return view("frontend.index",compact("component","title","items","pagination","layout"));
  }
  public function index(Request $request,$alias)
  {                     
    /* begin standard */

    $title="";
    $meta_keyword="";
    $meta_description="";                                                                
    $totalItems=0;
    $totalItemsPerPage=0;
    $pageRange=0;      
    $currentPage=1;  
    $pagination ;                                              
    $setting= getSettingSystem();    
    $layout="";       
    /* end standard */          
    $item=array();     
    $items=array();                  
    $category=array();  
    $component="";       
    $menu=MenuModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();         
    $lstCategoryArticle=CategoryArticleModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
    $lstCategoryProduct=CategoryProductModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
    $lstArticle=ArticleModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
    $lstProduct=ProductModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
    $lstPage=PageModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
    $lstProject=ProjectModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
    $lstProjectArticle=ProjectArticleModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
    $lstOrganization=OrganizationModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
    $lstAlbum=AlbumModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
    $lstCategoryVideo=CategoryVideoModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
    if(count($lstCategoryArticle) > 0){
      $component='category-article';
    }
    if(count($lstCategoryProduct) > 0){
      $component='category-product';
    }
    if(count($lstArticle) > 0){
      $component='article';
    }
    if(count($lstProduct) > 0){
      $component='product';
    }
    if(count($lstPage) > 0){
      $component='page';
    }
    if(count($lstProject) > 0){
      $component='project';
    } 
    if(count($lstOrganization) > 0){
      $component='organization';
    }
    if(count($lstProjectArticle) > 0){
      $component='project-article';
    }
    if(count($lstAlbum) > 0){
      $component='album';
    }    
    if(count($lstCategoryVideo) > 0){
      $component='category-video';
    }    
    switch (trim(mb_strtolower($alias,'UTF-8'))) {
      case 'tin-tuc-su-kien':
      case 'dich-vu-hoat-dong':
      $component='categories-article';
      break;  
      case 'du-an':
      $component='projects';
      break;    
      case 'tiep-lua':
      $component='supporter';
      break;  
      case 'danh-ba':
      $component='organizations';
      break;
      case 'hinh-anh':
      $component='categories-album';
      break;
    }    
    switch ($component) {
      case 'category-article':      
      $category_id=0;
      $category=CategoryArticleModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower(@$alias,'UTF-8'))])->get()->toArray();      
      if(count($category) > 0){
        $category     = $category[0];
        $category_id    = $category['id'];
        $str_category_id="";
        $arr_category_id[]=$category_id;
        getStringCategoryID($category_id,$arr_category_id,'category_article');                 
        $data=DB::table('article')
                ->join('article_category','article.id','=','article_category.article_id')
                ->join('category_article','category_article.id','=','article_category.category_id')                              
                ->select('article.id')
                ->whereIn('article_category.category_id', $arr_category_id)
                ->where('article.status',1)    
                ->groupBy('article.id')                
                ->get()->toArray();
        $data=convertToArray($data);
        $totalItems=count($data);
        $totalItemsPerPage=(int)@$setting['article_perpage']['field_value']; 
        $pageRange=$this->_pageRange;
        if(!empty(@$request->filter_page)){
          $currentPage=@$request->filter_page;
        }       
        $arrPagination=array(
          "totalItems"=>$totalItems,
          "totalItemsPerPage"=>$totalItemsPerPage,
          "pageRange"=>$pageRange,
          "currentPage"=>$currentPage   
        );           
        $pagination=new PaginationModel($arrPagination);
        $position   = ((int)@$arrPagination['currentPage']-1)*$totalItemsPerPage;        
        $data=DB::table('article')
                ->join('article_category','article.id','=','article_category.article_id')
                ->join('category_article','category_article.id','=','article_category.category_id')                     
                ->select('article.id','article.alias','article.fullname','article.image','article.intro','article.count_view')
                ->whereIn('article_category.category_id', $arr_category_id)
                ->where('article.status',1)     
                ->groupBy('article.id','article.alias','article.fullname','article.image','article.intro','article.count_view')
                ->orderBy('article.created_at', 'desc')
                ->skip($position)
                ->take($totalItemsPerPage)
                ->get()->toArray();        
        $items=convertToArray($data);                            
      }              
      $layout="two-column";  
      break;
      case 'article':
      $row=ArticleModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();              
      if(count($row) > 0){
        $item=$row[0];
      }        
      $layout="two-column";       
      break;  
      case 'page':
      $row=PageModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();              
      if(count($row) > 0){
        $item=$row[0];
      }      
      $layout="two-column";         
      break; 
      case 'category-product':
      $category_id=0;
      $category=CategoryProductModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();
      if(count($category) > 0){
        $category     = $category[0];
        $category_id    = $category['id'];
        $str_category_id="";
        $arr_category_id[]=$category_id;
        $data=DB::table('product')
                ->join('product_category','product.id','=','product_category.product_id')
                ->join('category_product','category_product.id','=','product_category.category_product_id')                                  
                ->select('product.id')
                ->whereIn('product_category.category_product_id', $arr_category_id)
                ->where('product.status',1)  
                ->groupBy('product.id')                
                ->get()->toArray();
        $data=convertToArray($data);
        $totalItems=count($data);
        $totalItemsPerPage=(int)$setting['product_perpage']['field_value']; 
        $pageRange=$this->_pageRange;
        if(!empty(@$request->filter_page)){
          $currentPage=@$request->filter_page;
        }       
        $arrPagination=array(
          "totalItems"=>$totalItems,
          "totalItemsPerPage"=>$totalItemsPerPage,
          "pageRange"=>$pageRange,
          "currentPage"=>$currentPage   
        );           
        $pagination=new PaginationModel($arrPagination);
        $position   = ((int)@$arrPagination['currentPage']-1)*$totalItemsPerPage;        
        $data=DB::table('product')
                ->join('product_category','product.id','=','product_category.product_id')
                ->join('category_product','category_product.id','=','product_category.category_product_id')                   
                ->select('product.id','product.alias','product.fullname','product.image','product.intro')
                ->whereIn('product_category.category_product_id', $arr_category_id)
                ->where('product.status',1)       
                ->groupBy('product.id','product.alias','product.fullname','product.image','product.intro')
                ->orderBy('product.created_at', 'desc')
                ->skip($position)
                ->take($totalItemsPerPage)
                ->get()->toArray();   
        $items=convertToArray($data);                  
      }       
      $layout="two-column";             
      break; 
      case 'product':
      $row=ProductModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();              
      if(count($row) > 0){
        $item=$row[0];
      }    
      $layout="two-column";       
      break;                
      case 'categories-article':
      $alias_1='';
      $alias_2='';
      switch ($alias) {
        case 'tin-tuc-su-kien':           
        $meta_keyword="metakeyword tin tức sự kiện";
        $meta_description="metadescription tin tức sự kiện";
        $alias_1='tin-noi-bo';
        $alias_2='tin-cong-dong';
        break;
        case 'dich-vu-hoat-dong':                    
        $meta_keyword="metakeyword dịch vụ hoạt động";
        $meta_description="metadescription dịch vụ hoạt động";
        $alias_1='dich-vu';
        $alias_2='hoat-dong';
        break;                    
      }
      $data=DB::table('article')
                ->join('article_category','article.id','=','article_category.article_id')
                ->join('category_article','category_article.id','=','article_category.category_id')                            
                ->select('article.id')
                ->where('article.status',1)
                ->where(function($query) use ($alias_1,$alias_2){
                    $query->where('category_article.alias',@$alias_1)
                          ->orWhere('category_article.alias',@$alias_2);
                }) 
                ->groupBy('article.id')
                ->get()->toArray();
      $data=convertToArray($data);
        $totalItems=count($data);
        $totalItemsPerPage=(int)@$setting['article_perpage']['field_value']; 
        $pageRange=$this->_pageRange;
        if(!empty(@$request->filter_page)){
          $currentPage=@$request->filter_page;
        }       
        $arrPagination=array(
          "totalItems"=>$totalItems,
          "totalItemsPerPage"=>$totalItemsPerPage,
          "pageRange"=>$pageRange,
          "currentPage"=>$currentPage   
        );           
        $pagination=new PaginationModel($arrPagination);
        $position   = ((int)@$arrPagination['currentPage']-1)*$totalItemsPerPage;
        $data=DB::table('article')
                ->join('article_category','article.id','=','article_category.article_id')
                ->join('category_article','category_article.id','=','article_category.category_id')                
                ->select('article.id','article.alias','article.fullname','article.image','article.intro','article.content','article.count_view')
                ->where('article.status',1)
                ->where(function($query) use ($alias_1,$alias_2){
                    $query->where('category_article.alias',@$alias_1)
                          ->orWhere('category_article.alias',@$alias_2);
                })                
                ->groupBy('article.id','article.alias','article.fullname','article.image','article.intro','article.content','article.count_view')
                ->orderBy('article.created_at', 'desc')
                ->skip($position)
                ->take($totalItemsPerPage)
                ->get()->toArray();        
        $items=convertToArray($data);  
      $layout="two-column";            
      break;
      case 'projects':      
        $meta_keyword="metakeyword dự án";
        $meta_description="metadescription dự án";
      $data=DB::table('project')                                  
                ->select('project.id')                
                ->where('project.status',1)    
                ->groupBy('project.id')                
                ->get()->toArray();
        $data=convertToArray($data);
        $totalItems=count($data);
        $totalItemsPerPage=(int)@$setting['article_perpage']['field_value']; 
        $pageRange=$this->_pageRange;
        if(!empty(@$request->filter_page)){
          $currentPage=@$request->filter_page;
        }       
        $arrPagination=array(
          "totalItems"=>$totalItems,
          "totalItemsPerPage"=>$totalItemsPerPage,
          "pageRange"=>$pageRange,
          "currentPage"=>$currentPage   
        );           
        $pagination=new PaginationModel($arrPagination);
        $position   = ((int)@$arrPagination['currentPage']-1)*$totalItemsPerPage;        
        $data=DB::table('project')                
                ->select('project.id','project.alias','project.fullname','project.image','project.intro','project.count_view')                
                ->where('project.status',1)     
                ->groupBy('project.id','project.alias','project.fullname','project.image','project.intro','project.count_view')
                ->orderBy('project.created_at', 'desc')
                ->skip($position)
                ->take($totalItemsPerPage)
                ->get()->toArray();                   
        $items=convertToArray($data);   
      $layout="two-column";     
      break;
      case 'project':
      $row=ProjectModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();              
      if(count($row) > 0){
        $item=$row[0];
      }  
      $layout="two-column";  
      break;
      case 'project-article':
      $row=ProjectArticleModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();              
      if(count($row) > 0){
        $item=$row[0];
      }  
      $layout="two-column";  
      break;
      case 'supporter':            
      $meta_keyword="metakeyword tiếp lửa";
      $meta_description="metadescription tiếp lửa";     
      $data=DB::table('supporter')  
                ->join('payment_method','supporter.payment_method_id','=','payment_method.id')              
                ->select('supporter.id')                
                ->where('supporter.status',1)                     
                ->groupBy('supporter.id')                        
                ->get()->toArray();              
        $data=convertToArray($data);     
        $totalItems=count($data);
        $totalItemsPerPage=(int)@$setting['article_perpage']['field_value']; 
        $pageRange=$this->_pageRange;
        if(!empty(@$request->filter_page)){
          $currentPage=@$request->filter_page;
        }       
        $arrPagination=array(
          "totalItems"=>$totalItems,
          "totalItemsPerPage"=>$totalItemsPerPage,
          "pageRange"=>$pageRange,
          "currentPage"=>$currentPage   
        );           
        $pagination=new PaginationModel($arrPagination);
        $position   = ((int)@$arrPagination['currentPage']-1)*$totalItemsPerPage;        
        $data=DB::table('supporter')  
                ->join('payment_method','supporter.payment_method_id','=','payment_method.id')              
                ->select('supporter.id','supporter.fullname','supporter.number_money','payment_method.fullname as payment_method_name','supporter.sort_order','supporter.status','supporter.created_at','supporter.updated_at')                
                ->where('supporter.status',1)                     
                ->groupBy('supporter.id','supporter.fullname','supporter.number_money','payment_method.fullname','supporter.sort_order','supporter.status','supporter.created_at','supporter.updated_at')
                ->orderBy('supporter.created_at', 'desc')  
                ->skip($position)
                ->take($totalItemsPerPage)              
                ->get()->toArray();              
        $items=convertToArray($data); 
        $layout="two-column";  
      break;
      case 'organizations':      
      $meta_keyword="metakeyword danh bạ";
      $meta_description="metadescription danh bạ";     
      $data=DB::table('organization')                      
                ->select('organization.id')                
                ->where('organization.status',1)                     
                ->groupBy('organization.id')                        
                ->get()->toArray();              
        $data=convertToArray($data);     
        $totalItems=count($data);
        $totalItemsPerPage=(int)@$setting['article_perpage']['field_value']; 
        $pageRange=$this->_pageRange;
        if(!empty(@$request->filter_page)){
          $currentPage=@$request->filter_page;
        }       
        $arrPagination=array(
          "totalItems"=>$totalItems,
          "totalItemsPerPage"=>$totalItemsPerPage,
          "pageRange"=>$pageRange,
          "currentPage"=>$currentPage   
        );           
        $pagination=new PaginationModel($arrPagination);
        $position   = ((int)@$arrPagination['currentPage']-1)*$totalItemsPerPage;        
        $data=DB::table('organization')                  
                ->select('organization.id','organization.fullname','organization.alias','organization.intro','organization.image','organization.phone','organization.email','organization.website','organization.sort_order','organization.status','organization.created_at','organization.updated_at')                
                ->where('organization.status',1)                                
                ->groupBy('organization.id','organization.fullname','organization.alias','organization.intro','organization.image','organization.phone','organization.email','organization.website','organization.sort_order','organization.status','organization.created_at','organization.updated_at')   
                ->orderBy('organization.sort_order', 'asc')                
                ->skip($position)
                ->take($totalItemsPerPage)              
                ->get()->toArray();                     
        $items=convertToArray($data); 
        $layout="two-column";  
      break;
      case 'organization':
      $row=OrganizationModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();              
      if(count($row) > 0){
        $item=$row[0];
      }         
      $layout="two-column";  
      break;
      case 'categories-album':            
      $meta_keyword="metakeyword album";
      $meta_description="metadescription album";     
      $data=DB::table('album')                      
                ->select('album.id')                
                ->where('album.status',1)                     
                ->groupBy('album.id')                        
                ->get()->toArray();              
        $data=convertToArray($data);     
        $totalItems=count($data);
        $totalItemsPerPage=16; 
        $pageRange=$this->_pageRange;
        if(!empty(@$request->filter_page)){
          $currentPage=@$request->filter_page;
        }       
        $arrPagination=array(
          "totalItems"=>$totalItems,
          "totalItemsPerPage"=>$totalItemsPerPage,
          "pageRange"=>$pageRange,
          "currentPage"=>$currentPage   
        );           
        $pagination=new PaginationModel($arrPagination);
        $position   = ((int)@$arrPagination['currentPage']-1)*$totalItemsPerPage;        
        $query=DB::table('album');              
        $query->where('album.status',1);     
        $data=$query->select('album.id','album.fullname','album.alias','album.image','album.sort_order','album.status','album.created_at','album.updated_at')
        ->groupBy('album.id','album.fullname','album.alias','album.image','album.sort_order','album.status','album.created_at','album.updated_at')
        ->orderBy('album.sort_order', 'asc')
        ->skip($position)
                ->take($totalItemsPerPage)
                ->get()->toArray();
      $items=convertToArray($data);
      $layout="full-width";            
      break;
      case 'album':            
      $meta_keyword="metakeyword photo";
      $meta_description="metadescription photo";   
      $category_id=0;
      $category=AlbumModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();        
      if(count($category) > 0){
        $category     = $category[0];
        $category_id    = $category['id'];        
        $arr_category_id[]=$category_id;        
        $data=DB::table('photo')                      
        ->select('photo.id')                
        ->where('photo.status',1)   
        ->whereIn('photo.album_id', $arr_category_id)                  
        ->groupBy('photo.id')                        
        ->get()->toArray();              
        $data=convertToArray($data);         
        $totalItems=count($data);
        $totalItemsPerPage=400; 
        $pageRange=$this->_pageRange;
        if(!empty(@$request->filter_page)){
          $currentPage=@$request->filter_page;
        }       
        $arrPagination=array(
          "totalItems"=>$totalItems,
          "totalItemsPerPage"=>$totalItemsPerPage,
          "pageRange"=>$pageRange,
          "currentPage"=>$currentPage   
        );           
        $pagination=new PaginationModel($arrPagination);
        $position   = ((int)@$arrPagination['currentPage']-1)*$totalItemsPerPage;        
        $query=DB::table('photo');              
        $query->where('photo.status',1);
        $query->whereIn('photo.album_id', $arr_category_id);     
        $data=$query->select('photo.id','photo.image')
        ->groupBy('photo.id','photo.image')
        ->orderBy('photo.sort_order', 'asc')
        ->skip($position)
        ->take($totalItemsPerPage)
        ->get()->toArray();
        $items=convertToArray($data);        
      }      
      $layout="full-width";            
      break;
      case 'category-video':            
      $category_id=0;
      $category=CategoryVideoModel::whereRaw("trim(lower(alias)) = ?",[trim(mb_strtolower($alias,'UTF-8'))])->get()->toArray();        
      if(count($category) > 0){
        $category     = $category[0];
        $category_id    = $category['id'];        
        $arr_category_id[]=$category_id;        
        $data=DB::table('video')                      
        ->select('video.id')                
        ->where('video.status',1)   
        ->whereIn('video.category_id', $arr_category_id)                  
        ->groupBy('video.id')                        
        ->get()->toArray();              
        $data=convertToArray($data);         
        $totalItems=count($data);
        $totalItemsPerPage=400; 
        $pageRange=$this->_pageRange;
        if(!empty(@$request->filter_page)){
          $currentPage=@$request->filter_page;
        }       
        $arrPagination=array(
          "totalItems"=>$totalItems,
          "totalItemsPerPage"=>$totalItemsPerPage,
          "pageRange"=>$pageRange,
          "currentPage"=>$currentPage   
        );           
        $pagination=new PaginationModel($arrPagination);
        $position   = ((int)@$arrPagination['currentPage']-1)*$totalItemsPerPage;        
        $query=DB::table('video');              
        $query->where('video.status',1);
        $query->whereIn('video.category_id', $arr_category_id);     
        $data=$query->select('video.id','video.fullname','video.image','video.video_url')
        ->groupBy('video.id','video.fullname','video.image','video.video_url')
        ->orderBy('video.sort_order', 'asc')
        ->skip($position)
        ->take($totalItemsPerPage)
        ->get()->toArray();
        $items=convertToArray($data);        
      }      
      $layout="full-width";            
      break;
    }      
    if(count($menu) > 0){
      $menu=convertToArray($menu);
      $title=$menu[0]['fullname'];
    }      
    if(count($item) > 0){
      $title=$item['fullname'];                      
      if(!empty($item['meta_keyword'])){
        $meta_keyword=$item['meta_keyword'];
      }                
      if(!empty($item['meta_description'])){
        $meta_description=$item['meta_description'];
      }                
    }         
    if(count($category) > 0){      
      $title=$category['fullname'];                         
      if(!empty($category['meta_keyword'])){
        $meta_keyword=$category['meta_keyword'];
      }                
      if(!empty($category['meta_description'])){
        $meta_description=$category['meta_description'];
      }
    }      
    $breadcrumb='';              
    $breadcrumb= getBreadcrumb($alias);                       
    return view("frontend.index",compact("component","alias","title","meta_keyword","meta_description","item","items","pagination","layout","breadcrumb"));                            
  }
      function addCart(){          
          $product_id=(int)($_POST["product_id"]);
          $product_code=$_POST["product_code"];
          $product_name=$_POST["product_name"];
          $product_alias=$_POST["product_alias"];
          $product_image=$_POST["product_image"];
          $product_price=(float)($_POST["product_price"]);
          $product_quantity=(int)($_POST["product_quantity"]);          
          $ssCart=array();
          $arrCart=array();
          if(Session::has($this->_ssNameCart)){
            $ssCart=Session::get($this->_ssNameCart);
          }         
          $arrCart = @$ssCart["cart"];                   
          if($product_id > 0){            
              if(count($arrCart) == 0){
                $arrCart[$product_id]["product_quantity"] = $product_quantity;
              }
              else{
                    if(!isset($arrCart[$product_id])){
                      $arrCart[$product_id]["product_quantity"] = $product_quantity;                 
                    }                        
                    else{
                      $arrCart[$product_id]["product_quantity"] = $arrCart[$product_id]["product_quantity"] + $product_quantity;                  
                    }                               
              }
              $arrCart[$product_id]["product_id"]=$product_id;  
              $arrCart[$product_id]["product_code"]=$product_code;
              $arrCart[$product_id]["product_name"]=$product_name;
              $arrCart[$product_id]["product_alias"]=$product_alias;      
              $arrCart[$product_id]["product_image"]=$product_image;          
              $arrCart[$product_id]["product_price"]=$product_price;                      
              $product_quantity=(int)$arrCart[$product_id]["product_quantity"];
              $product_total_price=$product_price * $product_quantity;
              $arrCart[$product_id]["product_total_price"]=($product_total_price);
              $cart["cart"]=$arrCart;                    
              Session::put($this->_ssNameCart,$cart);                                        
          }    
      }
      public function viewCart(Request $request){   
          $layout="two-column";                      
        if(!empty(@$request->action)){
            $action=@$request->action;
            switch ($action) {
              case "update-cart"     :  $this->updateCart();
              break;                  
            }
        }            
        return view("frontend.index",compact("layout"));
      }
      public function contact(Request $request){   
        $flag=1;
        $error=array();
        $data=array();
        $success=array();           
        $layout="full-width";     
        $component='contact';
        $alias="lien-he";   
        if($request->isMethod('post'))     {  
          $data=$request->all();                    
          $fullname   = @$request->fullname;
          $email      = @$request->email;   
          $telephone  = @$request->telephone;
          $title      = @$request->title;
          $address    = @$request->address;
          $content    = @$request->content;
          /* begin load config contact */
          $setting=getSettingSystem();    
          $smtp_host      = @$setting['smtp_host']['field_value'];
          $smtp_port      = @$setting['smtp_port']['field_value'];
          $smtp_auth      = @$setting['authentication']['field_value'];
          $encription     = @$setting['encription']['field_value'];
          $smtp_username  = @$setting['smtp_username']['field_value'];
          $smtp_password  = @$setting['smtp_password']['field_value'];
          $email_from     = $email;
          $email_to       = @$setting['email_to']['field_value'];
          $contacted_person = @$setting['contacted_person']['field_value'];          
          /* end load config contact */       
          if(mb_strlen($fullname) < 6){
            $error["fullname"] = 'Họ tên phải chứa từ 6 ký tự trở lên';
            $data["fullname"] = "";          
            $flag=0;
          }
          if(!preg_match("#^[a-z][a-z0-9_\.]{4,31}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$#",$email )){
            $error["email"] = 'Email không hợp lệ';
            $data["email"] = '';
            $flag=0;
          }
          if(mb_strlen($telephone) < 10){
            $error["telephone"] = 'Số điện thoại không hợp lệ';
            $data["telephone"] = "";          
            $flag=0;
          }
          if(mb_strlen($title) < 10){
            $error["title"] = 'Tiêu đề không hợp lệ';
            $data["title"] = "";         
            $flag=0;
          }   
          if(mb_strlen($address) < 10){
            $error["address"] = 'Địa chỉ không hợp lệ';
            $data["address"] = "";         
            $flag=0;
          }   
          if(mb_strlen($content) < 10){
            $error["content"] = 'Nội dung không hợp lệ';
            $data["content"] = "";         
            $flag=0;
          }     
          if((int)@$flag==1){
            $mail = new PHPMailer(true);
            try{
              $mail->SMTPDebug = 2;                           
              $mail->isSMTP();     
              $mail->CharSet = "UTF-8";                           
              $mail->Host = $smtp_host; 
              $mail->SMTPAuth = $smtp_auth;                         
              $mail->Username = $smtp_username;             
              $mail->Password = $smtp_password;             
              $mail->SMTPSecure = $encription;                       
              $mail->Port = $smtp_port;                            
              $mail->setFrom($email_from, $fullname);
              $mail->addAddress($email_to, $contacted_person);   
              $mail->Subject = 'Thông tin liên hệ từ khách hàng '.$fullname.' - '.$telephone ;   
              $html_content='';     
              $html_content .='<table border="1" cellspacing="5" cellpadding="5">';
              $html_content .='<thead>';
              $html_content .='<tr>';
              $html_content .='<th colspan="2"><h3>Thông tin liên lạc từ khách hàng '.$fullname.'</h3></th>';
              $html_content .='</tr>';
              $html_content .='</thead>';
              $html_content .='<tbody>';

              $html_content .='<tr><td>Họ và tên</td><td>'.$fullname.'</td></tr>';
              $html_content .='<tr><td>Email</td><td>'.$email.'</td></tr>';
              $html_content .='<tr><td>Telephone</td><td>'.$telephone.'</td></tr>';
              $html_content .='<tr><td>Tiêu đề</td><td>'.$title.'</td></tr>';
              $html_content .='<tr><td>Địa chỉ</td><td>'.$address.'</td></tr>';
              $html_content .='<tr><td>Nội dung</td><td>'.$content.'</td></tr>';          

              $html_content .='</tbody>';
              $html_content .='</table>';                            
              $mail->msgHTML($html_content);
              if ($mail->Send()) {                
                $success['success']='Gửi thông tin hoàn tất'; 
                echo '<script language="javascript" type="text/javascript">alert("Gửi thông tin hoàn tất");</script>'; 
              }
              else{
                $error["exception_error"]='Quá trình gửi dữ liệu gặp sự cố'; 
                echo '<script language="javascript" type="text/javascript">alert("Có sự cố trong quá trình gửi dữ liệu");</script>'; 
              }
            }catch (Exception $e){
              $error["exception_error"]='Quá trình gửi dữ liệu gặp sự cố'; 
              echo '<script language="javascript" type="text/javascript">alert("Có sự cố trong quá trình gửi dữ liệu");</script>'; 
            }            
          }        
        }        
        return view("frontend.index",compact("component","error","data","success","alias","layout"));        
      }
      public function loadDataMember(Request $request){
      	$project_id=0;
      	if(!empty($request->project_id))      	{
      		$project_id=(int)@$request->project_id;
      	}
      	$data=DB::table('customer')
				->join('project_member','customer.id','=','project_member.member_id')
				->select('customer.id','customer.fullname','customer.email','customer.mobilephone','customer.address')
				->where('project_member.project_id',(int)@$project_id)
				->groupBy('customer.id','customer.fullname','customer.email','customer.mobilephone','customer.address')
        ->orderBy('project_member.created_at','desc')
				->get()->toArray();
				$data=convertToArray($data);			
      	$data=memberConverter($data);		         
      	return $data;
      }
      public function loadDataSupporter(Request $request){
        $project_id=0;
        if(!empty($request->project_id))        {
          $project_id=(int)@$request->project_id;
        }
        $data=DB::table('supporter')  
                ->join('payment_method','supporter.payment_method_id','=','payment_method.id')              
                ->select('supporter.id','supporter.fullname','supporter.number_money','payment_method.fullname as payment_method_name','supporter.sort_order','supporter.status','supporter.created_at','supporter.updated_at')                
                ->where('supporter.status',1)                     
                ->groupBy('supporter.id','supporter.fullname','supporter.number_money','payment_method.fullname','supporter.sort_order','supporter.status','supporter.created_at','supporter.updated_at')
                ->orderBy('supporter.created_at', 'desc')                
                ->get()->toArray();              
        $data=convertToArray($data);     
        $data=supporterTiepluaConverter($data);            
        return $data;
      }
      public function deleteAll(){          
          if(Session::has($this->_ssNameCart)){
            Session::forget($this->_ssNameCart);
          }                   
          return redirect()->route('frontend.index.viewCart'); 
      }
      public function delete($id){          
          $ssCart=array();
          $arrCart=array();
          if(Session::has($this->_ssNameCart)){
                $ssCart=Session::get($this->_ssNameCart);
          }         
          $arrCart = @$ssCart["cart"];      
          unset($arrCart[$id]);    
          $cart["cart"]=$arrCart;                    
          Session::put($this->_ssNameCart,$cart);             
          return redirect()->route('frontend.index.viewCart'); 
      }

      public function register(Request $request){     
        $flag=1;
        $error=array();
        $success=array();  
        $data=array();        
        $component="register";    
        $layout="two-column";      
        if($request->isMethod('post')){                          
          $data             =   $request->all();     
          $username         =   trim(@$request->username) ;    
          $password         =   @$request->password ;
          $password_confirm =   @$request->password_confirm;
          $email            =   trim(@$request->email) ;
          $fullname         =   trim(@$request->fullname);
          $address          =   trim(@$request->address);
          $phone            =   trim(@$request->phone);           
          $group_member_id  =   trim(@$request->group_member_id) ;         
          if(mb_strlen($username) < 6){
            $error["username"] = 'Username phải từ 6 ký tự trở lên';
            $data["username"] = ""; 
            $flag = 0;
          }else{
            $customer=User::whereRaw("trim(lower(username)) = ?",[trim(mb_strtolower($username,'UTF-8'))])->get()->toArray();
            if(count($customer) > 0){
              $error["username"] = 'Username đã tồn tại';
              $data["username"] = ""; 
              $flag = 0;
            }  
          }
          if(mb_strlen($password) < 6){
            $error["password"] = 'Mật khẩu phải có độ dài từ 6 ký tự trở lên';
            $data["password"] = "";
            $data["password_confirm"] = ""; 
            $flag = 0;
          }else{
            if(strcmp($password , $password_confirm) != 0 ){
              $error["password_confirm"] = 'Mật khẩu xác nhận phải trùng khớp';
              $data["password_confirm"] = "";   
              $flag = 0;
            }
          }              
          if(!preg_match("#^[a-z][a-z0-9_\.]{4,31}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$#", mb_strtolower($email,'UTF-8')   )){
            $error["email"] = 'Email không hợp lệ';
            $data["email"] = '';
            $flag = 0;
          }else{
            $customer=User::whereRaw("trim(lower(email)) = ?",[mb_strtolower($email,'UTF-8')])->get()->toArray();
            if(count($customer) > 0){
              $error["email"] = 'Email đã tồn tại';
              $data["email"] = ""; 
              $flag = 0;
            }
          }  
          if(mb_strlen($fullname) < 6){
            $error["fullname"] = 'Họ tên phải từ 6 ký tự trở lên';
            $data["fullname"] = ""; 
            $flag = 0;
          }  
          if(mb_strlen($address) < 6){
            $error["address"] = 'Địa chỉ phải từ 6 ký tự trở lên';
            $data["address"] = ""; 
            $flag = 0;
          }  
          if(mb_strlen($phone) < 10){
              $error["phone"] = 'Số điện thoại phải từ 10 ký tự trở lên';
              $data["phone"] = ""; 
              $flag = 0;
            }                    
          if($flag==1){

            $user=Sentinel::registerAndActivate($request->all());                  
            $item=new UserGroupMemberModel;
            $item->group_member_id=(int)@$group_member_id;
            $item->user_id=(int)@$user->id;      
            $item->created_at=date("Y-m-d H:i:s",time());
            $item->updated_at=date("Y-m-d H:i:s",time());
            $item->save();                        
            Sentinel::loginAndRemember($user);                        
            echo '<script language="javascript" type="text/javascript">alert("Đăng ký thành công")</script>';
            return redirect()->route('frontend.index.viewAccount');                        
          }              
        }
        return view("frontend.index",compact("component","error","data","success","layout"));         
      }
      public function joinProject(Request $request){        
        $info                 =   array();
        $data                 =   array();
        $msg                  =   "";        
        $checked              =   1;           
        $arrUser=array();           
        
        if($request->isMethod('post')){
          $project_id=$request->project_id;          
          $project_alias=$request->project_alias;
          $linkLogin='<span class="login-join-project"><a href="'.route('frontend.index.loginJoinProject',[$project_alias]).'" >tại đây</a></span>';
          $user = Sentinel::forceCheck(); 
          if(!empty($user)){                
            $arrUser = $user->toArray();    
          }                
          if(count($arrUser)==0){
            $checked=0;
            $msg='Bạn chưa đăng nhập. Vui lòng đăng nhập '.$linkLogin.' để được tham gia';            
          }
          if($checked == 1){
            $msg='Chúc mừng bạn đã tham gia dự án của chúng tôi';
            $member_id=(int)@$arrUser["id"];
            $project=ProjectModel::whereRaw('alias = ?',[@$project_alias])->select('id','fullname','alias')->get()->toArray();
            $project_id=$project[0]['id'];            
            $item 				= 	new ProjectMemberModel;       
            $item->project_id 	=	(int)@$project_id;
            $item->member_id 	=	(int)@$member_id;
            $item->created_at 	=	date("Y-m-d H:i:s",time());
            $item->updated_at 	=	date("Y-m-d H:i:s",time());
            $item->save();
          }
        }        
        $data= $this->loadDataMember($request);
        $info=array(
          "msg"=>$msg,
          "dulieu"=>$data,
          "checked"=>$checked
        );
        return $info;
      }
      public function login(Request $request){   
        $flag=1;
        $error=array();
        $success=array();   
        $data=array();        
        $component="login";                
        $layout="two-column";     
        $arrUser=array();              
        $user = Sentinel::forceCheck();         
        if(!empty($user)){                
          $arrUser = $user->toArray();    
        }      
        if(count($arrUser) > 0){
          return redirect()->route('frontend.index.viewAccount');
        }
        if($request->isMethod('post')){              
          Sentinel::authenticate($request->all());
          if(Sentinel::check()){
            $user=Sentinel::getUser();     
            
            echo '<script language="javascript" type="text/javascript">alert("Đăng nhập thành công")</script>';
            return redirect()->route('frontend.index.viewAccount'); 
          }else{
            $error["dang-nhap"]="Đăng nhập sai username và password";
          }          
        }                
        return view("frontend.index",compact("component","error","data","success","layout"));        
      }      
      public function loginJoinProject(Request $request){   
        $flag=1;
        $error=array();
        $success=array();   
        $data=array();        
        $component="login-join-project";
        $alias="dang-nhap-tham-gia";   
        $layout="two-column";  
        $arrUser=array();      
        $project_alias=$request->project_alias;        
        if($request->isMethod('post')){              
          Sentinel::authenticate($request->all());
          if(Sentinel::check()){
            $user=Sentinel::getUser();        
            $member_id=(int)@$user->id;            
            $project=ProjectModel::whereRaw('alias = ?',[@$project_alias])->select('id','fullname','alias')->get()->toArray();
            $project_id=$project[0]['id'];
            $data_project_member=ProjectMemberModel::whereRaw('project_id = ? and member_id = ?',[(int)@$project_id,(int)@$member_id])->select('id')->get()->toArray();
            if(count($data_project_member) == 0){
              $item         =   new ProjectMemberModel;       
              $item->project_id   = (int)@$project_id;
              $item->member_id  = (int)@$member_id;
              $item->created_at   = date("Y-m-d H:i:s",time());
              $item->updated_at   = date("Y-m-d H:i:s",time());
              $item->save();
            }                        
            echo '<script language="javascript" type="text/javascript">alert("Đăng nhập thành công")</script>';
            return redirect()->route('frontend.index.index',[$project_alias]);
          }else{
            $error["dang-nhap"]="Đăng nhập sai username và password";
          }              
        }        
        if(Session::has($this->_ssNameUser)){                
          $arrUser = Session::get($this->_ssNameUser)["userInfo"];    
        }   
        if(count($arrUser) > 0){
          return redirect()->route("frontend.index.viewAccount"); 
        }
        return view("frontend.index",compact("component","alias","error","data","success","layout"));        
      }
      public function viewSecurity(Request $request){
        $flag=1;
        $error=array();
        $success=array();   
        $data=array();        
        $component="security";   
        $layout="two-column";        
        $arrUser=array();              
        $user = Sentinel::forceCheck(); 
        if(!empty($user)){                
          $arrUser = $user->toArray();    
        }      
        if(count($arrUser) == 0){
          return redirect()->route("frontend.index.login"); 
        }
        $data=User::find((int)@$arrUser["id"])->toArray();    
        $id=(int)@$data["id"];
        if($request->isMethod('post')){              
          $data =@$request->all();                     
          $password=@$request->password ;
          $password_confirm=@$request->password_confirm ;                
          if(mb_strlen($password) < 6){
            $error["password"] = 'Độ dài mật khẩu phải lớn hơn hoặc bằng 6';
            $data["password"] = "";
            $data["password_confirm"] = ""; 
            $flag = 0;
          }
          if(strcmp($password,$password_confirm)!=0){
            $error["password_confirm"] = 'Mật khẩu xác nhận không khớp';
            $data["password_confirm"] = "";   
            $flag = 0;
          }    
          if($flag==1){
            $item=User::find($id);                         
            $item->password         = Hash::make(@$request->password);
            $item->save();  
            $success['update-password']="Cập nhật mật khẩu thành công";                                                           
          }              
        }             
        return view("frontend.index",compact("component","error","data","success","layout"));                      
      }
      public function getLgout(){               
        Sentinel::logout();               
        return redirect()->route('frontend.index.login'); 
      }
      public function viewAccount(Request $request){        
        $flag=1;
        $error=array();
        $success=array();   
        $data=array();        
        $component="account";   
        $layout="two-column";       
        $id=0;         
        $arrUser=array();              
        $user = Sentinel::forceCheck(); 
        if(!empty($user)){                
          $arrUser = $user->toArray();    
        }      
        if(count($arrUser) == 0){
          return redirect()->route("frontend.index.login"); 
        }        
        $data=User::find((int)@$arrUser['id'])->toArray();    
        $id=(int)@$data["id"];                  
        if($request->isMethod('post')){                          
          $data             =   $request->all();                         
          $email            =   trim(@$request->email) ;
          $fullname         =   trim(@$request->fullname);
          $address          =   trim(@$request->address);
          $phone            =   trim(@$request->phone);                                           
          if(!preg_match("#^[a-z][a-z0-9_\.]{4,31}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$#", mb_strtolower($email,'UTF-8')   )){
            $error["email"] = 'Email không hợp lệ';
            $data["email"] = '';
            $flag = 0;
          }else{
            $customer=User::whereRaw("trim(lower(email)) = ? and id != ? ",[mb_strtolower($email,'UTF-8'),(int)@$id])->get()->toArray();
            if(count($customer) > 0){
              $error["email"] = 'Email đã tồn tại';
              $data["email"] = ""; 
              $flag = 0;
            }
          }  
          if(mb_strlen($fullname) < 6){
            $error["fullname"] = 'Họ tên phải từ 6 ký tự trở lên';
            $data["fullname"] = ""; 
            $flag = 0;
          }  
          if(mb_strlen($address) < 6){
            $error["address"] = 'Địa chỉ phải từ 6 ký tự trở lên';
            $data["address"] = ""; 
            $flag = 0;
          }  
          if(mb_strlen($phone) < 10){
              $error["phone"] = 'Số điện thoại phải từ 10 ký tự trở lên';
              $data["phone"] = ""; 
              $flag = 0;
            }               
          if($flag==1){
            $item               =   User::find((int)@$id);            
            $item->email        =   $email;
            $item->fullname     =   $fullname;
            $item->address      =   $address;
            $item->phone        =   $phone;            
            $item->created_at   =   date("Y-m-d H:i:s",time());
            $item->updated_at   =   date("Y-m-d H:i:s",time());
            $item->save(); 
            echo '<script language="javascript" type="text/javascript">alert("Cập nhật thông tin thành công")</script>';   
            return redirect()->route("frontend.index.viewAccount");                    
          }              
        }
        return view("frontend.index",compact("component","error","data","success","layout"));         
      }
      public function checkout(){          
        $arrUser=array();              
        $user = Sentinel::forceCheck(); 
        if(!empty($user)){                
          $arrUser = $user->toArray();    
        }              
        if(count($arrUser) > 0){
          $link="frontend.index.confirmCheckout";
        }else{
          $link="frontend.index.loginCheckout";
        }
        return redirect()->route($link); 
      }
      public function confirmCheckout(Request $request){
        
            $layout="two-column";   
            $error=array();
            $data =array();
            $arrUser=array();              
            $flag = 1;               
            $id=0;            
            if(Session::has($this->_ssNameUser)){                
                $arrUser = Session::get($this->_ssNameUser)["userInfo"];    
            }   
            if(count($arrUser) == 0){
              return redirect()->route("frontend.index.loginCheckout");               
            }                
            $arrCart=array();
            if(Session::has($this->_ssNameCart)){
              $arrCart=Session::get($this->_ssNameCart)["cart"];
            } 
            if(count($arrCart) == 0){
              return redirect()->route("frontend.index.viewCart");   
            }      
              $data=CustomerModel::find((int)$arrUser["id"])->toArray();    
              $id=(int)$data["id"];
              if(!empty(@$request->action)){              
                  $data =$request->all();                   
                  $email=trim(@$request->email) ;   
                  $payment_method=trim(@$request->payment_method);                                 
                  if(!preg_match("#^[a-z][a-z0-9_\.]{4,31}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$#",$email )){
                    $error["email"] = 'Email is invalid';
                    $data["email"] = '';
                    $flag = 0;
                  }else{
                    $arrRowData=CustomerModel::whereRaw("trim(lower(email)) = ? and id != ? ",[trim(mb_strtolower($email,'UTF-8')),(int)$id])->get()->toArray();
                  if(count($arrRowData) > 0){
                    $error["email"] = 'Email đã tồn tại';
                    $data["email"] = ""; 
                    $flag = 0;
                  }
                  }
                  if((int)$payment_method==0){
                      $error["payment_method"] = 'Xin vui lòng chọn 1 phương thức thanh toán';                      
                      $flag = 0;
                  }                                    
                  if($flag==1){                    
                      $item = new InvoiceModel;
                      $item->code=randomString(20);
                      $item->customer_id  =$id;
                      $item->username  =$data["username"];
                      $item->email=@$request->email;
                      $item->fullname=@$request->fullname;
                      $item->address=@$request->address;
                      $item->phone=@$request->phone;
                      $item->mobilephone=@$request->mobilephone;
                      
                      $item->payment_method_id=(int)$payment_method;
                      $item->quantity=(int)@$request->quantity;
                      $item->total_price=(float)@$request->total_price;
                      $item->status=0;  
                      $item->sort_order=1;
                      $item->created_at=date("Y-m-d H:i:s",time());
                      $item->updated_at=date("Y-m-d H:i:s",time());
                      $item->save();                           
                      $arrCart=array();
                      if(Session::has($this->_ssNameCart)){
                        $arrCart=Session::get($this->_ssNameCart)["cart"];
                      }         
                      if(count($arrCart) > 0){
                        foreach ($arrCart as $key => $value) {
                          $invoice_id=$item->id;
                          $product_id=$value["product_id"];    
                          $product_code=$value["product_code"];  
                          $product_name=$value["product_name"];                                                    
                          $product_image=   $value["product_image"] ;        
                          $product_price=$value["product_price"];                                  
                          $product_quantity=$value["product_quantity"];                         
                          $product_total_price=$value["product_total_price"];
                          $itemInvoiceDetail=new InvoiceDetailModel;                          
                          $itemInvoiceDetail->invoice_id=$invoice_id;
                          $itemInvoiceDetail->product_id=$product_id;
                          $itemInvoiceDetail->product_code=$product_code;
                          $itemInvoiceDetail->product_name=$product_name;
                          $itemInvoiceDetail->product_image=$product_image;
                          $itemInvoiceDetail->product_price=$product_price;
                          $itemInvoiceDetail->product_quantity=$product_quantity;
                          $itemInvoiceDetail->product_total_price=$product_total_price;
                          $itemInvoiceDetail->created_at=date("Y-m-d H:i:s",time());
                          $itemInvoiceDetail->updated_at=date("Y-m-d H:i:s",time());
                          $itemInvoiceDetail->save();
                        }
                      }                           
                      if(Session::has($this->_ssNameCart)){
                        Session::forget($this->_ssNameCart);
                      }                   
                      $component="hoan-tat-thanh-toan";                      
                  }                         
              }
              $data_paymentmethod=PaymentMethodModel::whereRaw('status = 1')->get()->toArray();
              $data_paymentmethod[]=array(
                                              'id'=>0,
                                              'fullname'=>null,
                                              'alias'=>null,
                                              'content'=>null,
                                              'sort_order'=>1,
                                              'status'=>1,

                                        );
              return view("frontend.index",compact("arrError","arrData","data_paymentmethod","layout"));                 
      }      
      public function loginCheckout(Request $request){
           
            $layout="two-column";
            $error=array();
            $data =array();   
            $flag = 1;   
            $arrUser=array();
            $customer=array();                            
            $arrCart=array();
            if(Session::has($this->_ssNameCart)){
              $arrCart=Session::get($this->_ssNameCart)["cart"];
            } 
            if(count($arrCart)==0){
              return redirect()->route("frontend.index.viewCart");   
            }       
            if(!empty(@$request->action)){
              $action=@$request->action;
              switch ($action) {
                case "register-checkout": 
                  $data =@$request->all();           
                  $username=trim(@$request->username) ;         
                  $password=@$request->password ;
                  $password_confirm=@$request->password_confirm ;
                  $email=trim(@$request->email) ;                  

                  if(mb_strlen($username) < 6){
                    $error["username"] = 'Username phải có độ dài lớn hơn hoặc bằng 6 ký tự';
                    $data["username"] = ""; 
                    $flag = 0;
                  }else{
                    $customer=CustomerModel::whereRaw("trim(lower(username)) = ?",[trim(mb_strtolower($username,'UTF-8'))])->get()->toArray();
                    if(count($customer) > 0){
                      $error["username"] = 'Username đã tồn tại';
                      $data["username"] = ""; 
                      $flag = 0;
                    }  
                  }

                  if(mb_strlen($password) < 6){
                    $error["password"] = 'Password phải có độ dài lớn hơn hoặc bằng 6 ký tự';
                    $data["password"] = "";
                    $data["password_confirm"] = ""; 
                    $flag = 0;
                  }else{
                    if(strcmp(mb_strtolower($password,'UTF-8') , mb_strtolower($password_confirm,'UTF-8')) != 0 ){
                      $error["password_confirm"] = 'PasswordConfirm does not matched Password';
                      $data["password_confirm"] = "";   
                      $flag = 0;
                    }
                  }              

                  if(!preg_match("#^[a-z][a-z0-9_\.]{4,31}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$#", mb_strtolower($email,'UTF-8')   )){
                    $error["email"] = 'Email is invalid';
                    $data["email"] = '';
                    $flag = 0;
                  }else{
                    $customer=CustomerModel::whereRaw("trim(lower(email)) = ?",[trim(mb_strtolower($email,'UTF-8'))])->get()->toArray();
                    if(count($customer) > 0){
                      $error["email"] = 'Email đã tồn tại';
                      $data["email"] = ""; 
                      $flag = 0;
                    }
                  }                   
                  if($flag==1){
                      $item               =   new CustomerModel;
                      $item->username     =   trim(@$request->username);
                      $item->password     =   md5(@$request->password) ;
                      $item->email        =   trim(@$request->email);
                      $item->fullname     =   trim(@$request->fullname);
                      $item->address      =   trim(@$request->address);
                      $item->phone        =   trim(@$request->phone);
                      $item->mobilephone  =   trim(@$request->mobilephone);
                      
                      $item->status       =   1;  
                      $item->sort_order   =   1;  
                      $item->created_at   =   date("Y-m-d H:i:s",time());
                      $item->updated_at   =   date("Y-m-d H:i:s",time());
                      $item->save(); 
                      $customer        =   CustomerModel::whereRaw("trim(lower(username)) = ?",[trim(mb_strtolower($username,'UTF-8'))])->get()->toArray();
                      $arrUser["userInfo"]=array("username" => $customer[0]["username"],"id"=>$customer[0]["id"]);                                                    
                      Session::put($this->_ssNameUser,$arrUser);   
                      return redirect()->route('frontend.index.confirmCheckout');                        
                  }                               
                  break;
                case "login-checkout":
                  $username=trim(@$request->username);   
                  $password=md5(@$request->password);              
                  $customer=CustomerModel::whereRaw("trim(lower(username)) = ? and lower(password) = ?",[trim(mb_strtolower($username,'UTF-8')),mb_strtolower($password,'UTF-8')])->get()->toArray()  ;                  
                  if(count($customer) > 0){
                    $arrUser["userInfo"]=array("username" => $customer[0]["username"],"id"=>$customer[0]["id"]);                                                  
                    Session::put($this->_ssNameUser,$arrUser);  
                    return redirect()->route('frontend.index.confirmCheckout'); 
                  }else{
                    $error["dang-nhap"]="Đăng nhập sai username và password";
                  }                   
                  break;                
              }
            }            
            return view("frontend.index",compact("arrError","arrData","layout"));  
      }
      public function getInvoice(){
      $layout="two-column";         
        $error=array();
        $data =array();   
        $arrUser=array();
        $customer=array();
        $flag = 1;                 
        $id=0;                
        if(Session::has($this->_ssNameUser)){                
                $arrUser = Session::get($this->_ssNameUser)["userInfo"];    
        }   
        if(count($arrUser)==0){
          return redirect()->route("frontend.index.login");               
        }else{
          $id=$arrUser["id"];
        }  
        $data=InvoiceModel::whereRaw("customer_id = ?",(int)@$id)->get()->toArray();
        return view("frontend.index",compact("arrError","arrData","data","layout"));
      }
      public function updateCart(Request $request){   
              $arrQTY=@$request->quantity;                 
              $ssCart=array();
              $arrCart=array();
              if(Session::has($this->_ssNameCart)){
                $ssCart=Session::get($this->_ssNameCart);
              }         
              $arrCart = @$ssCart["cart"];   
              if(count($arrCart) > 0){
                foreach ($arrCart as $key => $value) {    
                    $product_quantity=(int)$arrQTY[$key];
                    $product_price = (float)$arrCart[$key]["product_price"];
                    $product_total_price=$product_quantity * $product_price;
                    $arrCart[$key]["product_quantity"]=$product_quantity;
                    $arrCart[$key]["product_total_price"]=$product_total_price;
                }
                foreach ($arrCart as $key => $value) {
                  $product_quantity=(int)$arrCart[$key]["product_quantity"];
                  if($product_quantity==0){
                    unset($arrCart[$key]);
                  }
                }
              }              
              $cart["cart"]=$arrCart;                    
              Session::put($this->_ssNameCart,$cart);                   
              if(count($arrCart)==0){
                Session::forget($this->_ssNameCart);              
              }                  
      }
      public function addToCart(){
          $id=$_GET['id'];                          
          $data=ProductModel::find((int)$id);          
          $product_id=(int)($data['id']);
          $product_code=$data["code"];
          $product_name=$data["fullname"];
          $product_alias=$data["alias"];
          $product_image=$data["image"];
          $price=(float)($data["price"]);
          $sale_price=(float)($data["sale_price"]);
          $product_price=$price;
          if(!empty($sale_price)){
            $product_price=$sale_price;
          }
          $product_quantity=1;   
          $quantity=0;       
          $ssCart=array();
          $arrCart=array();
          if(Session::has($this->_ssNameCart)){
            $ssCart=Session::get($this->_ssNameCart);
          }         
          $arrCart = @$ssCart["cart"];                   
          if($product_id > 0){            
              if(count($arrCart) == 0){
                $arrCart[$product_id]["product_quantity"] = $product_quantity;
              }
              else{
                    if(!isset($arrCart[$product_id])){
                      $arrCart[$product_id]["product_quantity"] = $product_quantity;                 
                    }                        
                    else{
                      $arrCart[$product_id]["product_quantity"] = $arrCart[$product_id]["product_quantity"] + $product_quantity;                  
                    }                               
              }
              $arrCart[$product_id]["product_id"]=$product_id;  
              $arrCart[$product_id]["product_code"]=$product_code;
              $arrCart[$product_id]["product_name"]=$product_name;
              $arrCart[$product_id]["product_alias"]=$product_alias;      
              $arrCart[$product_id]["product_image"]=$product_image;          
              $arrCart[$product_id]["product_price"]=$product_price;                      
              $product_quantity=(int)$arrCart[$product_id]["product_quantity"];
              $product_total_price=$product_price * $product_quantity;
              $arrCart[$product_id]["product_total_price"]=($product_total_price);
              $cart["cart"]=$arrCart;                    
              Session::put($this->_ssNameCart,$cart);    
              $arrCart=array();
              if(Session::has($this->_ssNameCart)){    
                  $arrCart = @Session::get($this->_ssNameCart)["cart"];    
              }         
              if(count($arrCart) > 0){
                foreach ($arrCart as $key => $value){
                  $quantity+=(int)$value['product_quantity'];              
                }
              }                                                        
          }    
          $dataReturn=array(
                            'quantity'=>$quantity,
                            'permalink'=>route('frontend.index.viewCart')
                          );
        return $dataReturn;
      } 
      public function showInvoiceDetail(){
        $id=$_GET['id'];        
        $data=array();
        $data=InvoiceDetailModel::whereRaw('invoice_id = ?',[(int)$id])->get()->toArray();  
        return $data; 
      }
      public function getPaymentmethod(Request $request){
         $id=$request->id;
         $data=array();
         $data=PaymentMethodModel::find((int)@$id);        
         return $data;
      }
}







