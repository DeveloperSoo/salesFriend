<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>일정관리</title>

<!-- Custom fonts for this template-->
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.14/index.global.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css" rel="stylesheet">

<link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/css/sb-admin-2.min.css" rel="stylesheet">
<style>
	#calendar {
	    background-color: white;
	    padding: 30px;
	}
	
	    
	.fc-col-header-cell-cushion, .fc-daygrid-day-number {
	    text-decoration: none;
	}
	
	.fc-scrollgrid-sync-inner > .fc-col-header-cell-cushion,
	.fc-day-mon .fc-daygrid-day-number,
	.fc-day-tue .fc-daygrid-day-number,
	.fc-day-wed .fc-daygrid-day-number,
	.fc-day-thu .fc-daygrid-day-number,
	.fc-day-fri .fc-daygrid-day-number {
	    color: black;
	}
	
	.fc-day-sun .fc-col-header-cell-cushion,
	.fc-day-sun a{
	    color : red;
	}
	
	.fc-day-sat .fc-col-header-cell-cushion,
	.fc-day-sat a {
	    color : blue;
	}
	
	.fc .fc-button-primary {
	  background-color: #3485FF !important;
	  color: #FFFFFF !important;
	  border-color: #3485FF !important;
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
                <a class="nav-link" href=/sales/salesView.do>
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
                                <img class="img-profile rounded-circle"
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
                    <h1 class="h3 mb-2 text-gray-800">일정 관리</h1>
                    <p class="mb-4">유동적인 스케줄 관리로 매출 증대를 이뤄드립니다!</p>

                    <!-- Content Row -->
              
                        <div id='calendar'></div>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#moaModal">
	<i class="fas fa-arrow-right"></i>
</a>
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
	
	
	<div class="modal fade" id="moaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">일정</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">x</span>
          </button>
        </div>
        <div class="modal-body">
	        <div class="form-group" style="padding-bottom: .75rem">
	       		<input type="text" class="form-control form-control-user" 
	       			  id="recruitId" readonly>
	        </div>
            <div class="form-group" style="padding-bottom: .75rem">
               <input type="text" class="form-control form-control-user"
                       id="title" placeholder="제목">
            </div>
            <div class="form-group" style="padding-bottom: .75rem">
               <input type="text" class="form-control form-control-user"
                       id="detail" placeholder="내용">
            </div>
             <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                     <input type="date" class="form-control form-control-user"
                         id="startDate" placeholder="시작 일자" >
                 </div>
                 <div class="col-sm-6">
                     <input type="date" class="form-control form-control-user"
                         id="endDate" placeholder="종료 일자" >
                 </div>
                 <input type="hidden" id="scheduleId" >
             </div>
        
        </div>
        <div class="modal-footer">
          <button id="schInsertBtn" class="btn btn-primary" type="button" data-dismiss="modal">등록</button>
          <button id="schUpdateBtn" class="btn btn-primary" type="button" data-dismiss="modal">수정</button>
          <button id="schDeleteBtn" class="btn btn-primary" type="button" data-dismiss="modal">삭제</button>
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
    
  
  <script>

	// 화면 진입시 
	document.addEventListener('DOMContentLoaded', function() {
	    var calendarEl = document.getElementById('calendar');
	
	    var calendar = new FullCalendar.Calendar(calendarEl, {
	
	    
	      headerToolbar: {
	          left: 'prevYear,prev,next,nextYear today',
	          center: 'title',
	          right: 'dayGridMonth,dayGridWeek,dayGridDay'
	        },
	      selectable: true,
	      selectHelper: true,
	
	      themeSystem: 'bootstrap', 
	     
	   
	      // 실제로는 화면 진입시 전체 데이터 조회 
	      	events:  function(info, successCallback, failureCallback) {
	          $.ajax({
	              url: '/schedule/all.do',
	              type: 'GET',
	              dataType: 'json',
	              success: function(response) {
	            	  if(response.error === "fail"){
	            		  alert("로그인이 필요합니다.")
	            		  location.href ="/sales/login.do";
	            	  }
	            	  
	            	  if(response.error === "empty"){
	            		  	if(!confirm("등록된 일정이 없습니다, 등록 진행할까요?")){
		            		  	return;
	            		  		
	            		  	}else {
		            		  	openAddScheduleModal(new Date(Date.now() - 86400000), new Date());
		            		  	return;
	            		  	}
	            		  	
	            	  }
	            	  
	            	  let events = response.schList;
	            	  let recruit = response.recruit;
	            	  successCallback(events); 
// 	            	  // 서버에서 위에 데이터처럼 json 형태로 내려주면 됨 아니면 map으로 내려서 여기서 json 파싱해도 되고 
// 	                  callback(events);

	              },
	              error: function(xhr, status, error) {
	                  console.error("일정 불러오기 실패:", error);
	                  failureCallback(error);
	              }
	          });
	      },
	      
	      
	      // 캘린더에서 날짜 클릭시 일정 추가 화면 오픈
	      select: function(info) {
	    	  if(info.title == null){
	    	  openAddScheduleModal(info.start, info.end);
	    	  } else {
	    		  openViewScheduleModal(info)
	    	  }
	      },
	      
	      // 캘린더에서 이벤트 클릭시 수정 화면 오픈
	      eventClick: function(event) {
	    	    openViewScheduleModal(event);
	    	    
	   	  }
// 	      ,
// 	   	  dayMaxEvents: true;
	    });
	
	    calendar.render();
	});
	
	
	function formatDate(date){
		if(!(date instanceof Date)){
			date = new Date(date);
		}
		return date.toISOString().split('T')[0];
	}
	
	//캘린더에서 날짜 클릭시 일정 추가 화면 오픈
	function openAddScheduleModal(startDate, endDate) {
		
		startDate = new Date(startDate);
		endDate	  = new Date(endDate);
		
		//console.log(typeof startDate, startDate);
		// 등록과 수정 화면 공유 
		$("#moaModal").modal("show"); 
		$("#schUpdateBtn").hide(); // 수정버튼 비활성화
		$("#schDeleteBtn").hide(); // 삭제버튼 비활성화
		$("#schInsertBtn").show(); // 등록버튼 활성화
		
		startDate.setDate(startDate.getDate() + 1);
		$("#startDate").val(formatDate(startDate));
		
		endDate.setDate(endDate.getDate());
		$("#endDate").val(formatDate(endDate));
		
	}
	
	
	// 캘린더에서 이벤트 클릭시 수정 화면 오픈
	function openViewScheduleModal(event) {
		// 등록과 수정 화면 공유 
		

		$("#moaModal").modal("show"); 
		$("#schUpdateBtn").show(); // 수정버튼 활성화
		$("#schDeleteBtn").show(); // 삭제버튼 활성화
		$("#schInsertBtn").hide(); // 등록버튼 비활성화
	
		$("#title").val(event.event.title);
		$("#detail").val(event.event.extendedProps.description);
		$("#startDate").val(event.event.start);
		$("#endDate").val(event.event.end);
		$("#scheduleId").val(event.event.id);
		$("#recruitId").val(event.event.extendedProps.recruitId);
		
		
		// 서버에서 넘어온 json으로 화면에 set 
	}
	
	
	// 일정 신규 등록 버튼 클릭시
	$('#schInsertBtn').click(function(e) {
	    e.preventDefault();
	    var newSchedule = {
	        title: $('#title').val(),
	        detail: $('#detail').val(),
	        startDate: $('#startDate').val(),
	        endDate: $('#endDate').val()
	    };
	    
	    if(newSchedule.title.trim() == ''){
	    	alert("제목을 입력해주세요")
	    	$("#title").focus();
	    	return;
	    }else if(newSchedule.detail.trim() == ''){
	    	alert("내용을 입력해주세요")
	    	$("#detail").focus();
	    	return;
	    }else if(newSchedule.startDate.trim() == ''){
	    	alert("시작일을 입력해주세요")
	    	$("#startDate").focus();
	    	return;
	    }else if(newSchedule.endDate.trim() == ''){
	    	alert("종료일을 입력해주세요")
	    	$("#endDate").focus();
	    	return;
	    }
	
	    $.ajax({
	        url: '/schedule/addSchedule.do',
	        type: 'POST',
	        contentType: 'application/json',
	        data: JSON.stringify(newSchedule),
	        success: function(response) {
	        	if(response.result === "fail"){
	        		alert("저장이 실패하였습니다.");
	        		openAddScheduleModal('0', '0');
	        	}else if(response.result === "success"){
	        		alert("저장이 완료되었습니다.")
	        		location.href ="/sales/scheduleView.do"
	        	}
// 	        	// 이부분 수정해야함
// 	            $('#calendar').fullCalendar('renderEvent', newSchedule, true);
// 	            $('#scheduleModal').modal('hide');
	        }
	    });
	});
	
	//일정 수정
	$('#schUpdateBtn').click(function(event) {			
// 	    event.preventDefault();
	    var newSchedule = {
		   title: $('#title').val(),
		   detail: $('#detail').val(),
	       startDate: $('#startDate').val(),
	       endDate: $('#endDate').val(),
	       schSeq: $('#scheduleId').val(),
	       id : $('#recruitId').val()
	    };
	
	    $.ajax({
	        url: '/schedule/updateSchedule.do',
	        type: 'POST',
	        contentType: 'application/json',
	        data: JSON.stringify(newSchedule),
	        success: function(response) {
	        	if(response.result === "idError") {
	        		alert("자신이 작성한 일정만 수정 가능합니다.");
	        		location.href = "/sales/scheduleView.do";
	        	}else if(response.result === "success"){
	        		alert("수정이 완료되었습니다.")
	        		location.href = "/sales/scheduleView.do";
	        	}else if(response.result === "fail"){
	        		alert("수정에 실패하였습니다.")
	        		location.href = "/sales/scheduleView.do";
	        	}
	        	
	        	
	        	// 이부분 수정해야함
// 	            $('#calendar').fullCalendar('renderEvent', newSchedule, true);
// 	            $('#scheduleModal').modal('hide');
	        }
	    });
	});
	
	// 일정 삭제
	$('#schDeleteBtn').click(function() {
			    var newSchedule = {
			 		   title: $('#title').val(),
			 		   detail: $('#detail').val(),
			 	       startDate: $('#startDate').val(),
			 	       endDate: $('#endDate').val(),
			 	       schSeq: $('#scheduleId').val(),
			 	       id : $('#recruitId').val()
			 	    };
		    if (confirm('정말로 이 일정을 삭제하시겠습니까?')) {
		        $.ajax({
		            url: '/schedule/deleteSchedule.do',
		            type: 'POST',
			        contentType: 'application/json',
		            data: JSON.stringify(newSchedule),
		            success:function(response) {
			        	if(response.result === "idError") {
			        		alert("자신이 작성한 일정만 삭제 가능합니다.");
			        		location.href = "/sales/scheduleView.do";
			        	}else if(response.result === "success"){
			        		alert("삭제가 완료되었습니다.")
			        		location.href = "/sales/scheduleView.do";
			        	}else if(response.result === "fail"){
			        		alert("삭제가 실패하였습니다.")
			        		location.href = "/sales/scheduleView.do";
			        	}
		            }
		        });
		    }
	}); 
	
	</script>

    
    

</body>
</html>