<?php $this->load->view("backend/header"); ?>
<div class="title-post" style="width: 60%; float: left;">
	<h2>Thể loại bài viết</h2>
</div>
<div class="adding-post" style="width: 40%; float: left;">
	<a href="admin/category" class="btn btn-info mx-1 float-right">
		<i class="fas fa-arrow-left"></i>&nbsp;<span>Quay lại</span>
	</a>
</div>
<div class="clearfix"></div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-4" style="background-color: #ddd">
			<form method="POST" action="admin/category/insert">
				<div class="form-group">
					<label for="namecompany">Tên của thể loại:</label>
					<input type="text" class="form-control" value="" id="namecategory" name="namecategory">
					<label for="address">Chọn quan hệ:</label>
					<select id="prent" name="prent" class="custom-select">
						<?php foreach ($categorys as $key => $category) :?>
							<option <?php if (isset($prent) && $prent == $category["category_id"]) echo "selected=\"selected\"";  ?> value="<?php echo $category["category_id"] ?>">
								<?php echo $this->library->count_text($category["category_name"], 10); ?>
							</option>
						<?php endforeach; ?>
					</select>
					<label for="numberphone">Thêm vào hình ảnh:</label>
					<div class="col-md-4">
						<div class="custom-files">
							<img src="public/images/add-img.png" id="button_img" style="width: 100%; height: auto;">
							<input type="hidden" id="url_img" name="url_img">
						</div>		
					</div>

				</div>
				<div class="clearfix"></div>
				<div class="button-category">
					<button type="submit" name="submitcat" type="submit" class="btn btn-primary">Thêm thể loại</button>
				</div>
				<p id="messages" class="float-left my-1">&nbsp;</p>
			</form>
		</div>
		<div class="col-md-8">
			<div class="card mb-3 my-2">
				<div class="card-header">
					<i class="fas fa-table"></i>&nbsp;
					<span>Danh sách tin tức</span>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>Tên</th>
									<th>Sửa</th>
									<th>Xóa</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Tên</th>
									<th>Sửa</th>
									<th>Xóa</th>
								</tr>
							</tfoot>
							<tbody>
								<?php foreach ( $categorys as $key => $category ) : ?>
									<tr class="html-parent">
										<td>
											<a href="admin/category/update/<?php echo $category["category_id"] ?>">
												<?php echo $this->library->count_text($category["category_name"], 10); ?>
											</a>
										</td>
										<td  class="list-td">
											<a href="admin/category/retrash/<?php echo $category["category_id"] ?>" class="btn btn-success mx-1">
												<i class="fas fa-exchange-alt"></i>&nbsp;<span>Khôi phục</span>
											</a>
										</td>
										<td  class="list-td">
											<a href="admin/category/delete/<?php echo $category["category_id"] ?>" class="btn btn-primary mx-1">
												<i class="fas fa-minus-circle"></i>&nbsp;
												<span>Xóa</span>
											</a>
										</td>
									</tr>
								<?php endforeach; ?>
							</tbody>
						</table>
					</div>
				</div>
				<div class="card-footer small text-muted">Danh sách cập nhập lúc <?php echo date('d-m-Y H:i:s'); ?></div>
			</div>
		</div>
	</div>
</div>
<?php $this->load->view("backend/footer"); ?>