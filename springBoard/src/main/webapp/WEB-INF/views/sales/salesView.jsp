<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>매출통계</title>

    <!-- Custom fonts for this template-->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/css/sb-admin-2.min.css" rel="stylesheet">

</head>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/sales/main.do">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">SALES FRIEND</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="/sales/main.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>홈 화면</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Pages Collapse Menu -->
              <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="/sales/salesView.do">
                    <i class="fas fa-fw fa-dollar-sign"></i>
                    <span>매출등록</span></a> 
            </li>


            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="/sales/scheduleView.do">
                    <i class="fas fa-fw fa-calendar"></i>
                    <span>일정관리</span></a> 
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="/sales/reportView.do">
                    <i class="fas fa-fw fa-clipboard-list"></i>
                    <span>문서생성</span></a>
            </li>

                        <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="/sales/chartView.do">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>매출통계</span></a>
            </li>

           
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

         

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${recruit.name}</span>
                                <img class="/img-profile rounded-circle"
                                    src="/img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
<!--                                 <a class="dropdown-item" href="#"> -->
<!--                                     <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> -->
<!--                                     Profile -->
<!--                                 </a> -->
<!--                                 <a class="dropdown-item" href="#"> -->
<!--                                     <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> -->
<!--                                     Settings -->
<!--                                 </a> -->
<!--                                 <a class="dropdown-item" href="#"> -->
<!--                                     <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> -->
<!--                                     Activity Log -->
<!--                                 </a> -->
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="/sales/logout.do" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">매출 등록</h1>
                    <p class="mb-4">규격화된 엑셀 업로드를 통해 손쉬운 매출 등록을 도와드립니다.</p>
                     <!-- Page Heading -->
                     <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800"></h1>
                        <a href="javascript:void{0}" class="d-none d-sm-inline-block btn  btn-primary shadow-sm"
                       			 data-toggle="modal" data-target="#excelUploadModal">
                        <i class="fas fa-file-upload fa-sm text-white-50"></i>엑셀 등록</a>
                    </div>
                
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">매출 현황</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>매출번호</th>
                                            <th>작성자</th>
                                            <th>상품명</th>
                                            <th>날짜</th>
                                            <th>비고</th>
                                            <th>매출액</th>
                                            <th>판매수량</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>매출번호</th>
                                            <th>작성자</th>
                                            <th>상품명</th>
                                            <th>날짜</th>
                                            <th>비고</th>
                                            <th>매출액</th>
                                            <th>판매수량</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:forEach items="${salesList}" var="sales" varStatus="i">
	                                        <tr>
	                                            <td>${sales.salesSeq}</td>
	                                            <td>${sales.id }</td>
	                                            <td>${sales.productName }</td>
	                                            <td>${sales.date }</td>
	                                            <td>${sales.des }</td>
	                                            <td>${sales.price }</td>
	                                            <td>${sales.productCount }
	                                        </tr>                                        
                                        </c:forEach>
                                         

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="/sales/login.do">Logout</a>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 엑셀 업로드 모달 -->
	<div class="modal fade" id="excelUploadModal" tabindex="-1" role="dialog" aria-labelledby="excelModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	
	      <!-- 모달 헤더 -->
	      <div class="modal-header">
	        <h5 class="modal-title" id="excelModalLabel">엑셀 파일 업로드</h5>
	        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">×</span>
	        </button>
	      </div>
	
	      <!-- 모달 바디 -->
	      <div class="modal-body">
	        <form id="excelForm" enctype="multipart/form-data">
	          <div class="form-group">
	            <label for="excelFile">엑셀 파일 선택</label>
	            <input type="file" class="form-control-file" id="excelFile" name="excelFile" accept=".xlsx, .xls">
	          </div>
	      </div>
	
	      <!-- 모달 푸터 -->
	      <div class="modal-footer">
	        <button class="btn btn-secondary" type="button" data-dismiss="modal">닫기</button>
	        <button class="btn btn-primary" type="button" onclick="uploadExcel()">저장</button>
	      </div>
        </form>
	
	    </div>
	  </div>
	</div>
    
    <script type="text/javascript">
    

    
    
    
    	function uploadExcel() {
    		if(confirm("업로드를 진행 하시겠습니까?")) {
    			//FormData 객체 생성
    			var formData = new FormData();
    			// 파일 입력 필드에서 파일 가져오기
    			var excelFile = document.querySelector("#excelFile").files[0]; 
    			
    			if(excelFile) {
    				// 파일을 formData 객체에 추가
    				formData.append("excelFile", excelFile);
    				//ajax 설정
    				$.ajax({
    					url: "/sales/excelUpload.do",
    					type: "POST",
    					data: formData,
    					contentType: false, //필수
    					processData: false, //필수
    					// contentType, processData는 파일 업로드시 false로 설정해야 formData가 올바르게 처리됨
    					success: function(result) {
    						alert(result);
    						if(result == "OK"){
    							alert(result.msg);
    						}else {
    							alert(reesult.msg);
    						}
//     						closeAllPopups();
    					},
    					error : function(request, status, error) {
    						console.log("error");
    						closeAllPopups();
    						alert("업로드에 실패하였습니다.\n"+"code : "
    								+ request.status + "\n" 
    								+ "message : " + request.responseText 
    								+ "\n" + "error : "+ error);
    					}  					
    				});
    				
    			} else {
    				alert("파일을 찾을 수 없습니다.");
    				console.log("파일을 찾을 수 없습니다.");
    			}
    		}	
    	}
    
    
    </script>
    

    <!-- Bootstrap core JavaScript-->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/js/demo/datatables-demo.js"></script>

</body>

</html>