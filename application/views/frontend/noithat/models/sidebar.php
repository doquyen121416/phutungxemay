<?php 

$sidebars = $this->mcategory->category_parentid( '0' );
//var_dump($sidebars);

$html_sidebar = '';

foreach ( $sidebars as $key => $sidebar ) {
	$sidebars2 = $this->mcategory->category_parentid( $sidebar['category_id'] );
	$html_sidebar .= '<li><a href="loai-san-pham/'.$sidebar['category_slug'].'"><img src="'.$sidebar['category_img'].'" />'.$sidebar['category_name'].'</a>';
	$html_sidebar .='</li>';

}

?>
<div id="danhmuc" class="danhmuc">
	<div class="tieude">Danh mục sản phẩm</div>
	<ul  class="ul1">
		<?php echo $html_sidebar; ?>
	</ul>
</div>



