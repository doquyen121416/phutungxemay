<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Dashboard</title>
    <base href="<?php echo base_url(); ?>"></base>
    <!-- Bootstrap core CSS-->
    <link href="public/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="public/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="public/admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="public/admin/css/sb-admin.css" rel="stylesheet">

    <!-- custom styles -->

    <link href="public/admin/styles/template-style.css" rel="stylesheet">

    <!-- ckeditor -->
    <script src="public/ckeditor/ckeditor.js"></script>

    <!-- ckeditor -->
    <script src="public/ckfinder/ckfinder.js"></script>
    <script>
        var url_home = <?php echo "'".base_url()."'"; ?>
    </script>

  </head>

  <body id="page-top">

<?php $this->load->view("backend/models/mainmenu"); ?>

    <div id="wrapper">
        <?php $this->load->view("backend/models/sidebar"); ?>
        <div id="content-wrapper">
            <div class="container-fluid">