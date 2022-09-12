
        <?php require_once _DIR_ROOT . "/app/views/blocks/header.php" ?>
<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Thêm xuất chiếu</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">thêm xuất chiếu</li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">thêm xuất chiếu</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <table id="example2" class="table table-bordered table-hover">
                                        <!-- /.card-header -->
                                        <div class="card-body"> 
                                        <?php
                                        foreach($pr as $r){?>
                                            <form method="POST" action="<?=_WEB_ROOT?>/pr_update?id_se=<?=$r['id_session']?>">
                                           <?php } ?>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <!-- text input -->
                                                        <div class="form-group">
                                                            <label>tên phim</label>
                                                               <?php
                                                                foreach($pr as $r){?>
                                                                   <input type="text" class="form-control" placeholder="<?=$r['name_mv']?>" disabled>
                                                               <?php }
                                                               ?>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>ngày chiếu</label>
                                                         <?php
                                                          foreach($pr as $r){?>
                                                                   <input type="date" class="form-control" placeholder="Enter ..."name="day" value="<?=$r['day']?>" disabled>
                                                          <?php }?>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <!-- select -->
                                                        <div class="form-group">
                                                            <label>tên phòng</label>
                                                            <select class="form-control" name="room">
                                                               <?php
                                                                foreach($room as $r){?>
                                                                     <option><?=$r['name']?></option>
                                                                
                                                               <?php }
                                                               ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>khung thời gian</label>
                                                            <select class="form-control" name="time">
                                                            <?php
                                                                foreach($showtimes as $r){?>
                                                                     <option><?=$r['time_start']?></option>
                                                                
                                                               <?php }
                                                               ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                    
                                                <button class="btn btn-primary btn-block mb-3">submit</button>
                                               
                                            </form>
                                        </div>
                                        <!-- /.card-body -->



                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </section>
        </div>
        <!-- /.content-wrapper -->
      
        <?php require_once _DIR_ROOT . "/app/views/blocks/footer.php" ?>
</body>

</html>