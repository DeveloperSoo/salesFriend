<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>문서 작성</title>



    <!-- Custom fonts for this template-->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

	
    <!-- Custom styles for this template-->
    <link href="/css/sb-admin-2.min.css" rel="stylesheet">
	  <!-- Page level plugins -->
    <script src="/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/js/demo/datatables-demo.js"></script>
    <script src="/resources/js/jquery-1.10.2.js"></script>
    
    <style type="text/css">
    
    
		.custom-radioC {
		  .custom-control-labelC::before {
		    // stylelint-disable-next-line property-disallowed-list
		    border-radius: $custom-radio-indicator-border-radius;
		  }
		
		  .custom-control-inputC:checked ~ .custom-control-labelC {
		    &::after {
		      background-image: escape-svg($custom-radio-indicator-icon-checked);
		    }
		  }
		
		  .custom-control-inputC:disabled {
		    &:checked ~ .custom-control-labelC::before {
		      @include gradient-bg($custom-control-indicator-checked-disabled-bg);
		    }
		  }
		}
    </style>
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
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">이성수</span>
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
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
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
                    <h1 class="h3 mb-2 text-gray-800">문서 출력</h1>
                    <p class="mb-4"> 우측 양식은 예시이오니 이점 유의하시어 출력바랍니다. </p>
                    <!-- Content Row -->
                    <div class="row">
                    


                         <div class="col-lg-6">

                             <div class="card mb-4 py-3 border-bottom-primary">
                                <div class="card-body">
                                    <div class="custom-control custom-radioC small" style="padding-left:30px;">
			                             <input type="radio" name="radioBtn" value="receipt" class="custom-control-inputC" id="receipt">
			                             <label class="custom-control-labelC" for="receipt" style="padding-right:70px;">영수증</label>
			                             
			                             <input type="radio" name="radioBtn" value="document" class="custom-control-inputC" id="document">
			                             <label class="custom-control-labelC" for="document" style="padding-right:70px;">공문</label>
			                              
			                             <input type="radio" name="radioBtn" value="coopState" class="custom-control-inputC" id="coopState">
			                             <label class="custom-control-labelC" for="document2" style="padding-right:70px;">협조문</label>
			                         </div>
			                         
			                    <div class="table-responsive" style="padding-top:30px;">
                                  <!-- 영수증 체크시 -->
                                  <div id="receiptTable">
	                              	  <table class="table table-bordered" id="receiptTable" width="100%" cellspacing="0">
	                                    <thead>
	                                        <tr>
	                                            <th>항목명</th>
	                                            <th>입력정보</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody> 
	                                        
	                                        <tr>
	                                            <td>성명</td>
	                                            <td><input type="text" id="writer"></td>
	                                        </tr>
	                                          <tr>
	                                            <td>금액(한글)</td>
	                                            <td><input type="text" id="amountKorea"></td>
	                                        </tr>
	                                        <tr>
	                                            <td>금액</td>
	                                            <td><input type="text" id="amount"></td>
	                                        </tr>
	         								<tr>
	                                            <td>본문내용</td>
	                                            <td><input type="text" id="receiptContent"></td>
	                                        </tr>                                     
	          								<tr>
	                                            <td>영수인 성명</td>
	                                            <td><input type="text" id="recipientName"></td>
	                                        </tr>  
	          								<tr>
	                                            <td>발행사</td>
	                                            <td><input type="text" id="publisher"></td>
	                                        </tr>                                                                               
	                                    </tbody>
	                                </table>
                                 </div>  <!-- 영수증 테이블 끝 -->
                                 
