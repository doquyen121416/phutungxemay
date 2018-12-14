<?php 

if (!empty($products)) { ?>

	<?php $this->load->view('frontend/'.$this->theme_name.'/header'); ?>



	<div id="main_content">
		<div id="right">


			<div class="duongdan">
				<a href="<?php base_url(); ?>"><span class="tencty">Trang chủ</span></a>
				<span class="duongdan1"> | </span>
				<a href="<?php echo $title['slug']; ?>">
					<span><?php echo $title['name']; ?></span>
				</a>
			</div>

			<div class="box_container">
				<div class="wap_item">        
					<?php if ( !empty($products)) : foreach ( $products as $key => $product ) : ?>

						<div class="item">
							<p class="sp_img zoom_hinh hover_sang1">
								<a href="san-pham/<?php echo $product['product_slug']; ?>" title="DÂY CUROA NOZZA (HÃNG YAMAHA)">
									<img src="<?php echo $product['product_img']; ?>" alt="DÂY CUROA NOZZA (HÃNG YAMAHA)">
								</a>
							</p>
							<h3 class="sp_name">
								<a href="san-pham/<?php echo $product['product_slug']; ?>" title="<?php echo $product['product_name']; ?>">
									<?php echo $product['product_name']; ?>
								</a>
							</h3>
							<div class="sp_gia">
								<div class="gia"><?php echo $product['product_pricesale']; ?> vnđ</div>
								<div class="giacu"><?php echo $product['product_price']; ?> vnđ</div>
							</div>
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
								<div class="giohang div_gh1" data-idsp="1386"></div>
								<div class="clear"></div>
							</div>

						<?php endforeach; endif; ?>

						<div class="pagination">
							<!-- phân trang  -->
							<?php echo  $this->pagination->create_links(); ?>

						</div>
						<div class="clear"></div>  
					</div><!--.wap_pro-->
					<div class="clear"></div>
				</div><!--.box_containerlienhe-->
				

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
	} else {
		show_404();
	} ?>
