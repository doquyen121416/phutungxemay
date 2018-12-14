<?php $this->load->view("backend/header"); ?>

<?php  
$err = "";
// điều kiện mà có 
if (empty($post)) {
	$titletop = $textarea_content = $text_get_url = "";
	$url_img = "public/images/add-img.png";
}else{
	$titletop = $post["post_title"];
	$textarea_content = $post["post_detail"];
	$text_get_url = $post["post_slug"];
	$url_img = $post["post_img"];
}

// điều kiện này là khi có đối tựng nhấn vào nút submit mới xẩy ra sự kiện này
if ( isset($_POST['insert_db']) ) {

	$titletop = $_POST['titletop'];
	$textarea_content = $_POST['textarea_content'];
	$url_img = $_POST['url_img'];
	$text_get_url = $_POST['text_get_url'];

	if (empty($titletop)) {
		$err = "Tiêu đề là không được phép trống"; 
	}else{
		$data = array(
			'post_title' => $titletop,
			'post_detail' => $textarea_content,
			'post_img' => $url_img,
			'post_type' => 'page',
			'post_slug' => $text_get_url,		
		);

		$slugs = $this->mpost->check_post_slug( $text_get_url );
		if (!empty($titletop)) {
			if ( $slugs == ""  ) {
				$this->mpost->insert_posts($data);
				$err = "Bạn đã thêm thành công nội dung";
			}else{
				$this->mpost->update_post( $slugs["post_id"], $data );
				$err = "Bạn vừa cập nhật mới nội dung";
			}
		}
	}
}

	//echo  $id;
?>

<form method="POST" id="page-form">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h2>Thêm trang mới</h2>
			</div>
			<div class="col-md-4">
				<?php if (!empty($post)) { ?>
					<a href="admin/post/add" class="btn btn-info my-1 float-right">
						<i class="fas fa-plus"></i>&nbsp;<span>Thêm trang mới</span>
					</a>
				<?php } ?>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-9" style="background-color: #ddd;">
			<div class="row clearfix">
				<div class="col-md-12 pt-3">

					<div class="form-group">
						<label for="usr">Nhập vào tiêu đề của bài viết:</label>
						<input type="text" class="form-control" value="<?php echo $titletop; ?>" id="titletop" name="titletop" >
					</div>

					<div class="my-3">
						<strong><i class="fas fa-link"></i>&nbsp;Link :&nbsp;</strong>
						<a href="<?php echo $text_get_url; ?>" class="url_script"><?php 

						if ( strlen($text_get_url) > 80 ) {
							echo substr($text_get_url, 0, 80)."...";
						}else{
							echo $text_get_url; 
						}

						?></a>
					</div>

					<div class="form-group">
						<label for="pwd">Nhập vào nội dung của bài viết</label>
						<textarea rows="10" class="form-control" id="textarea_content" name="textarea_content"><?php echo $textarea_content; ?></textarea>
					</div>

				</div>
			</div>
		</div>
		<div id="sidebarRight" class="col-md-3">
			<div class="row clearfix">

				<div class="mx-auto my-3" style="text-align: center;">
					<p id="messages" class="float-left my-1 mx-1"><?php echo $err; ?></p>
					<input type="hidden" name="text_get_url" id="text_get_url" value="<?php echo $text_get_url; ?>">
					<button type="submit" name="insert_db" class="btn btn-primary mx-2 px-4">Đăng nội dung</button>					
				</div>	

				<div class="clearfix"></div>
				<h4 class="p-3">Hình ảnh đại diện</h4>
				<div class="m-3 clearfix">
					<div class="custom-file" style="text-align: center;">
						<img src="<?php echo empty($url_img)?"public/images/add-img.png":$url_img; ?>" id="button_img" style="width: 100%; height: auto;">
						<input type="hidden" value="<?php echo $url_img; ?>" id="url_img" name="url_img">
					</div>		
				</div>

			</div>
		</div>
	</div>
</form>
<script>
	CKEDITOR.replace( 'textarea_content');
	var router = "trang/";
</script>
<?php $this->load->view("backend/footer"); ?>