<!--                                  공문 선택시 -->
                                 <div id="documentTable">
	                              	  <table class="table table-bordered" id="documentTable" width="100%" cellspacing="0">
	                                    <thead>
	                                        <tr>
	                                            <th>항목명</th>
	                                            <th>입력정보</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody> 
	                                        
	                                        <tr>
	                                            <td>회사명</td>
	                                            <td><input type="text" id="companyName"></td>
	                                        </tr>
	                                          <tr>
	                                            <td>문서번호</td>
	                                            <td><input type="text" id="documentNo"></td>
	                                        </tr>
	                                        <tr>
	                                            <td>발송일자</td>
	                                            <td><input type="text" id="sendDate"></td>
	                                        </tr>
	         								<tr>
	                                            <td>수신</td>
	                                            <td><input type="text" id="docRecipientName"></td>
	                                        </tr>                                     
	         								<tr>
	                                            <td>참조</td>
	                                            <td><input type="text" id="ccName"></td>
	                                        </tr>
	          								<tr>
	                                            <td>제목</td>
	                                            <td><input type="text" id="docTitle"></td>
	                                        </tr>  
	          								<tr>
	                                            <td>본문</td>
	                                            <td><textarea id="docContent"></textarea></td>
	                                        </tr>                                                                               
	                                    </tbody>
	                                </table>
                                 </div>  <!-- 공문 테이블 끝 -->
                                 
                                 <!-- 협조문 선택시 -->
                                 <div id="coopStateTable">
	                              	  <table class="table table-bordered" id="coopStateTable" width="100%" cellspacing="0">
	                                    <thead>
	                                        <tr>
	                                            <th>항목명</th>
	                                            <th>입력정보</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody> 
	                                        
	                                        <tr>
	                                            <td>문서번호</td>
	                                            <td><input type="text" id="coopStateNo"></td>
	                                        </tr>
	                                          <tr>
	                                            <td>시행일자</td>
	                                            <td><input type="text" id="startDate"></td>
	                                        </tr>
	                                        <tr>
	                                            <td>수신처</td>
	                                            <td><input type="text" id="coopRecipientName"></td>
	                                        </tr>
	         								<tr>
	                                            <td>발신처</td>
	                                            <td><input type="text" id="coopStateCompany"></td>
	                                        </tr>                                     
	         								<tr>
	                                            <td>제목</td>
	                                            <td><input type="text" id="coopStateTitle"></td>
	                                        </tr>
	          								<tr>
	                                            <td>본문</td>
	                                            <td><textarea id ="coopStateContent"></textarea>></td>
	                                        </tr>                                                                              
	                                    </tbody>
	                                </table>
                                 </div>  <!-- 협조문 테이블 끝 -->
                                 
                                 
                                 
                                <div class="d-sm-flex align-items-center justify-content-between mb-4">
		                     	   <h1 class="h3 mb-0 text-gray-800"></h1>
		                       		 <a href="#"  onclick="pdfDown();" id="pdfBtn" class="d-none d-sm-inline-block btn  btn-primary shadow-sm">
		                         	   PDF로 다운
	                         		</a>
			                    </div>
                          	  </div>
                            </div>
                          </div>
                       </div>
                       <div class="col-lg-6">

                             <div id ="receiptimg" class="card mb-4 py-3 border-bottom-primary">
                              <img alt="" src="/img/receipt.jpg" style="object-fit:cover;width:100% height:100%;">
                            </div>
                             <div id ="documentimg" class="card mb-4 py-3 border-bottom-primary">
                              <img alt="" src="/img/document.png" style="object-fit:cover;width:100% height:100%;">
                            </div>
                             <div id ="coopStateTableimg" class="card mb-4 py-3 border-bottom-primary">
                              <img alt="" src="/img/document2.jpg" style="object-fit:cover;width:100% height:100%;">
                            </div>
                            
                        </div>    
						
                       <!-- 내용물 -->

                       <!-- 내용물 -->
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
                    <a class="btn btn-primary" href="/sales/logout.do">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/js/demo/chart-area-demo.js"></script>
    <script src="/js/demo/chart-pie-demo.js"></script>
    <script src="/js/demo/chart-bar-demo.js"></script>


	<script type="text/javascript">
		
	$(document).ready(function(){
		
		$("#receiptTable").show();
		$("#receiptimg").show();	
		$("#documentTable").hide();
		$("#documentimg").hide();
		$("#coopStateTable").hide();
		$("#coopStateTableimg").hide();		
		
		var imageBox = document.getElementById('#imageBox');
		
		$("input[name='radioBtn']").change(function(){
			var choice = $("input[name='radioBtn']:checked").val();
				if(choice == 'receipt') {
					$("#receiptTable").show();
					$("#receiptimg").show();
					$("#documentTable").hide();
					$("#documentimg").hide();
					$("#coopStateTable").hide();
					$("#coopStateTableimg").hide();
					
					imageBox.style.backgroundImage = "/img/receipt.jpg";
				}else if(choice == 'document'){
					$("#documentTable").show();
					$("#documentimg").show();
					$("#receiptTable").hide();
					$("#receiptimg").hide();
					$("#coopStateTable").hide();
					$("#coopStateTableimg").hide();
					imageBox.style.backgroundImage = "/img/document.jpg";
				}else {
					$("#coopStateTable").show();
					$("#coopStateTableimg").show();
					$("#documentTable").hide();
					$("#documentimg").hide();
					$("#receiptTable").hide();
					$("#receiptimg").hide();
					imageBox.style.backgroundImage = "/img/document2.jpg";
				}
		
		})
	
	})
	
	
	
	
	
		// pdf 다운버튼 클릭
		function pdfDown() {
			var today = new Date();
			var document = {};

			
			var choice = $("input[name='radioBtn']:checked").val();
				if(choice == 'receipt') {
					document = {
						writer :			$("#writer").val(),
						amountKorea : 		$("#amountKorea").val(),
						amount : 			$("#amount").val(),
						receiptContent : 	$("#receiptContent").val(),
						recipientName : 		$("#recipientName").val(),
						publisher : 		$("#publisher").val(),
						docType: "receipt"
					}
					
				}
				else if(choice == 'document'){
					document = {
						companyName 	: $("#companyName").val(),
						documentNo 		: $("#documentNo").val(),
						sendDate 		: $("#sendDate").val(),
						docRecipientName: $("#docRecipientName").val(),
						ccName 			: $("#ccName").val(),
						docTitle		: $("#docTitle").val(),
						docContent		: $("#docContent").val(),
						docType: "document"
						
					}
				}
				else {
					document = {
						coopStateNo		: $("#coopStateNo").val(),
						startDate		: $("#startDate").val(),
						coopRecipientName: $("#coopRecipientName").val(),
						coopStateCompany: $("#coopStateCompany").val(),
						coopStateTitle : $("#coopStateTitle").val(),
						coopStateContent : $("#coopStateContent").val(),
						docType : "coopState"
					}
				}
			
			$.ajax({
				url: "/sales/pdfDownload.do",
				data: document ,
				type: "POST",
				success: function(data){
					
					// 서버에 내리고 pdf를 인식하는 시간이 오래걸려서 timeout써서 viewer를 천천히열게함
					// 보통 로딩 처리를 하지만 귀찮아서 패스
	
					setTimeout(() => {
						// pdf viewer 화면으로 이동
						window.open("/sales/"+data+"/pdfView.do","_blank","width=700,height=800");
					}, 7000);
				
					alert("PDF파일을 다운로드 중입니다. 잠시 기다려 주시길 바랍니다");
	
					
				},error : function(data) {
					alert("통신오류!" );
				}
			});
		};
	
	</script>


</body>

</html>