<?php $this->load->view("backend/header"); 

$configs = $this->mconfig->config_get();
?>

<?php if (!$configs): 
	$namecompany = $address = $email = $numberphone = $facebook = $youtube = $twitter = $google = $company = $mastercard = $visa = "";
	$copyright = "";
 else:
	$namecompany = $configs['config_namecompany'];
	$address = $configs['config_address'];
	$email = $configs['config_email'];
	$numberphone = $configs['config_phone'];
	$facebook = $configs['config_facebook'];
	$youtube = $configs['config_youtube'];
	$twitter = $configs['config_twitter'];
	$google = $configs['config_google'];
	$copyright = $configs['config_copyright'];
	$company = $configs['config_company'];
	$mastercard = $configs['config_mastercard'];
	$visa = $configs['config_visa'];
endif ?>
<form action="" id="display-form">
	<div class="h2-title" >
	<h2>Thêm thông tin</h2>
	</div>
	<div class="row clearfix">
		<div class="col-md-9" style="background-color: #ddd;">
			<div class="row clearfix">
				<div class="col-md-12 pt-3">

					<h4>Thông tin công ty</h4>
					<div class="form-group">
						<label for="namecompany">Tên công ty:</label>
						<input type="text" class="form-control" value="<?php echo $namecompany; ?>" id="namecompany" name="namecompany">
						<label for="address">Địa chỉ liên hệ:</label>
						<input type="text" class="form-control" value="<?php echo $address; ?>" id="address" name="address">
						<label for="numberphone">Số điện thoại:</label>
						<input type="text" class="form-control" value="<?php echo $numberphone; ?>" id="numberphone" name="numberphone">
						<label for="email">Email:</label>
						<input type="text" class="form-control" value="<?php echo $email; ?>" id="email" name="email">
					</div>

					<h4>Thông tin mạng xã hội</h4>
					<div class="form-group">
						<label for="facebook">Facebook:</label>
						<input type="text" class="form-control" value="<?php echo $facebook; ?>" id="facebook" name="facebook">
						<label for="youtube">Youtube:</label>
						<input type="text" class="form-control" value="<?php echo $youtube; ?>" id="youtube" name="youtube">
						<label for="twitter">Twitter:</label>
						<input type="text" class="form-control" value="<?php echo $twitter; ?>" id="twitter" name="twitter">
						<label for="google">Google:</label>
						<input type="text" class="form-control" value="<?php echo $google; ?>" id="google" name="google">
					</div>

					<h4>Thông tin khai báo</h4>
					<div class="form-group">
						<label for="copyright">Copyright:</label>
						<input type="text" value="<?php echo $copyright; ?>" readonly class="form-control" id="copyright" name="copyright">
						<label for="company">Bộ công thương:</label>
						<input type="text" value="<?php echo $company; ?>" class="form-control" id="company" name="company">
						<label for="mastercard">MasterCard:</label>
						<input type="text" value="<?php echo $mastercard; ?>" class="form-control" id="mastercard" name="mastercard">
						<label for="visa">Visa:</label>
						<input type="text" value="<?php echo $visa; ?>" class="form-control" id="visa" name="visa">
					</div>

				</div>
			</div>
		</div>
		<div id="sidebarRight" class="col-md-3">
			<div class="row clearfix">

				<div class="display-buton">
					<button type="button" id="upload-theme" class="btn btn-primary">Thêm vào thông tin</button>
				</div>
				<div id="messages">&nbsp;</div>

			</div>
		</div>
	</div>
</form>

<?php $this->load->view("backend/footer"); ?>