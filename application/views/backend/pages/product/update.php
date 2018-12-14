<?php $this->load->view("backend/header"); 

echo form_open_multipart('');?>
<div class="container">
	<div class="row">
		<div class="col-md-8">
			<h2>Thêm mới sản phẩm</h2>
		</div>
		<div class="col-md-4">
			<?php if (!empty($post)) { ?>
				<a href="admin/posts/insert" class="btn btn-info my-1 float-left">
					<i class="fas fa-plus"></i>&nbsp;<span>Thêm mới sản phẩm</span>
				</a>
			<?php } ?>
		</div>
	</div>
</div>
<div class="row clearfix">
	<div class="col-md-9" style="background-color: #ddd;">
		<div class="row clearfix">
			<div class="col-md-12 pt-3">

				<?php echo empty($error)?"":'<p>'.$error.'</p>'; ?>
				<div class="form-group">
					<label for="usr"><strong>Nhập vào tiêu đề của bài viết:</strong></label>
					<input type="text" class="form-control" value="<?php echo $product['product_name']; ?>" id="titletop" name="name" >
				</div>
				<div class="form-group">
					<label for="details"><strong>Chi tiết</strong></label>
					<textarea rows="7" class="form-control" id="details" name="details"><?php echo $product['product_detail']; ?></textarea>
				</div>
				<div class="form-group">
					<label for="keyword"><strong>Từ khóa</strong></label>
					<textarea rows="3" class="form-control" id="keyword" name="keyword"><?php echo $product['product_metakey']; ?></textarea>
				</div>
				<div class="form-group">
					<label for="report"><strong>Mô tả</strong></label>
					<textarea rows="3" class="form-control" id="report" name="report"><?php echo $product['product_metadesc']; ?></textarea>
				</div>

				<div class="form-group">
					<div class="row">
						<div class="col-md-4 input-group">
							<label for="quantity"><strong>Có&nbsp;:&nbsp;</strong></label>
							<input type="number" id="quantity" class="form-control" name="quantity" min="1" value="<?php echo $product['product_number']; ?>" >
							<div class="input-group-append">
								<span class="input-group-text">Sản phẩm</span>
							</div>
						</div>

						<div class="col-md-4 input-group">
							<label for="price"><strong>Giá chưa sale&nbsp;:&nbsp;</strong></label>
							<input type="number" class="form-control" id="price" name="price" min="1000" value="<?php echo $product['product_price']; ?>" step="5000">
							<div class="input-group-append">
								<span class="input-group-text">đ</span>
							</div>
						</div>
						<div class="col-md-4 input-group">
							<label for=""><strong>Giá đã sale&nbsp;:&nbsp;</strong></label>
							<input type="number" class="form-control" name="pricesale" min="1000" value="<?php echo $product['product_pricesale']; ?>" step="5000">
							<div class="input-group-append">
								<span class="input-group-text">đ</span>
							</div>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row clearfix">
						<div class="col-md-4" style="text-align: center;">
							<img src="<?php echo empty($image['0'])?"public/images/add-img.png":$image['0'] ?>" id="button_img1" style="width: 100%; height: auto;">
							<input type="hidden" value="<?php echo empty($image['0'])?"public/images/add-img.png":$image['0'] ?>" id="url_img1" name="url_img1">
						</div>
						<div class="col-md-4" style="text-align: center;">
							<img src="<?php echo empty($image['1'])?"public/images/add-img.png":$image['1'] ?>" id="button_img2" style="width: 100%; height: auto;">
							<input type="hidden" value="<?php echo empty($image['1'])?"public/images/add-img.png":$image['1'] ?>" id="url_img2" name="url_img2">
						</div>
						<div class="col-md-4" style="text-align: center;">
							<img src="<?php echo empty($image['2'])?"public/images/add-img.png":$image['2'] ?>" id="button_img3" style="width: 100%; height: auto;">
							<input type="hidden" value="<?php echo empty($image['2'])?"public/images/add-img.png":$image['2'] ?>" id="url_img3" name="url_img3">
						</div>
					</div>
				</div>
				<div class="clearfix my-3"></div>
			</div>
		</div>
	</div>
	<div id="sidebarRight" class="col-md-3">

		<div class="form-group">
			<label for="category"><strong>Loại sản phẩm</strong></label>
			<select name="category" class="form-control">
				<?php foreach ( $categorys as $key => $category ) { ?>
					<option value="<?php echo $category['category_id'] ?>" <?php echo ($category['category_id'] == $product['product_catid'])?'selected = "selected"':'' ?> ><?php echo $category["category_name"]; ?></option>
				<?php } ?>
			</select>
			<?php echo form_error('category'); ?>
		</div>
		<div class="m-3 mx-auto clearfix form-group">
			<label for="tags"><strong>Thẻ</strong></label>
			<textarea name="tags" style="width: 100%" id="tags" class="form-control p-1" cols="50" rows="4">
				<?php echo $product["product_tags"]; ?>
			</textarea>
			<?php echo form_error('tags'); ?>	
		</div>
		<div class="row clearfix">

			<div class="mx-auto my-3" style="text-align: center;">
				<p id="messages" class="float-left my-1 mx-1"></p>
				<input type="hidden" name="text_get_url" id="text_get_url" value="">
				<button type="submit" name="insert_db" class="btn btn-primary mx-2 px-4">Đăng nội dung</button>					
			</div>	

			<div class="clearfix"></div>
			<h4 class="p-3">Hình ảnh đại diện</h4>
			<div class="m-3 clearfix">
				<div class="custom-file" style="text-align: center;">
					<img src="<?php echo empty($product['product_img'])?"public/images/add-img.png":$product['product_img']; ?>" id="button_img" style="width: 100%; height: auto;">
					<input type="hidden" value="<?php echo empty($product['product_img'])?"public/images/add-img.png":$product['product_img']; ?>" id="url_img" name="url_img">
				</div>		
			</div>

		</div>
	</div>
</div>
</form>
<script>
	CKEDITOR.replace( 'details');
	var router = "san-pham/";
</script>
<?php $this->load->view("backend/footer"); ?>s