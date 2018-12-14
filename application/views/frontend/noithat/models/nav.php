<?php  
	$listmenus = $this->mmenu->menu_list(0);

	//var_dump($listmenus);
$html_nav = "";

foreach ( $listmenus as $listmenu ):

	$listmenus2 = $this->mmenu->menu_list($listmenu['menu_id']);
	if(count( $listmenus2 )):
		$html_nav .= '<li class="nav-item dropdown">';
		$html_nav .= '	<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="'.$listmenu['menu_link'].'">'.$listmenu['menu_name'].'</a>';
		$html_nav .= '	<ul class="dropdown-menu">';

			foreach ( $listmenus2 as $listmenu2 ):

			$html_nav .= '		<li class="dropdown-item"><a href="'.$listmenu2['menu_link'].'">'.$listmenu2['menu_name'].'</a></li>';
			
			endforeach;

		$html_nav .= '	</ul>';
		$html_nav .= '</li>';
	else:

		$html_nav .= '<li class="nav-item">';
		$html_nav .= '<a class="nav-link" href="'.$listmenu['menu_link'].'">'.$listmenu['menu_name'].'</a>';
		$html_nav .= '</li>';

	endif;
endforeach;

?>

<?php if( !empty($listmenus) ): ?>
<div class="collapse navbar-collapse" id="collapsibleNavbar">
	<ul class="navbar-nav max-wight">
		<?php echo $html_nav; ?>  
	</ul>
</div>
<?php endif; ?>  