<?php $this->load->view("backend/header"); ?>


<form action="" method="POST"  enctype="multipart/form-data">
	<h2>Custom trang chủ</h2>
	<div class="row clearfix">
		<div class="col-md-9" style="background-color: #ddd;">
			<div class="row clearfix">
				<div class="col-md-4" style="background-color: #f9f6f6;">
					<div class="col-md-12">
						<img class="my-3" style="width: 100%; height: auto;"  src="public/images/display/section1.png">
					</div>
					<div class="col-md-12">
						<img class="my-3" style="width: 100%; height: auto;"  src="public/images/display/section2.png">
					</div>
					<div class="col-md-12">
						<img class="my-3" style="width: 100%; height: auto;"  src="public/images/display/section3.png">
					</div>
					<div class="col-md-12">
						<img class="my-3" style="width: 100%; height: auto;"  src="public/images/display/section4.png">
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="col-md-8">
					<div class="clearfix row m-3" style="background-color: #fff; height: 300px;">
						
					</div>
				</div>
			</div>
			<div class="my-3">
				<h3>Seo</h3>
				<div class="my-3 py-3">

					<div class="form-group">
						<label for="usr">Nhập vào tiêu đề seo:</label>
						<input type="text" class="form-control" value="" id="titlename" name="124">
					</div>
					<div class="form-group">
						<label for="usr">Nhập vào nội dung seo:</label>
						<textarea rows="5" class="form-control" name="12sss4" id="contentname"></textarea>
					</div>
				</div>
				<img src="public/images/google.png" width="100">
				<div class="my-3 p-3" style="background-color: #fff">

					<a class="url_script_seo" href="">
						<h3 id="titleseo"></h3>
					</a>
					<div style="display:inline-block" class="TbwUpd">
						<cite  class="iUh30 url_script"><?php echo base_url(); ?></cite>
					</div>
					<div class="s">
						<span id="contentseo"></span>
					</div>
				</div>
			</div>
		</div>
		<div id="sidebarRight" class="col-md-3">

			<div class="mx-auto m-4" style="text-align: center;">
				<input type="hidden" name="text_get_url" id="text_get_url" value="">
				<button type="submit" class="btn btn-primary mx-2 px-4">Đăng nội dung</button>					
			</div>
			<div class="row clearfix">
				<div>
					<img style="width: 100%; height: auto;"  src="public/images/display/header.png">
				</div>
				<div>
					<img style="width: 100%; height: auto;"  src="public/images/display/section1.png">
					<img style="width: 100%; height: auto;"  src="public/images/display/section2.png">
					<img style="width: 100%; height: auto;"  src="public/images/display/section3.png">
					<img style="width: 100%; height: auto;"  src="public/images/display/section4.png">
				</div>
				<div>
					<img style="width: 100%; height: auto;" src="public/images/display/footer.png">
				</div>
			</div>
		</div>
	</div>
</form>
<?php $this->load->view("backend/footer"); ?>