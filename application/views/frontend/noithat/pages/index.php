<?php $this->load->view('frontend/'.$this->theme_name.'/header'); ?>
<div id="slider">


	<div class="bao_slider">
		<div class="width88">
			<div class="slider_left">
				<?php $this->load->view('frontend/'.$this->theme_name.'/models/sidebar.php'); ?>
			</div>
			<div class="slider_center">

				<div id="slider1_container" style="position: relative;width: 671px; height: 338px;">
					<!-- Slides Container -->
					<div u="slides" style="cursor: move;width: 671px; height: 338px;overflow: hidden;">

						<?php foreach ( $sliders as $key => $slider ) : 
							// xữ lý tướng hợp hình lỗi
							$image = empty($slider['slider_img'])?"https://placeholder.com/671x338":$slider['slider_img'];
							?>

							<div><a href="<?php echo !empty($slider['slider_url'])?$slider['slider_url']:"#"; ?>">
								<img u="image" src="public/images/<?php echo $image; ?>" alt="<?php echo !empty($slider['slider_img']); ?>" /></a>
							</div>

						<?php endforeach; ?>

					</div>
					<!-- Trigger -->

					<!-- Arrow Left -->
					<span u="arrowleft" class="jssora05l" style="top:40%;"></span>
					<!-- Arrow Right -->
					<span u="arrowright" class="jssora05r" style="top:40%;"></span>
				</div><!-- Jssor Slider End -->
			</div>
			<div class="slider_right">
				<div class="bao_qcdoc">

					<div class="qcdoc2">
						<a href="#">
							<img src="public/images/km-trang-tri-2577.jpg" /> 
						</a>
					</div>
				</div>
			</div>
			<div class="clear"></div>

		</div>
	</div>


<div id="main_content">
	<div class="right_1">

		<div class="tieude_giua1"><span class="tieude_giuaspan">SẢN PHẨM NỔI BẬT</span></div>
		<div class="ds_spnb">

			<?php foreach ( $view_products as $key => $product ) : ?>
				<div class="item1">
					<p class="sp_img zoom_hinh hover_sang1">
						<a href="san-pham/<?php echo $product['product_slug'] ?>" title="<?php echo $product['product_name']; ?>">
							<img src="<?php echo $product['product_img'] ?>" alt="<?php echo $product['product_name']; ?>" /></a>
						</p>
						<h3 class="sp_name"><a href="san-pham/<?php echo $product['product_slug'] ?>" title="<?php echo $product['product_name']; ?>" ><?php echo $product['product_name']; ?></a></h3>
						<div class="sp_gia">
							<div class="gia"><?php echo number_format( $product['product_pricesale']); ?></div>
							<div class="giacu" ><?php echo number_format( $product['product_price']); ?></div>
						</div>
						<?php if (number_format(( $product['product_pricesale'] * 100)/$product['product_price'] )!=0) : ?>
							<div class="phantram">
								<?php echo number_format(( $product['product_pricesale'] * 100)/$product['product_price'] ); ?>%
							</div>
						<?php endif; ?>
						<div class="giohang div_gh1"  data-idsp="<?php echo $product['product_id']; ?>"></div>

					</div><!---END .item-->
				<?php endforeach; ?>
			</div><!---END .ds_spnb-->

			<section id="saleproductContainer">
				<div class="bao_dsdmsp">
					<div class="tieude_giua"><span class="tieude_giuaspan">HÀNG MỚI</span>
						<div class="sptren1">
							<ul>
								<li class="tabtab"><span><a href="san-pham">TẤT CẢ</a></span></li>
							</ul>
						</div>

					</div>

					<div class="bao_sptheodm">
						<div class="hinh_dmsp"  style="float:left;" >
							<img src="public/images/km-cong-ty-0936.jpg" />
						</div>
						<div class="ds_sptheodm them_nhe0"  style="float:right;">

							<?php foreach ( $new_products as $key => $product ) : ?>
								<div class="item">
									<div class="phantram">
										<?php if (number_format(( $product['product_pricesale'] * 100)/$product['product_price'] )!=0) : ?>
											<div class="phantram">
												<?php echo '-'.number_format(( $product['product_pricesale'] * 100)/$product['product_price'] ); ?>%
											</div>

											<?php else: ?>
												<div class="phantram">
													new
												</div>
											<?php endif; ?>
										</div>
										<p class="sp_img zoom_hinh hover_sang1">
											<a href="san-pham/<?php echo $product['product_slug'] ?>" title="ĐUÔI SAU WINNER HÀNG ZIN HONDA">
												<img src="<?php echo $product['product_img'] ?>" alt="ĐUÔI SAU WINNER HÀNG ZIN HONDA" /></a>
											</p>
											<h3 class="sp_name"><a href="san-pham/<?php echo $product['product_slug'] ?>" title="<?php echo $product['product_name'] ?>" ><?php echo $product['product_name'] ?></a></h3>
											<div class="sp_gia">
												<div class="gia"><?php echo number_format( $product['product_price']); ?> vnđ</div>
											</div>
											<div class="giohang div_gh1" data-idsp="<?php echo $product['product_id']; ?>"></div>

										</div>
									<?php endforeach; ?>

								</div>
							</div>
							<div class="clear"></div>
						</div>
					</section>

					<section  id="newproductContainer">
						<div class="tieude_giua"><span class="tieude_giuaspan">HÀNG GIÁM GIÁ</span>
							<div class="sptren1">
								<ul>
									<li class="tabtab"><span><a href="san-pham">TẤT CẢ</a></span></li>
								</ul>
							</div>

						</div>

						<div class="bao_sptheodm">
							<div class="hinh_dmsp"  style="float:right;" >
								<img src="public/images/km-cong-ty-0936.jpg" />
							</div>
							<div class="ds_sptheodm them_nhe1"  style="float:left;" >

								<?php foreach ( $sale_products as $key => $product ) : ?>
									<div class="item">
										<?php if (number_format(( $product['product_pricesale'] * 100)/$product['product_price'] )!=0) : ?>
											<div class="phantram">
												<?php echo number_format(( $product['product_pricesale'] * 100)/$product['product_price'] ); ?>%
											</div>
										<?php endif; ?>
										<p class="sp_img zoom_hinh hover_sang1"><a href="san-pham/<?php echo $product['product_slug'] ?>" title="ĐUÔI SAU WINNER HÀNG ZIN HONDA">
											<img src="<?php echo $product['product_img'] ?>" alt="ĐUÔI SAU WINNER HÀNG ZIN HONDA" /></a>
										</p>
										<h3 class="sp_name"><a href="san-pham/<?php echo $product['product_slug'] ?>" title="<?php echo $product['product_name'] ?>" ><?php echo $product['product_name'] ?></a></h3>
										<div class="sp_gia">
											<div class="gia"><?php echo number_format( $product['product_pricesale']); ?> vnđ</div>
											<div class="giacu" ><?php echo number_format( $product['product_price']); ?> vnđ</div>
										</div>
										<div class="giohang div_gh1" data-idsp="<?php echo $product['product_id']; ?>"></div>

									</div>
								<?php endforeach; ?>

							</div>
						</div>
						<div class="clear"></div>
					</section>







				</div><!---END #right-->
			</div><!---END #main_content-->

			<?php $this->load->view('frontend/'.$this->theme_name.'/footer'); 