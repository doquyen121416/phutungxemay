<?php if (empty($this->cart->contents())) { ?>

	<?php $this->load->view('frontend/'.$this->theme_name.'/header'); ?>

	<div id="main_content">

		<div id="right">

			<div class="box_container"> 
				<div class="tieude_giua"><span class="tieude_giuaspan">Giỏ hàng</span></div>
				<div class="content">
					<p style="text-align: center;">Hiện Tại bạn không có sản phẳm nào trong giỏ hàng :)</p>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<div id="left">
			<div id="left1">
				<div id="danhmuc" class="danhmuc">
					<?php $this->load->view('frontend/'.$this->theme_name.'/models/sidebar.php'); ?>
				</div>
			</div>

			<div class="clear"></div>
		</div>
	</div>

	<?php $this->load->view('frontend/'.$this->theme_name.'/footer'); ?>

	<?php 	
} else { ?>

	<?php $this->load->view('frontend/'.$this->theme_name.'/header'); ?>

	<div id="main_content">

		<div id="right">

			<div class="box_container"> 
				<div class="tieude_giua"><span class="tieude_giuaspan">Giỏ hàng</span></div>
				<div class="content">
					<div class="left_gh">
						<div class="td_gh">Thông tin giỏ hàng</div>
						<form name="form1" method="post">
							<input type="hidden" name="pid">
							<input type="hidden" name="size">
							<input type="hidden" name="mausac">
							<input type="hidden" name="command"> 
							<table id="giohang" border="0" cellpadding="5px" cellspacing="1px" style="color:#000; background:#dadada; width:100%; font-size:13px;">
								<thead>
									<tr bgcolor="#F0F0F0" height="55px">
										<td align="center">Xóa</td>
										<td style="text-align:center;">Hình ảnh </td>
										<td style="text-align:center;">Tên</td> 
										<td align="center">Đơn giá</td>
										<td align="center">Số lượng</td> 
										<td align="center" class="gh_an">Thành tiền</td>
									</tr>
								</thead>
								<tfoot>
									<?php $sum_price =""; if( !empty($this->cart->contents()) ): foreach ( $this->cart->contents() as $cart ) : ?>            		
									<tr id="cart_<?php echo $cart['id']; ?>" bgcolor="#FFFFFF" style="color:#000000;">
										<td width="10%" align="center" class="list-td">
											<button class="delete" value-id="<?php echo $cart['id']; ?>" type="button" style="text-decoration: none;color: #5F7ABB;">Xóa</button>
										</td>
										<td width="15%" align="center">
											<img src="<?php echo $cart['image']; ?>" style="max-height:50px; margin:5px 0;" alt="">
										</td>
										<td width="25%" style="padding:0px 10px; box-sizing:border-box;">
											<?php echo $cart['name']; ?>
										</td>
										<td width="15%" align="center">
											<?php echo number_format($cart['price']); ?>&nbsp;<sup>đ</sup>
										</td>
										<td width="10%" align="center">
											<input value-id="<?php echo $cart['id']; ?>" type="text" name="product1385" value="<?php echo number_format($cart['qty']); ?>" class="keyup" maxlength="5" size="1" style="text-align:center; border:1px solid #d2d2d2; padding:3px 0; width: 40px;">&nbsp;
										</td>                    
										<td width="15%" align="center" value-price="<?php echo $number = number_format($cart['qty'] * $cart['price']); ?>" class="gh_an">
											<?php echo $cart['price']; ?>&nbsp;<sup>đ</sup>
										</td>
									</tr>
								<?php endforeach; endif; ?>
								<tr>
									<td colspan="6" style="background:#F0F0F0; height:55px; text-align:right; padding-right:10px;">
										Tổng tiền: <string id="sum"><?php echo number_format( $this->cart->total() ) ?>&nbsp;</string><sup>đ</sup>
									</td>
								</tr>
							</tfoot>
						</table>	
						<div class="clear" style="height:40px;"></div>
					</form>
				</div><!--.left_gh-->


				<div class="right_gh">
					<div class="td_gh">Thông tin khách hàng</div>

					<div class="frm_lienhe">
						<form name="frm_order" id="frm_order">

							<div class="item_lienhe"><p class="no">HT thanh toán:<span>*</span></p>
								<select name="httt" id="httt">
									<option value="">Chọn hình thức thanh toán</option>
									<option value="2">Chuyển Khoản</option>
									<option value="1">Tiền Mặt</option>
								</select></div>

								<div class="item_lienhe">
									<p class="no">Họ và tên:<span>*</span></p>
									<input name="hoten" type="text" id="hoten" placeholder="Nhập họ tên"></div>

									<div class="item_lienhe">
										<p class="no">Điện thoại:<span>*</span></p>
										<input onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" name="dienthoai" id="dienthoai" placeholder="Số điện thoại" type="text">
									</div>

									<div class="item_lienhe">
										<p class="no">Địa chỉ:<span>*</span></p>
										<input name="diachi" type="text" id="diachi" placeholder="Đia chỉ">
									</div>

									<div class="item_lienhe">
										<p class="no">E-mail:</p><input name="email" type="text" id="email" placeholder="Nhập email">
									</div>

									<div class="item_lienhe"><p class="no">Ghi chú:</p><textarea name="noidung" cols="50" rows="4"></textarea></div>

								</div>

								<div style="text-align:center;">
									<input class="btn button click_ajax" type="button" value="Tiếp tục mua hàng" onclick="window.location.href='index.html'" style=" border:1px solid #000; color:#000; background:#fff; padding:6px 25px; border-radius:0;">
									<button title="Đặt hàng" type="button" id="id_oder" class="click_ajax click_ajax2" style="background:#000; color:#fff; border:1px solid#000;padding:6px 25px; border-radius:0; margin-left:12px;">	Đặt hàng</button>
									<div align="center" id="messages"></div>
								</div>
							</form>
						</div>
						<div class="clear"></div>
					</div>
				</div>

			</div>
			<div id="left">
				<div id="left1">
					<div id="danhmuc" class="danhmuc">
						<?php $this->load->view('frontend/'.$this->theme_name.'/models/sidebar.php'); ?>
					</div>
				</div>

				<div class="clear"></div>
			</div>
		</div>
		<?php $this->load->view('frontend/'.$this->theme_name.'/footer'); ?>
		<?php } ?>