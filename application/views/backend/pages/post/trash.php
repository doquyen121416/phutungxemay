<?php $this->load->view("backend/header"); ?>
<h2>Thùng rác</h2>
<div class="row clearfix">
  <div  id="list-product" class="px-3 pt-2">
    <div class="adding-product">
      <p id="messages" class="float-left my-1">&nbsp;</p>
      <a href="admin/post" class="btn btn-info mx-1 float-right">
        <i class="fas fa-arrow-left"></i>&nbsp;<span>Quay lại</span>
      </a>
      <a href="admin/product" class="btn btn-secondary mx-1 float-right">
        <i class="far fa-trash-alt"></i>&nbsp;<span>Xóa tất cả</span>
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
                <th>Tên</th>
                <th>Khôi phục</th>
                <th>Xóa vinh viễn</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <th>Tên</th>
                <th>Khôi phục</th>
                <th>Xóa</th>
              </tr>
            </tfoot>
            <tbody>
              <?php foreach ( $posts as $key => $post ) : ?>
                <tr class="html-parent">
                  <td>
                    <a href="admin/posts/update/<?php echo $post["post_id"] ?>">
                      <?php echo $this->library->count_text($post["post_title"], 10); ?>
                    </a>
                  </td>
                  <td  class="list-td">
                    <button value-data="<?php echo $post["post_id"] ?>" type="button" class="btn btn-success mx-1 retrash_info">
                      <i class="fas fa-exchange-alt"></i>&nbsp;<span>Khôi phục</span>
                    </button>
                  </td>
                  <td class="list-td">
                    <button value-data="<?php echo $post["post_id"] ?>" type="button" class="btn btn-primary mx-1 hidden_delete">
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