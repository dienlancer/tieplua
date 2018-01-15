<?php 
$seo_alias="";
if(isset($alias)){
    $seo_alias=$alias;
}
?>
@extends("frontend.master")
@section("content")
<div class="container">
    <div class="immotal">
        <?php     
        switch ($layout){
            case 'two-column':  
            ?>
            <div class="col-lg-9">
                <?php
                switch ($component) {      
                    case "categories-article":                                                                
                    case "category-article":      
                    case "search":                                                              
                    ?>@include("frontend.category-article")<?php
                    break;     
                    case "projects": 
                    ?>@include("frontend.projects")<?php   
                    break;                                      
                    case "article":                                                            
                    ?>@include("frontend.article")<?php
                    break;
                    case "project":                                                            
                    ?>@include("frontend.project")<?php
                    break;
                    case "project-article":                                                            
                    ?>@include("frontend.project-article")<?php
                    break;
                    case "page":                                                            
                    ?>@include("frontend.page")<?php
                    break; 
                    case "supporter":                                                            
                    ?>@include("frontend.supporter")<?php
                    break; 
                    case "organizations":                                                            
                    ?>@include("frontend.organizations")<?php
                    break; 
                    case "organization":                                                            
                    ?>@include("frontend.organization")<?php
                    break;                                  
                    case "category-product":                                                
                    ?>@include("frontend.category-product")<?php
                    break; 
                    case "product":                                                
                    ?>@include("frontend.product")<?php
                    break;
                    case "gio-hang":                                                
                    ?>@include("frontend.cart")<?php
                    break; 
                    case "register":                                                
                    ?>@include("frontend.register")<?php
                    break;
                    case "account":                                                
                    ?>@include("frontend.account")<?php
                    break;
                    case "login":                                                
                    ?>@include("frontend.login")<?php
                    break;
                    case "login-join-project":                                                
                    ?>@include("frontend.login-join-project")<?php
                    break;
                    case "security":                                                
                    ?>@include("frontend.security")<?php
                    break;
                    case "xac-nhan-thanh-toan":                                                
                    ?>@include("frontend.confirm-checkout")<?php
                    break;
                    case "dang-nhap-thanh-toan":                                                
                    ?>@include("frontend.login-checkout")<?php
                    break;
                    case "hoan-tat-thanh-toan":                                                
                    ?>@include("frontend.finished-checkout")<?php
                    break;
                    case "hoa-don":                                                
                    ?>@include("frontend.invoice")<?php
                    break;                                                                        
                }
                ?>
            </div>
            <div class="col-lg-3">
                <?php                          
                $argsDichVuHoatDong = array(                         
                    'menu_class'            => 'categoryarticle',                            
                    'before_wrapper'        => '<div class="box-category margin-top-15">',
                    'before_title'          => '<h2 class="menu-right-title">',
                    'after_title'           => '</h2>',
                    'before_wrapper_ul'     =>  '<div>',
                    'after_wrapper_ul'      =>  '</div>',
                    'after_wrapper'         => '</div>'     ,
                    'link_before'           => '', 
                    'link_after'            => '',                                                                    
                    'theme_location'        => 'dich-vu-hoat-dong' ,
                    'menu_li_actived'       => 'current-menu-item',
                    'menu_item_has_children'=> 'menu-item-has-children',
                    'alias'                 => $seo_alias,
                );       
                $argsTinTucSuKien = array(                         
                    'menu_class'            => 'categoryarticle',                            
                    'before_wrapper'        => '<div class="box-category margin-top-15">',
                    'before_title'          => '<h2 class="menu-right-title">',
                    'after_title'           => '</h2>',
                    'before_wrapper_ul'     =>  '<div>',
                    'after_wrapper_ul'      =>  '</div>',
                    'after_wrapper'         => '</div>'     ,
                    'link_before'           => '', 
                    'link_after'            => '',                                                                    
                    'theme_location'        => 'tin-tuc-su-kien' ,
                    'menu_li_actived'       => 'current-menu-item',
                    'menu_item_has_children'=> 'menu-item-has-children',
                    'alias'                 => $seo_alias,
                );    
                switch ($component) {
                    case 'categories-article':
                    case 'category-article':
                    if(isset($seo_alias)){
                        switch ($seo_alias) {
                            case 'tin-tuc-su-kien': 
                            case 'tin-noi-bo': 
                            case 'tin-cong-dong':                    
                            wp_nav_menu($argsTinTucSuKien);  
                            break;                
                            case 'dich-vu-hoat-dong': 
                            case 'dich-vu':
                            case 'hoat-dong':
                            wp_nav_menu($argsDichVuHoatDong);                        
                            break;                        
                        }        
                    }                
                    break;  
                    default:
                    wp_nav_menu($argsDichVuHoatDong); 
                    wp_nav_menu($argsTinTucSuKien);                   
                    break;                 
                }                                       
                ?>            
            </div>
            <div class="clr"></div>
            <?php          
            break;
            case 'full-width':        
            ?>
            <div class="col-lg-12">
                
                    <?php
                    switch ($component) {                          
                        case "contact": 
                        ?>@include("frontend.contact")<?php   
                        break;      
                        case "categories-album": 
                        ?>@include("frontend.categories-album")<?php   
                        break;   
                        case "album": 
                        ?>@include("frontend.album")<?php   
                        break; 
                        case "category-video": 
                        ?>@include("frontend.category-video")<?php   
                        break;                                                                                     
                    }  
                    ?>
                
            </div>            
            <?php
            break;
        }
        ?>
    </div>    
</div>
@endsection()               