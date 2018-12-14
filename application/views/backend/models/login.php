<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Đăng nhập vào admin</title>
    <base href="http://localhost/dogo/admin"></base>
    <!-- Bootstrap core CSS-->
    <link href="public/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="public/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="public/admin/css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg-dark">

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>
        <div class="card-body">
          <?php echo form_open('admin/user/login'); 
            // đường đãn dữ liệu dẽ đến và sử lý
          ?>
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" id="inputEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus" name="username" value="<?php echo set_value('username'); ?>">
                <label for="inputEmail">Nhập vào tài khoảng </label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required" name="password" value="<?php echo set_value('password'); ?>">
                <label for="inputPassword">Nhập mật khẩu </label>
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  Nhớ mật khẩu đănng nhập
                </label>
              </div>
            </div>
            <button type="submit" name="login" class="btn btn-primary btn-block" >Đăng nhập</button>
            <div class="error my-2 text-center">
              <p><?php if( isset( $error ) ) { echo $error; } ?></p>
            </div>
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="#">Đăng ký làm quản trị viên</a>
            <a class="d-block small" href="#">Không nhớ mật khẩu</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="public/admin/vendor/jquery/jquery.min.js"></script>
    <script src="public/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="public/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  </body>

</html>
