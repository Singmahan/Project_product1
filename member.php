
<?php 
    include('h.php'); 
    error_reporting( error_reporting() & ~E_NOTICE ); //ตัวปิดแจ้งเตือน error
?>

<div class="container">
    <?php include('navbar.php'); ?>
    <p></p>
    <div class="row">
        <div class="col-md-3">
            <!-- Left side column. contains the logo and sidebar -->
            <?php include('menu_left.php'); ?>
            <!-- Content Wrapper. Contains page content -->
        </div>
        <div class="col-md-9">
            <a href="member.php?act=add" class="btn btn-primary btn-sm">+ เพิ่มสมาชิก</a>
            <?php
            $act = $_GET['act'];
            if ($act == 'add') {
                include('member_form_add.php');
            } elseif ($act == 'edit') {
                include('member_form_edit.php');
            } else {
                include('member_list.php');
            }
            ?>
        </div>
    </div>
</div>
<?php include('f.php'); ?>