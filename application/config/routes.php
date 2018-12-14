<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['trang-chu'] = 'home';
$route['index'] = 'home';

$route['lien-he'] = 'contact/index';

$route['trang'] = 'posts/index';
$route['trang/(:any)'] = 'posts/index/$1';

$route['search'] = 'product/search';
$route['search/(:any)'] = 'product/search/$1';

$route['san-pham'] = 'product/index';
$route['san-pham/(:num)'] = 'product/index/$1';
$route['loai-san-pham/(:any)'] = 'product/category/$1';
$route['loai-san-pham/(:any)/(:num)'] = 'product/category/$1/$2';
$route['san-pham/(:any)'] = 'product/single/$1';//chi tiet san phẩm

$route['gio-hang'] = 'cart';
$route['gio-hang/(:any)'] = 'cart/$1';

$route['admin'] = 'admin/post';
$route['admin/(:any)'] = 'admin/$1';
$route['admin/(:any)/(:num)'] = 'admin/$1/$2';
$route['admin/(:any)/(\d+)'] = 'admin/control/$1/$2';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
