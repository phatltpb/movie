





<?php require_once _DIR_ROOT . "/app/views/blocks/header.php" ?>
<!-- <?php foreach($data as $row){
        var_dump($row['id_movie']);
    }?> -->
<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- /.content-header --> 
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <table id="example2" class="table table-bordered table-hover">
                                        <!-- /.card-header -->
                                        <div class="card-body">
                                            <?php foreach($data as $row) {?> 
                                            <form action="<?php echo _WEB_ROOT?>/admin/movie/post_update_movie?id_mv=<?=$row['id_movie']?>" method="post" enctype="multipart/form-data">
                              
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <!-- text input -->
                                                    <!-- <div name="id_movie" value="<?=$row['id_movie']?>"></div> -->
                                                        <div class="form-group">
                                                            <label>tên phim</label>
                                                            <input type="text" class="form-control" value="<?=$row['name_mv']?>" name="name_mv" disabled> 
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>diễn viên</label>
                                                            <input type="text" class="form-control" value="<?=$row['actor']?>" name="actor">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <!-- textarea -->
                                                        <div class="form-group">
                                                            <label>nội dung</label>
                                                            <textarea class="form-control" rows="3" placeholder="<?=$row['detail']?>" name="detail"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label>ảnh</label>
                                                        <input type="file" class="form-control" placeholder="Enter ..." style="height: 84px ;" name="file_img" >
                                                        <div class="form-group">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <!-- text input -->
                                                        <div class="form-group">
                                                            <label>tên phim tiếng việt</label>
                                                            <input type="text" class="form-control" placeholder="Enter ..." value="<?=$row['name_vn']?>" name="name_vn">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>đạo diễn</label>
                                                            <input type="text" class="form-control" placeholder="Enter ..." value="<?=$row['director']?>" name="director">
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <!-- text input -->
                                                        <div class="form-group">
                                                            <label>nhà sản xuất</label>
                                                            <input type="text" class="form-control" placeholder="Enter ..." value="<?=$row['production']?>" name="production">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>thời gian chiếu</label>
                                                            <input type="text" class="form-control" placeholder="Enter ..." value="<?=$row['time_mv']?>" name="time_mv">
                                                        </div>

                                                    </div>
                                                </div>


                                                <!-- input states -->
                                                <div class="form-group">
                                                    <label class="col-form-label" for="inputSuccess"><i class="fas fa-check"></i> link traller</label>
                                                    <input type="text" class="form-control is-valid" id="inputSuccess" placeholder="Enter ..." value="<?=$row['traller']?>" name="traller">
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-form-label" for="inputWarning"><i class="far fa-bell"></i>ngày công chiếu</label>
                                                    <input type="date" class="form-control is-warning" id="inputWarning" placeholder="Enter ..." value="<?=$row['date_start']?>" name="date_start">
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-form-label" for="inputError"><i class="far fa-times-circle"></i> ngày kết thúc</label>
                                                    <input type="date" class="form-control is-invalid" id="inputError" placeholder="Enter ..." value="<?=$row['date_end']?>" name="date_end">
                                                </div>


                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <!-- select -->
                                                        <div class="form-group">
                                                            <label>thể loại</label>
                                                            <input type="text" class="form-control" id="inputError" placeholder="Enter ..." value="<?=$row['cate']?>" name="cate" disabled>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>quốc gia</label>
                                                            <input type="text" class="form-control" id="inputError" placeholder="Enter ..." value="<?=$row['country']?>" disabled>
                                                            <!-- <select class="form-control">
                                                                <option>mỹ</option>
                                                                <option>việt nam</option>
                                                                <option>anh</option>
                                                                <option>pháp</option>
                                                                <option>nga</option>
                                                            </select> -->
                                                        </div>
                                                    </div>
                                                </div>
                                                <?php } ?>
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
<?php require_once _DIR_ROOT . "/app/views/blocks/footer.php" ?>

</body>

</html>