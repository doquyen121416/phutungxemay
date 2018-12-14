<?php
  //var_dump($products);
?>
<?php $this->load->view("backend/header"); ?>
<h2>Danh sách sản phẩm</h2>
<div class="row clearfix">
  <div  id="list-product" class="px-3 pt-2">
    <div class="adding-product">
      <p id="messages" class="float-left my-1">&nbsp;</p>
      <a href="admin/product/insert" class="btn btn-info mx-1 float-right">
        <i class="fas fa-plus"></i>&nbsp;<span>Thêm Sản Phẩm</span>
      </a>
      <a href="admin/product/trash" class="btn btn-secondary mx-1 float-right">
        <i class="fas fa-trash-alt"></i>&nbsp;<span>Thùng Rác</span>
      </a>
    </div>
    <div class="clearfix"></div>
    <div class="card mb-3 my-2">
      <div class="card-header">
        <i class="fas fa-table"></i>&nbsp;
        <span>Danh sách sản phẩm</span>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th class="list-td">Hình ảnh</th>
                <th>Tên sản phẩm</th>
                <th>Số lượng</th>
                <th>Chức năng</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <th class="list-td">Hinh ảnh</th>
                <th>Tên sản phẩm</th>
                <th>Số lượng</th>
                <th>Chức năng</th>
              </tr>
            </tfoot>
            <tbody>
              <?php foreach ( $products as $key => $product ) : ?>
                <tr value-data="<?php echo $product["product_id"] ?>" class="html-parent">
                  <td class="checkbox list-td">
                    <img style="width: 150px; height: auto;" src="<?php echo $product['product_img'] ?>">
                  </td>
                  <td>
                    <a href="admin/product/update/<?php echo $product["product_id"] ?>">
                      <?php  echo $this->library->count_text($product["product_name"], 10) ?>
                      </a>
                  </td>
                  <td class="list-td"><?php echo $product["product_number"] ?></td>
                  <td class="list-td">
                    <a href="admin/product/update/<?php echo $product["product_id"] ?>">
                    <button type="button"class="btn btn-success mx-1 repair">
                      <i class="fas fa-cogs"></i>&nbsp;<span>Sửa</span>
                    </button>
                    </a>
                    <button value-data="<?php echo $product["product_id"] ?>" type="button" class="btn btn-primary mx-1 hidden">
                      <i class="fas fa-minus-circle"></i>&nbsp;<span>Xóa</span>
                    </button>
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

<?php $this->load->view("backend/footer"); ?>
