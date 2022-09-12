
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
              <h1 class="m-0">DANH SÁCH XUẤT CHIẾU</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">xuất chiếu</li>
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
                  <h3 class="card-title">XUẤT CHIẾU</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>tên film</th>
                        <th>ngày</th>
                        <th>khung giờ</th>
                        <th>Phòng chiếu</th>
                        <th>thao tác</th>
                      </tr>
                    </thead>

                    <tbody>
                      <?php foreach($premiere as $row){?>
                        <tr>
                        <td><?=$row['name_mv']?></td>
                        <td><?=$row['day']?></td>
                        <td><?=$row['time_start']?></td>
                        <td><?=$row['name']?></td>
                        <td style="width: 20%;"><a href="<?=_WEB_ROOT?>/delete_pr?id_pr=<?=$row['id_session']?>"><button class="btn btn-danger btn-block mb-3" style="width: 30%;">xóa</button></a>
                            <a href="<?=_WEB_ROOT?>/show_update_pr?id_se=<?=$row['id_session']?>"><button class="btn btn-primary btn-block mb-3" style="width: 30%;">sửa</button></a>
                        </td>
                        
                      </tr>

                        <?php } ?>
                    </tbody>
    
                  </table>
                  <nav aria-label="Page navigation example">
            <ul class="pagination" style="justify-content: center;padding-top: 2rem;">
                <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
                </li>
                <?php
                // var_dump($page_id_pr);
                    for($i=1;$i<=$page_id_pr;$i++){
                        echo '<li class="page-item"><a class="page-link" href="http://localhost/php%202/asm/premiere_pr?page_pr='.$i.'">'.$i.'</a></li>' ;        
                        
                    };                
                ?>
                <!-- <li class="page-item"><a class="page-link" href="<?=_WEB_ROOT?>/admin/premiere/paging_premiere?page=1">1</a></li>
                <li class="page-item"><a class="page-link" href="<?=_WEB_ROOT?>/admin/premiere/paging_premiere?page=2">2</a></li>
                <li class="page-item"><a class="page-link" href="<?=_WEB_ROOT?>/admin/premiere/paging_premiere?page=3">3</a></li>
                <li class="page-item"><a class="page-link" href="<?=_WEB_ROOT?>/admin/premiere/paging_premiere?page=4">4</a></li> -->
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
   
    <?php require_once _DIR_ROOT . "/app/views/blocks/footer.php" ?>
</body>

</html>