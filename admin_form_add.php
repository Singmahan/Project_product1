<?php include('h.php'); ?>

<form name="admin" action="admin_form_add_db.php" method="POST" id="admin" class="form-horizontal">
    <div class="form-group mt-3">
        
        <div class="col-sm-6" align="left">
            <input name="a_user" type="text" required class="form-control" id="a_user" placeholder="username" pattern="^[a-zA-Z0-9]+$" title="ภาษาอังกฤษหรือตัวเลขเท่านั้น" minlength="2" />
        </div>
    </div>

    <div class="form-group mt-3">
        
        <div class="col-sm-6" align="left">
            <input name="a_pass" type="password" required class="form-control" id="a_pass" placeholder="password" pattern="^[a-zA-Z0-9]+$" minlength="2" />
        </div>
    </div>
    <div class="form-group mt-3">
        
        <div class="col-sm-6" align="left">
            <input name="a_name" type="text" required class="form-control" id="a_name" placeholder="name" />
        </div>
    </div>

    <div class="form-group mt-3">
        <div class="col-sm-6" align="right">
            <button type="submit" class="btn btn-success form-control" id="btn"> <span class="glyphicon glyphicon-saved"></span> บันทึกข้อมูล </button>
        </div>
    </div>
</form>
<?php include('f.php'); ?>