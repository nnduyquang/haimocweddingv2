<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', 'FETrangChuController@getAllInfo');
Route::get('/gioi-thieu', 'PostController@getContentGioiThieu');
Route::get('/album/{pathCategory}', 'FEAlbumController@getAlbumsByCategory');
Route::get('/dia-diem/{pathLocation}', 'FELocationController@getLocationInfo');
Route::get('/bao-gia', 'QuotationController@getAllQuotations');
Route::get('/bao-gia/{path}', 'QuotationController@getDetailQuotation');
Route::get('album/{pathCategoryAlbum}/{pathAlbum}', 'FEAlbumController@getDetail');
Route::get('lien-he',function (){
    return view('frontend.trangcon.lienhe');
});
Route::get('/sml_login', function () {
    return view('backend.login.login1');
});

Route::post('sml_login', 'AuthController@login')->name('login');
Route::get('sml_logout', 'AuthController@logout')->name('logout');

Route::group(['middleware' => ['auth']], function () {

    Route::get('sml_admin/dashboard', function () {
        return view('backend.admin.dashboard.index');
    })->name('dashboard');
    //USER
    Route::resource('sml_admin/users', 'UserController');


    //ROLE
    Route::get('sml_admin/roles', ['as' => 'roles.index', 'uses' => 'RoleController@index', 'middleware' => ['permission:role-list|role-create|role-edit|role-delete']]);
    Route::post('sml_admin/roles/create', ['as' => 'roles.store', 'uses' => 'RoleController@store', 'middleware' => ['permission:role-create']]);
    Route::get('sml_admin/roles/create', ['as' => 'roles.create', 'uses' => 'RoleController@create', 'middleware' => ['permission:role-create']]);
    Route::get('sml_admin/roles/{id}/edit', ['as' => 'roles.edit', 'uses' => 'RoleController@edit', 'middleware' => ['permission:role-edit']]);
    Route::patch('sml_admin/roles/{id}', ['as' => 'roles.update', 'uses' => 'RoleController@update', 'middleware' => ['permission:role-edit']]);
    Route::delete('sml_admin/roles/{id}', ['as' => 'roles.destroy', 'uses' => 'RoleController@destroy', 'middleware' => ['permission:role-delete']]);
    Route::get('sml_admin/roles/{id}', ['as' => 'roles.show', 'uses' => 'RoleController@show']);

    //NEWS
    Route::get('sml_admin/news', ['as' => 'news.index', 'uses' => 'NewsController@index', 'middleware' => ['permission:news-list|news-create|news-edit|news-delete']]);
    Route::post('sml_admin/news/create', ['as' => 'news.store', 'uses' => 'NewsController@store', 'middleware' => ['permission:news-create']]);
    Route::post('sml_admin/news', ['as' => 'news.search', 'uses' => 'NewsController@search']);
    Route::get('sml_admin/news/create', ['as' => 'news.create', 'uses' => 'NewsController@create', 'middleware' => ['permission:news-create']]);
    Route::get('sml_admin/news/{id}/edit', ['as' => 'news.edit', 'uses' => 'NewsController@edit', 'middleware' => ['permission:news-edit']]);
    Route::patch('sml_admin/news/{id}', ['as' => 'news.update', 'uses' => 'NewsController@update', 'middleware' => ['permission:news-edit']]);
    Route::delete('sml_admin/news/{id}', ['as' => 'news.destroy', 'uses' => 'NewsController@destroy', 'middleware' => ['permission:news-delete']]);

    //POST
    Route::get('sml_admin/post', ['as' => 'post.index', 'uses' => 'PostController@index', 'middleware' => ['permission:post-list|post-create|post-edit|post-delete']]);
    Route::post('sml_admin/post/create', ['as' => 'post.store', 'uses' => 'PostController@store', 'middleware' => ['permission:post-create']]);
    Route::post('sml_admin/post', ['as' => 'post.search', 'uses' => 'PostController@search']);
    Route::get('sml_admin/post/create', ['as' => 'post.create', 'uses' => 'PostController@create', 'middleware' => ['permission:post-create']]);
    Route::get('sml_admin/post/{id}/edit', ['as' => 'post.edit', 'uses' => 'PostController@edit', 'middleware' => ['permission:post-edit']]);
    Route::patch('sml_admin/post/{id}', ['as' => 'post.update', 'uses' => 'PostController@update', 'middleware' => ['permission:post-edit']]);
    Route::delete('sml_admin/post/{id}', ['as' => 'post.destroy', 'uses' => 'PostController@destroy', 'middleware' => ['permission:post-delete']]);

    //LOCATION
    Route::get('sml_admin/dia-diem', ['as' => 'location.index', 'uses' => 'LocationController@index', 'middleware' => ['permission:location-list|location-create|location-edit|location-delete']]);
    Route::post('sml_admin/dia-diem/create', ['as' => 'location.store', 'uses' => 'LocationController@store', 'middleware' => ['permission:location-create']]);
    Route::post('sml_admin/dia-diem', ['as' => 'location.search', 'uses' => 'LocationController@search']);
    Route::get('sml_admin/dia-diem/create', ['as' => 'location.create', 'uses' => 'LocationController@create', 'middleware' => ['permission:location-create']]);
    Route::get('sml_admin/dia-diem/{id}/edit', ['as' => 'location.edit', 'uses' => 'LocationController@edit', 'middleware' => ['permission:location-edit']]);
    Route::patch('sml_admin/dia-diem/{id}', ['as' => 'location.update', 'uses' => 'LocationController@update', 'middleware' => ['permission:location-edit']]);
    Route::delete('sml_admin/dia-diem/{id}', ['as' => 'location.destroy', 'uses' => 'LocationController@destroy', 'middleware' => ['permission:location-delete']]);

    //ALBUM
    Route::get('sml_admin/album', ['as' => 'album.index', 'uses' => 'AlbumController@index', 'middleware' => ['permission:album-list|album-create|album-edit|album-delete']]);
    Route::post('sml_admin/albumm/create', ['as' => 'album.store', 'uses' => 'AlbumController@store', 'middleware' => ['permission:album-create']]);
    Route::post('sml_admin/album', ['as' => 'album.search', 'uses' => 'AlbumController@search']);
    Route::get('sml_admin/album/create', ['as' => 'album.create', 'uses' => 'AlbumController@create', 'middleware' => ['permission:album-create']]);
    Route::get('sml_admin/album/{id}/edit', ['as' => 'album.edit', 'uses' => 'AlbumController@edit', 'middleware' => ['permission:album-edit']]);
    Route::patch('sml_admin/album/{id}', ['as' => 'album.update', 'uses' => 'AlbumController@update', 'middleware' => ['permission:album-edit']]);
    Route::delete('sml_admin/album/{id}', ['as' => 'album.destroy', 'uses' => 'AlbumController@destroy', 'middleware' => ['permission:album-delete']]);

    //ALBUM
    Route::get('sml_admin/loai-album', ['as' => 'categoryalbum.index', 'uses' => 'CategoryAlbumController@index', 'middleware' => ['permission:categoryalbum-list|categoryalbum-create|categoryalbum-edit|categoryalbum-delete']]);
    Route::post('sml_admin/loai-album/create', ['as' => 'categoryalbum.store', 'uses' => 'CategoryAlbumController@store', 'middleware' => ['permission:categoryalbum-create']]);
    Route::get('sml_admin/loai-album/create', ['as' => 'categoryalbum.create', 'uses' => 'CategoryAlbumController@create', 'middleware' => ['permission:categoryalbum-create']]);
    Route::get('sml_admin/loai-album/{id}/edit', ['as' => 'categoryalbum.edit', 'uses' => 'CategoryAlbumController@edit', 'middleware' => ['permission:categoryalbum-edit']]);
    Route::patch('sml_admin/loai-album/{id}', ['as' => 'categoryalbum.update', 'uses' => 'CategoryAlbumController@update', 'middleware' => ['permission:categoryalbum-edit']]);
    Route::delete('sml_admin/loai-album/{id}', ['as' => 'categoryalbum.destroy', 'uses' => 'CategoryAlbumController@destroy', 'middleware' => ['permission:categoryalbum-delete']]);

    //QUOTATION
    Route::get('sml_admin/bao-gia', ['as' => 'quotation.index', 'uses' => 'QuotationController@index', 'middleware' => ['permission:quotation-list|quotation-create|quotation-edit|quotation-delete']]);
    Route::post('sml_admin/bao-gia/create', ['as' => 'quotation.store', 'uses' => 'QuotationController@store', 'middleware' => ['permission:quotation-create']]);
    Route::post('sml_admin/bao-gia', ['as' => 'quotation.search', 'uses' => 'QuotationController@search']);
    Route::get('sml_admin/bao-gia/create', ['as' => 'quotation.create', 'uses' => 'QuotationController@create', 'middleware' => ['permission:quotation-create']]);
    Route::get('sml_admin/bao-gia/{id}/edit', ['as' => 'quotation.edit', 'uses' => 'QuotationController@edit', 'middleware' => ['permission:quotation-edit']]);
    Route::patch('sml_admin/bao-gia/{id}', ['as' => 'quotation.update', 'uses' => 'QuotationController@update', 'middleware' => ['permission:quotation-edit']]);
    Route::delete('sml_admin/bao-gia/{id}', ['as' => 'quotation.destroy', 'uses' => 'QuotationController@destroy', 'middleware' => ['permission:quotation-delete']]);


    //CONFIG
    //--GENERAL--//
    Route::get('sml_admin/config', ['as' => 'config.index', 'uses' => 'ConfigController@getConfigGeneral']);
    Route::post('sml_admin/config', ['as' => 'config.store', 'uses' => 'ConfigController@saveConfigGeneral']);
    //--MAIL--//
//    Route::get('sml_admin/cau-hinh/mail', ['as' => 'config.email.index', 'uses' => 'CauHinhController@getAllCauHinh']);
    Route::get('sml_admin/config/email', ['as' => 'config.email.index', 'uses' => 'ConfigController@getEmailConfig']);
    Route::post('sml_admin/config/email', ['as' => 'config.email.store', 'uses' => 'ConfigController@saveEmailConfig']);

    //--SLIDER--//
    Route::get('sml_admin/slider', ['as' => 'config.slider.index', 'uses' => 'SliderController@index', 'middleware' => ['permission:config-list|config-create|config-edit|config-delete']]);
    Route::post('sml_admin/slider/create', ['as' => 'config.slider.store', 'uses' => 'SliderController@store', 'middleware' => ['permission:config-create']]);
    Route::get('sml_admin/slider/create', ['as' => 'config.slider.create', 'uses' => 'SliderController@create', 'middleware' => ['permission:config-create']]);
    Route::get('sml_admin/slider/{id}/edit', ['as' => 'config.slider.edit', 'uses' => 'SliderController@edit', 'middleware' => ['permission:config-edit']]);
    Route::patch('sml_admin/slider/{id}', ['as' => 'config.slider.update', 'uses' => 'SliderController@update', 'middleware' => ['permission:config-edit']]);
    Route::delete('sml_admin/slider/{id}', ['as' => 'config.slider.destroy', 'uses' => 'SliderController@destroy', 'middleware' => ['permission:config-delete']]);
});

