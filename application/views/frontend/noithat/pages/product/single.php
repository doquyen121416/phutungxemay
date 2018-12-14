<?php 

if (!empty($product)) { 
	$this->mproduct->view_plus( $product['product_id'], '1' );
	?>

	<?php $this->load->view('frontend/'.$this->theme_name.'/header'); ?>
	<?php $images = json_decode($product['product_imglist']); ?>
	<style>

	.container img {
		vertical-align: middle;
		width: 100%;
	}

	/* Position the image container (needed to position the left and right arrows) */
	.container {
		position: relative;
	}

	/* Hide the images by default */
	.mySlides {
		display: none;
		width: 50%;
	}

	/* Add a pointer when hovering over the thumbnail images */
	.cursor {
		cursor: pointer;
	}

	/* Next & previous buttons */
	.prev,
	.next {
		cursor: pointer;
		position: absolute;
		top: 40%;
		width: 50%;
		padding: 16px;
		margin-top: -50px;
		color: white;
		font-weight: bold;
		font-size: 20px;
		border-radius: 0 3px 3px 0;
		user-select: none;
		-webkit-user-select: none;
	}

	/* Position the "next button" to the right */
	.next {
		right: 0;
		border-radius: 3px 0 0 3px;
	}

	/* On hover, add a black background color with a little bit see-through */
	.prev:hover,
	.next:hover {
		background-color: rgba(0, 0, 0, 0.8);
	}

	/* Number text (1/3 etc) */
	.numbertext {
		color: #f2f2f2;
		font-size: 12px;
		padding: 8px 12px;
		position: absolute;
		top: 0;
	}

	.row:after {
		content: "";
		display: table;
		clear: both;
	}

	/* Six columns side by side */
	.column {
		float: left;
		width: 16.66%;
	}

	/* Add a transparency effect for thumnbail images */
	.demo {
		opacity: 0.6;
	}

	.active,
	.demo:hover {
		opacity: 1;
	}
</style>



<div id="main_content">
	<div id="right">


		<div class="duongdan">
			<a href="<?php base_url(); ?>"><span class="tencty">Trang chủ</span></a>
			<span class="duongdan1"> / </span>
			<a href="loai-san-pham/<?php echo $category['category_slug'] ?>">
				<span><?php echo $category['category_name'] ?></span>
			</a>
			<span class="duongdan1"> / </span>
			<a href="san-pham/<?php echo $product['product_slug'] ?>">
				<span><?php echo $product['product_name'] ?></span>
			</a>
		</div>

		<div class="box_container">
			<div class="wap_pro">
				<div class="zoom_slick">    
					<div class="slick2 slick-initialized slick-slider">                
						<div aria-live="polite" class="slick-list draggable">
							<div class="slick-track" role="listbox" style="opacity: 1; width: 834px;">
								<?php if (!empty($images)) : ?>
									<div class="container">
										<?php foreach ( $images as $item => $image ) : ?>
											<div class="mySlides">
												<div class="numbertext"><?php echo ($item+1).'/'.sizeof($images); ?></div>
												<img src="<?php echo $image; ?>" style="width:100% ; height: auto;">
											</div>
										<?php endforeach ?>

										<a class="prev" onclick="plusSlides(-1)">❮</a>
										<a class="next" onclick="plusSlides(1)">❯</a>

										<div class="row">
											<?php foreach ( $images as $item => $image ) : ?>
												<div class="column">
													<img class="demo cursor" src="<?php echo $image; ?>" style="width:100%" onclick="currentSlide(<?php echo ($item+1); ?>)" alt="">
												</div>
											<?php endforeach ?>
										</div>
									</div>
								<?php endif; ?>
							</div>
						</div>


					</div><!--.slick-->
				</div><!--.zoom_slick--> 

				<form id="form-add-product">
					<ul class="product_info">
						<li class="ten">
							<?php echo $product['product_name'] ?>
							<input type="hidden" name="product_name" id="product_name" value="<?php echo $product['product_name'] ?>">
						</li>    
						<li class="giacu">
							Giá thị trường: <?php echo $product['product_price'] ?> vnđ
						</li>  
						<li class="gia">
							Giá khuyến mãi: <?php echo $product['product_pricesale'] ?>  vnđ
							<input type="hidden" name="price" id="price" value="<?php echo empty($product['product_price'] >= $product['product_pricesale'])?$product['product_pricesale']:$product['product_price'] ?>">
						</li>
						<li>
							<b>Số lượng:</b> 
							<input type="number" min="1" value="1" class="soluong" name="qty" id="qty" >
							<input type="hidden" min="1" value="<?php echo $product['product_id'] ?>" class="soluong" name="product_id" id="product_id">
						</li>  
						<li>
							<b>Lượt xem:</b> <span> <?php echo $product['product_view']; ?></span>
						</li>     
						<li>
							<input type="hidden" id="product_img" name="product_img" value="<?php echo $product['product_img'] ?>">
							<button type="button" id="add-cart" class="dathang">Đặt mua</button>

							<div class="hotline_abc1">Hotline: <?php echo $config['config_phone']; ?></div>
							<div class="clear"></div>
						</li>      
						<li>
							<p>
								<span style="color:#000099;">
									<span style="font-size:16px;">
										<span style="font-family:times new roman,times,serif;">
											<strong>- Miễn phí giao hàng các quận của TP.HCM cho đơn hàng 1.000.000Đ<br>
											- Ship COD toàn quốc</strong>
										</span>
									</span>
								</span>
							</p>
						</li>
						<div class="clear"></div>
					</ul>
				</form>
				<div class="clear"></div>  
			</div><!--.wap_pro-->

			<div id="tabs">   
				<ul id="ultabs">				 
					<li data-vitri="0" class="active">Thông tin sản phẩm</li>   
				</ul>
				<div style="clear:both"></div>

				<div id="content_tabs">               
					<div class="tab" style="display: block;">

						<p><?php echo $product['product_detail'] ?></p>

					</div>  
				</div><!---END #content_tabs-->
			</div><!---END #tabs-->
			<div class="clear"></div>
		</div><!--.box_containerlienhe-->

		<div class="tieude_giua"><span class="tieude_giuaspan">Sản phẩm cùng loại</span></div>
		<div class="wap_item">

			<?php if ( !empty($relations)) : foreach ( $relations as $key => $relation ) : ?>

				<div class="item">
					<p class="sp_img zoom_hinh hover_sang1">
						<a href="san-pham/<?php echo $relation['product_slug']; ?>" title="DÂY CUROA NOZZA (HÃNG YAMAHA)">
							<img src="<?php echo $relation['product_img']; ?>" alt="DÂY CUROA NOZZA (HÃNG YAMAHA)">
						</a>
					</p>
					<h3 class="sp_name">
						<a href="san-pham/<?php echo $relation['product_slug']; ?>" title="<?php echo $relation['product_name']; ?>">
							<?php echo $relation['product_name']; ?>
						</a>
					</h3>
					<div class="sp_gia">
						<div class="gia"><?php echo $relation['product_pricesale']; ?> vnđ</div>
						<div class="giacu"><?php echo $relation['product_price']; ?> vnđ</div>
					</div>
					<div class="phantram">
						<?php if (number_format(( $relation['product_pricesale'] * 100)/$relation['product_price'] )!=0) : ?>
							<div class="phantram">
								<?php echo '-'.number_format(( $relation['product_pricesale'] * 100)/$relation['product_price'] ); ?>%
							</div>

							<?php else: ?>
								<div class="phantram">
									new
								</div>
							<?php endif; ?>
						</div>
						<div class="giohang div_gh1" data-idsp="1386"></div>
						<div class="clear"></div>
						<div class="danhgia">
							<div class="ratingblock">
								<div id="unit_long1386">  
									<ul id="unit_ul1386" class="unit-rating" style="width:65px;">     
										<li>
											<a href="rating/db.php?j=1&amp;q=1386&amp;t=172.68.253.175&amp;c=5" title="1 out of 5" class="r1-unit rater" rel="nofollow">1</a>
										</li>
										<li>
											<a href="rating/db.php?j=2&amp;q=1386&amp;t=172.68.253.175&amp;c=5" title="2 out of 5" class="r2-unit rater" rel="nofollow">2</a>
										</li>
										<li>
											<a href="rating/db.php?j=3&amp;q=1386&amp;t=172.68.253.175&amp;c=5" title="3 out of 5" class="r3-unit rater" rel="nofollow">3</a>
										</li>
										<li>
											<a href="rating/db.php?j=4&amp;q=1386&amp;t=172.68.253.175&amp;c=5" title="4 out of 5" class="r4-unit rater" rel="nofollow">4</a>
										</li>
										<li>
											<a href="rating/db.php?j=5&amp;q=1386&amp;t=172.68.253.175&amp;c=5" title="5 out of 5" class="r5-unit rater" rel="nofollow">5</a>
										</li>  
									</ul>
								</div>
							</div>
						</div>
					</div>

				<?php endforeach; endif; ?>


				<div class="clear"></div>
			</div><!---END .wap_item-->


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
