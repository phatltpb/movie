
        <?php require_once _DIR_ROOT . "/app/views/blocks/header.php" ?>
<body class="hold-transition sidebar-mini layout-fixed">

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Thêm người dùng</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">thêm users</li>
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
                                    <h3 class="card-title">thêm user</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <table id="example2" class="table table-bordered table-hover">

                                        <!-- /.card-header -->
                                        <div class="card-body">
                                            <form>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <!-- text input -->
                                                        <div class="form-group">
                                                            <label>tên người dùng</label>
                                                            <input type="text" class="form-control" placeholder="Enter ...">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>email</label>
                                                            <input type="email" class="form-control" placeholder="Enter ...">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <!-- text input -->
                                                        <div class="form-group">
                                                            <label>số điện thoại</label>
                                                            <input type="text" class="form-control" placeholder="Enter ...">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>mật khẩu</label>
                                                            <input type="password" class="form-control" placeholder="Enter ...">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <!-- select -->
                                                        <div class="form-group">
                                                            <label>phân quyền</label>
                                                            <select class="form-control">
                                                                <option>Admin</option>
                                                                <option>user</option>

                                                            </select>
                                                        </div>
                                                    </div>

                                                </div>

                                            </form>
                                        </div>
                                        <!-- /.card-body -->



                                        <button class="btn btn-primary btn-block mb-3">submit</button>
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