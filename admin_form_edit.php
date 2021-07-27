<?php
    //1. เชื่อมต่อ database:
    include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
    $a_id = $_REQUEST["ID"];
    //2. query ข้อมูลจากตาราง:
    $sql = "SELECT * FROM tbl_admin WHERE a_id='$a_id' ";
    $result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
    $row = mysqli_fetch_array($result);
    extract($row);
?>
<?php include('h.php'); ?>

<form name="admin" action="admin_form_edit_db.php" method="POST" id="admin" class="form-horizontal">
    <div class="form-group mt-3">
        <input type="hidden" name="a_id" value=" <?php echo $row['a_id']; ?>">
        <div class="col-sm-6" align="left">
            <input name="a_user" type="text" required class="form-control" id="a_user" value=" <?php echo $row['a_user']; ?>"  placeholder="username" pattern="^[a-zA-Z0-9]+$" title="ภาษาอังกฤษหรือตัวเลขเท่านั้น" minlength="2" />
        </div>
    </div>

    <div class="form-group mt-3">
        
        <div class="col-sm-6" align="left">
            <input name="a_pass" type="password" required class="form-control" id="a_pass" value=" <?php echo $row['a_pass']; ?>" placeholder="password" pattern="^[a-zA-Z0-9]+$" minlength="2" />
        </div>
    </div>
    <div class="form-group mt-3">
        
        <div class="col-sm-6" align="left">
            <input name="a_name" type="text" required class="form-control" id="a_name" value=" <?php echo $row['a_name']; ?>" placeholder="name" />
        </div>
    </div>

    <div class="form-group mt-3">
        <div class="col-sm-6" align="right">
            <button type="submit" class="btn btn-success form-control" id="btn"> <span class="glyphicon glyphicon-saved"></span> บันทึกข้อมูล </button>
        </div>
    </div>
</form>
<?php include('f.php'); ?>