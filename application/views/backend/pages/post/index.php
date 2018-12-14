<?php
//var_dump($posts);
?>
<?php $this->load->view("backend/header"); ?>
<h2>Danh trang mới</h2>
<div class="row clearfix">
  <div  id="list-post" class="px-3 pt-2">
    <div class="adding-post">
      <p id="messages" class="float-left my-1">&nbsp;</p>
      <a href="admin/post/add" class="btn btn-info mx-1 float-right">
        <i class="fas fa-plus"></i>&nbsp;<span>Thêm Tin Tức</span>
      </a>
      <a href="admin/post/trash" class="btn btn-secondary mx-1 float-right">
        <i class="fas fa-trash-alt"></i>&nbsp;<span>Thùng Rác</span>
      </a>
      <button href="admin/posts/trash" id="delete-hidden" class="btn btn-secondary mx-1 float-right">
        <i class="far fa-calendar-times"></i>&nbsp;<span>Xóa Hết</span>
      </button>
    </div>
    <div class="clearfix"></div>
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
              <?php foreach ( $posts as $key => $post ) : ?>
                <tr class="html-parent">
                  <td>
                    <a href="admin/post/update/<?php echo $post["post_id"] ?>">
                      <?php echo $this->library->count_text($post["post_title"], 10); ?>
                    </a>
                  </td>
                  <td  class="list-td">
                    <a href="admin/post/update/<?php echo $post["post_id"] ?>" class="btn btn-success mx-1 repair">
                      <i class="fas fa-cogs"></i>&nbsp;<span>Sửa</span>
                    </a>
                  </td>
                  <td  class="list-td">
                    <button value-data="<?php echo $post["post_id"] ?>" type="button" class="btn btn-primary mx-1 hidden_hidden">
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
