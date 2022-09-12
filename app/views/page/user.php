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
                            <h1 class="m-0">DANH SÁCH NGƯỜI DÙNG</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">users</li>
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
                                    <h3 class="card-title">User</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <table id="example2" class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>name</th>
                                                <th>email</th>
                                                <th>phone</th>
                                                <th>quyền</th>
                                                <th>tác vự</th>
                                            </tr>
                                        </thead>
                                                        <style>
                                                            .change_pg{
                                                                transition: none;
                                                                list-style: none;
                                                            }
                                                        </style>
                                        <tbody>       
                                            <?php foreach($user as $row){?>
                                                <tr>
                                                <td><?=$row['full_name']?></td>
                                                <td><?=$row['email']?></td>
                                                <td><?=$row['phone']?></td>
                                                <td class="change_pg"><?php
                                                    if($row['status']==1){
                                                        echo "<a type='button' class='btn btn-outline-primary'  href='"._WEB_ROOT."/user/change_decentralization?id_user=".$row['id_user']."&status=".$row['status']."'>Admin</a>";
                                                    }else{echo "<a type='button' class='btn btn-outline-success'  href='"._WEB_ROOT."/user/change_decentralization?id_user=".$row['id_user']."&status=".$row['status']."'>user</a>";}
                                                
                                                ?></a></td>
                                                <td><?php  echo  "<a  type='button' class='btn btn-danger' href='"._WEB_ROOT."/user_delete?id_user=".$row['id_user']."'>xóa</a>"?></td>
                                            </tr>
                                            <?php } ?>
                            

                                        </tbody>
                                        <!-- <tfoot>
                      <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                      </tr>
                    </tfoot> -->
                                    </table>
                                    <nav aria-label="Page navigation example">
            <ul class="pagination" style="justify-content: center;padding-top: 2rem;">
                <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
                </li>
                <?php
                    for($i=1;$i<=$page_id_user;$i++){
                        echo '<li class="page-item"><a class="page-link" href="'._WEB_ROOT.'/user_pg?page_user='.$i.'">'.$i.'</a></li>' ;        
                        
                    };                
                ?>
                <!-- <li class="page-item"><a class="page-link" href="<?=_WEB_ROOT?>/admin/movie/paging_mv?page=1">1</a></li>
                <li class="page-item"><a class="page-link" href="<?=_WEB_ROOT?>/admin/movie/paging_mv?page=2">2</a></li>
                <li class="page-item"><a class="page-link" href="<?=_WEB_ROOT?>/admin/movie/paging_mv?page=3">3</a></li>
                <li class="page-item"><a class="page-link" href="<?=_WEB_ROOT?>/admin/movie/paging_mv?page=4">4</a></li> -->
                <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
                </li>
            </ul>
            </nav>
    </div>
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
        <script src="plugins/jquery/jquery.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button)
        </script>
        <!-- Bootstrap 4 -->
        <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- ChartJS -->
        <script src="plugins/chart.js/Chart.min.js"></script>
        <!-- Sparkline -->
        <script src="plugins/sparklines/sparkline.js"></script>
        <!-- JQVMap -->
        <script src="plugins/jqvmap/jquery.vmap.min.js"></script>
        <script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="plugins/jquery-knob/jquery.knob.min.js"></script>
        <!-- daterangepicker -->
        <script src="plugins/moment/moment.min.js"></script>
        <script src="plugins/daterangepicker/daterangepicker.js"></script>
        <!-- Tempusdominus Bootstrap 4 -->
        <script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
        <!-- Summernote -->
        <script src="plugins/summernote/summernote-bs4.min.js"></script>
        <!-- overlayScrollbars -->
        <script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/adminlte.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="dist/js/pages/dashboard.js"></script>
</body>
<?php require_once _DIR_ROOT . "/app/views/blocks/footer.php" ?>
</html>