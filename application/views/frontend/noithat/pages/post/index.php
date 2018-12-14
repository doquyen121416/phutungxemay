<?php if (!empty($post)) { ?>

<?php $this->load->view('frontend/'.$this->theme_name.'/header'); ?>

	<div id="main_content">
		<div id="right">
			<div class="tieude_giua"><span class="tieude_giuaspan"><?php echo $post['post_title'] ?></span></div>
			<div class="box_container">
				<div class="content">   	

					<p><?php echo $post['post_detail'] ?></p>

				</div><!--.content-->
			</div><!--.box_container-->

		</div><!---END #right-->
		<div id="left">
			<div id="left1">
				<div id="danhmuc" class="danhmuc">
					<?php $this->load->view('frontend/'.$this->theme_name.'/models/sidebar'); ?>
				</div>
			</div>

			<div class="clear"></div>
		</div>
	</div>

<?php $this->load->view('frontend/'.$this->theme_name.'/footer'); ?>

	<?php 	
} else {
	show_404();
} ?>