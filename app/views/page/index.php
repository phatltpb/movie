<?php require_once _DIR_ROOT . "/app/views/blocks/header.php" ?> 

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=PT+Serif&display=swap" rel="stylesheet">
<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">DANH SÁCH FILM </h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">movie</li>
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
        <h3 class="card-title">phim</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
    <table id="example2" class="table table-bordered table-hover">
    <thead>
        <tr style="text-align: center;">
            <th>Hình ảnh</th>
            <th>tên film</th>
            <th>Thể loại</th>
            <th>khởi chiếu</th>
            <th>thời lượng</th>
            <th>thao tác</th>

        </tr>
    </thead>

    <tbody>
        <?php foreach ($movie  as $row) { ?>
        <tr>
            <td style="width: 10%;"><img
                    style="width: 60%; margin: auto;display: flex;justify-content: center;"
                    src="<?= $row['image_lage'] ?>" alt=""></td>
            <td><?=$row['name_mv']?></td>
            <td><?= $row['cate'] ?></td>
            <td style="width: 10%;"><?= $row['date_start'] ?></td>
            <td><?= $row['time_mv'] ?> phút</td>

            <td style="display: flex;align-content: center;justify-content: space-around;flex-wrap: wrap;flex-direction: column;">
                <button class="btn btn-primary" type="button"
                    data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
                    aria-controls="offcanvasRight" id="id_code"
                    data-id="<?=$row['id_movie']?>">Chi tiết</button>

                <div class="offcanvas offcanvas-end" style="width: 870px;"
                    tabindex="-1" id="offcanvasRight"
                    aria-labelledby="offcanvasRightLabel">
                    <div class="offcanvas-header">
                        <h5 id="offcanvasRightLabel">
            <style>
                .show_dg{
                    display: flex;
                    flex-direction: column;
                    justify-content: space-between;
                    font-family: 'PT Serif', serif;
                }
                
                .banner_mv{
                    display: flex;
                    flex-flow: row;
                    justify-content: space-between; 
                    margin-left: 3px;
                    margin-right: 16px;  
                }
                .banner1{
                    display: flex;
                    /* padding-right: 740px; */
                }
                .banner1 div{
                        padding: 0.2rem;
                }
                .content_mv{
                    margin-top: 0.5rem;
                    border-top:  1px solid  #f3f3f3;
                    padding: 1rem;
                    display: flex;
                    flex-flow: row;
                    justify-content: space-evenly;
                }
                
                .content_mv_right{
                    text-align: center;
                }
                /* .content_mv_left{
                    padding: 0.6rem;
                } */
                .content_mv_left{
                    width: 65%;
                }
                .content_mv_left span{
                    line-height: 3rem;
                    
                }
                .content_mv_left span:nth-child(1){
                    font-weight: bolder;
                }
                .content_mv_right{
                    text-align: right;
                    width: 40%; 
                }
                .footer_mv{
                    display: flex;
                    flex-direction: row;
                    justify-content: space-between;
                    margin-left: 1.1rem;
                    margin-right: 1.4rem;
                    padding-top: 2rem;
                }
                    .content_nd_c p{
                    /* width:100%; */
                    width: 95%;
                    white-space: pre-wrap; 
                    overflow: hidden; 
                    text-overflow: ellipsis; 
                    -webkit-line-clamp: 9;
                    -webkit-box-orient: vertical;
                    display: -webkit-box;
                }
                h4{
                    font-weight: bolder;
                }   
                </style>
                            <div class="show_dg">
                
                                <div class="banner_mv">
                                    <div class="banner1">
                                        <div class="banner-right"><button style="margin-top: 0; font-size: 1.1rem;" type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close" ></button></div>
                                        <div class="banner1-left" style="font-size: 1.5rem;font-family: 'PT Serif', serif;"></div>
                                    </div>
                                    <div class="banner2" ></div>                                                      
                                </div>
                                <div class="content_mv">
                                        <div class="content_mv_left">
                                            <!--content left thông tin về film-->
                                        </div>
                                        <div class="content_mv_right">
                                            <!-- content right hình ảnh film-->
                                        </div>
                                </div>
                                <div class="footer_mv">
                                    <!--content footer-->
                                    <div class="content_nd">
                                        <h4>Nội dung chính</h4>
                                        <div class="content_nd_c">

                                        </div>
                                    </div>
                                    <div class="content_traller">
                                        <h4>traller film</h4>
                                        <div class="traller_id"> </div>
                                    </div>
                                </div>
                            </div>
                            <!-- <style>
                            .jp {
                                display: flex;
                                justify-content: space-between;
                            }
                            </style>
                            <div class="jp">
                                <div id="name_mv"></div> -->
                        
                            </div>

                        </h5>

                    </div>
                    <div class="offcanvas-body">

                    </div>
                </div>
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
                    for($i=1;$i<=$page_id;$i++){
                        echo '<li class="page-item"><a class="page-link" href="http://localhost/php%202/asm/admin/movie/paging_mv?page='.$i.'">'.$i.'</a></li>' ;        
                        
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
        <!-- /.card-body -->
    </div>
    </div>
    <!-- /.col -->
    </div>
    <!-- /.row -->
    </div>
    </section>
    </div>
    <?php require_once _DIR_ROOT . "/app/views/blocks/footer.php" ?>
    </body>

    </html>
    <script>
        $(document).ready(function() {
        function data_MV(id_del) {
                $.ajax({
                    url: "<?php echo _WEB_ROOT;?>/admin/movie/movie_one",
                    method: "POST",
                    dataType: "json",

                    data: {
                        id_del: id_del
                    },

                    success: function(data) {
                        //   alert('xoa thanh cong');
                        //   fetch_data();
                        // data.map((db)=>{
                        // });
                        // document.querySelector('#offcanvasRightLabel').innerHTML = `${data.name_mv}`;
                        document.querySelector('.banner1-left').innerHTML = `${data.name_mv}`;
                        document.querySelector('.content_mv_left').innerHTML = 
                        `   <div class="content_mv_left_tl"><span>Thể loại:</span><span>${data.cate}</span></div>
                            <div class="content_mv_left_dd"><span>Đạo diễn:</span><span>${data.director}</span></div>
                            <div class="content_mv_left_dv"><span>Diễn viên:</span><span>${data.actor}</span></div>
                            <div class="content_mv_left_nsx"><span>nhà sản xuất:</span><span>${data.production}</span></div>
                            <div class="content_mv_left_qg"><span>Quốc gia:</span><span>${data.country}</span></div>
                            <div class="content_mv_left_tl"> <span>Thời lượng:</span><span>${data.time_mv}</span></div>`;    
                        document.querySelector('.content_mv_right').innerHTML =
                        `   <img style="width: 100%; height: 45vh;" src="${data.image_lage}" alt="">`;
                        document.querySelector('.content_nd_c').innerHTML = `<p>${data.detail}</p>`;
                        document.querySelector('.traller_id').innerHTML = `<embed style="height:220px" class="" src="${data.traller}" type="">`;
                        // document.querySelector('#id_cs').value =`${data.id_movie}`;
                        document.querySelector('.banner2').innerHTML =
                         `<a href="/php%202/asm/update_mv?id=${data.id_movie}"type="button" class="btn btn-primary"> chỉnh sửa</a>
                         <a href="/php%202/asm/admin/movie/delete_mv?id=${data.id_movie}"type="button" class="btn btn-danger" onclick="alert('bạn có chắc muốn xóa film không?')"> xóa</a>
                         `;
                        console.log(data);
                    }
                });
            }
            $(document).on('click', '#id_code', function() {
                var id = $(this).data('id');
                data_MV(id);
            })
            })
    </script>