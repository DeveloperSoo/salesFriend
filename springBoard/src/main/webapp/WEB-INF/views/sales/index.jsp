<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>메인화면</title>

    <!-- Custom fonts for this template-->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">
<%-- 	<p>contextPath = ${path}</p> --%>
<%-- 	<p>CSS 링크: <a href="${path}/css/sb-admin-2.min.css">클릭</a></p> --%>

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
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">영업지원 시스템</h1>
                             <a  href="#" id="dropdownMenuClickableInside" data-bs-auto-close="inside" role="button" data-toggle="dropdown" aria-expanded="false" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                ></i> 마이 메뉴</a>
                       
                        <!-- Dropdown - Alerts -->
                        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                            aria-labelledby="dropdownMenuClickableInside" >
                            <h6 class="dropdown-header">
                                메인 화면을 구성 할 요소를 선택하세요.
                            </h6>
                            <a class="dropdown-item d-flex align-items-center"  aria-labelledby="dropdownMenuClickableInside" >
                                    <input type="checkbox" name="myMenu" value="SALES" id="sales" style="zoom:2.0">
                                    <span style="margin-left:30px">매출 등록</span>
                     
                            </a>
                            <a class="dropdown-item d-flex align-items-center"  aria-labelledby="dropdownMenuClickableInside" >
                                    <input type="checkbox" name="myMenu" value="SCHEDULE" id="schedule"style="zoom:2.0">
                                    <span style="margin-left:30px">일정 관리</span>
                     
                            </a>
                             <a class="dropdown-item d-flex align-items-center"  aria-labelledby="dropdownMenuClickableInside" >
                                    <input type="checkbox" name="myMenu" value="REPORT" id="report" style="zoom:2.0">
                                    <span style="margin-left:30px">문서 생성</span>
                            </a>
                            <a class="dropdown-item d-flex align-items-center"  aria-labelledby="dropdownMenuClickableInside" >
                                    <input type="checkbox" name="myMenu" value="SALES_CHART" id="salesChart" style="zoom:2.0">
                                    <span style="margin-left:30px">매출 통계</span>
                            </a>
                                   <a class="dropdown-item d-flex align-items-center"  aria-labelledby="dropdownMenuClickableInside" >
                                    <input type="checkbox" name="myMenu" value="MONTHLY" id="monthly" style="zoom:2.0">
                                    <span style="margin-left:30px">월매출 그래프</span>
                            </a>
                                   <a class="dropdown-item d-flex align-items-center"  aria-labelledby="dropdownMenuClickableInside" >
                                    <input type="checkbox" name="myMenu" value="SALES_BY_ID" id="salesById" style="zoom:2.0">
                                    <span style="margin-left:30px">담당자별 통계</span>
                            </a>
                            </a>
                                   <a class="dropdown-item d-flex align-items-center"  aria-labelledby="dropdownMenuClickableInside" >
                                    <input type="checkbox" name="myMenu" value="SALES_BY_PRODUCT" id="salesByProduct"style="zoom:2.0">
                                    <span style="margin-left:30px">상품별 통계</span>
                            </a>
                            <div style="padding-right:1rem; text-align: right;">
                               <a href="javascript:void(0)" onclick="myMenuUpdate()" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                ></i>저장</a>
                            </div>
                        </div>
                    </div>
                    <!-- Content Row -->
                    <div class="row">
			
						<c:if test="${empty myMenu}">
						
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                           <a class="" href="/sales/salesView.do" style="text-decoration: none;">
                                <div class="card border-left-success shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                    </div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">매출 등록</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                             <a class="" href="/sales/scheduleView.do" style="text-decoration: none;">
                                <div class="card border-left-primary shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                    </div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">일정 관리</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <a class="" href="/sales/reportView.do" style="text-decoration: none;">
                                <div class="card border-left-info shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                                </div>
                                                <div class="row no-gutters align-items-center">
                                                    <div class="col-auto">
                                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">문서 생성</div>
                                                    </div>
                                                
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <a class="" href="/sales/chartView.do" style="text-decoration: none;">
                                <div class="card border-left-warning shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                    </div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">매출 통계</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-fw fa-chart-area fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    
                    </div> 
                    
                    <div class="row">


					

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">월매출 그래프</h6>
                                    <div class="dropdown no-arrow">
                                        
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Dropdown Header:</div>
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">담당자별 연간 매출</h6>
                                    <div class="dropdown no-arrow">
                                       
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Dropdown Header:</div>
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart"></canvas>
                                    </div>
<!--                                     담당자별 이름 나오게 할곳 -->
<!--                                     <div class="mt-4 text-center small"> -->
<!--                                         <span class="mr-2"> -->
<!--                                             <i class="fas fa-circle text-primary"></i> Direct -->
<!--                                         </span> -->
<!--                                         <span class="mr-2"> -->
<!--                                             <i class="fas fa-circle text-success"></i> Social -->
<!--                                         </span> -->
<!--                                         <span class="mr-2"> -->
<!--                                             <i class="fas fa-circle text-info"></i> Referral -->
<!--                                         </span> -->
<!--                                     </div> -->
                                </div>
                            </div>
                            
                            
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">상품별 매출</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-bar">
                                        <canvas id="myBarChart"></canvas>
                                    </div>
                                    <hr>
<!--                                     Styling for the bar chart can be found in the -->
<%--                                     <code>/js/demo/chart-bar-demo.js</code> file. --%>
                                </div>
                            </div>
                            
                            
                        </div>
                    </div>

                    <!-- Content Row -->
                    </c:if>
                    
                    <c:if test="${not empty myMenu }">
                    <div class="row">
	                    <c:forEach var="menu" items="${myMenu }">
	                    	<c:if test="${menu.menuName eq 'SALES' }">
		                    	<div class="col-xl-3 col-md-6 mb-4">
		                           <a class="" href="/sales/salesView.do" style="text-decoration: none;">
		                                <div class="card border-left-success shadow h-100 py-2">
		                                    <div class="card-body">
		                                        <div class="row no-gutters align-items-center">
		                                            <div class="col mr-2">
		                                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
		                                                    </div>
		                                                <div class="h5 mb-0 font-weight-bold text-gray-800">매출 등록</div>
		                                            </div>
		                                            <div class="col-auto">
		                                                <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </a>
		                        </div>   	
	                    	</c:if>
	                    	<c:if test="${menu.menuName eq 'SCHEDULE' }">
		                        <div class="col-xl-3 col-md-6 mb-4">
		                             <a class="" href="/sales/scheduleView.do" style="text-decoration: none;">
		                                <div class="card border-left-primary shadow h-100 py-2">
		                                    <div class="card-body">
		                                        <div class="row no-gutters align-items-center">
		                                            <div class="col mr-2">
		                                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
		                                                    </div>
		                                                <div class="h5 mb-0 font-weight-bold text-gray-800">일정 관리</div>
		                                            </div>
		                                            <div class="col-auto">
		                                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </a>
		                        </div>                    	
	                    	</c:if>
	                    	<c:if test="${menu.menuName eq 'REPORT' }">
		                        <div class="col-xl-3 col-md-6 mb-4">
		                            <a class="" href="/sales/reportView.do" style="text-decoration: none;">
		                                <div class="card border-left-info shadow h-100 py-2">
		                                    <div class="card-body">
		                                        <div class="row no-gutters align-items-center">
		                                            <div class="col mr-2">
		                                                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
		                                                </div>
		                                                <div class="row no-gutters align-items-center">
		                                                    <div class="col-auto">
		                                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">문서 생성</div>
		                                                    </div>
		                                                
		                                                </div>
		                                            </div>
		                                            <div class="col-auto">
		                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </a>
		                        </div> 
	                    	</c:if>
	                    	<c:if test="${menu.menuName eq 'SALES_CHART' }">
	                          <div class="col-xl-3 col-md-6 mb-4">
	                            <a class="" href="/sales/chartView.do" style="text-decoration: none;">
	                                <div class="card border-left-warning shadow h-100 py-2">
	                                    <div class="card-body">
	                                        <div class="row no-gutters align-items-center">
	                                            <div class="col mr-2">
	                                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
	                                                    </div>
	                                                <div class="h5 mb-0 font-weight-bold text-gray-800">매출 통계</div>
	                                            </div>
		                                            <div class="col-auto">
		                                                <i class="fas fa-fw fa-chart-area fa-2x text-gray-300"></i>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </a>
		                        </div> 
	                    	</c:if>
                    	</c:forEach>
                   	</div>
                   	<div class="clearfix w-100 mb-4"></div>
                   		
                    <div class="row">
                   		<c:forEach var="menu" items="${myMenu }">  	                    	
	                    	<c:if test="${menu.menuName eq 'MONTHLY' }">
		                        <!-- Area Chart -->
		                        <div class="col-xl-8 col-lg-7">
		                            <div class="card shadow mb-4">
		                                <!-- Card Header - Dropdown -->
		                      	         <div
		                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
		                                    <h6 class="m-0 font-weight-bold text-primary">월매출 그래프</h6>
		                                    <div class="dropdown no-arrow">
		                                        
		                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
		                                            aria-labelledby="dropdownMenuLink">
		                                            <div class="dropdown-header">Dropdown Header:</div>
		                                            <a class="dropdown-item" href="#">Action</a>
		                                            <a class="dropdown-item" href="#">Another action</a>
		                                            <div class="dropdown-divider"></div>
		                                            <a class="dropdown-item" href="#">Something else here</a>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!-- Card Body -->
		                                <div class="card-body">
		                                    <div class="chart-area">
		                                        <canvas id="myAreaChart"></canvas>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>	                
	                    	</c:if>
	                    </c:forEach>
	                    </div>
						<div class="row">
                   			<c:forEach var="menu" items="${myMenu }"> 
	                    		<c:if test="${menu.menuName eq 'SALES_BY_ID' }">
		                            <div class="card shadow mb-4">
		                                <!-- Card Header - Dropdown -->
		                                <div
		                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
		                                    <h6 class="m-0 font-weight-bold text-primary">담당자별 연간 매출</h6>
		                                    <div class="dropdown no-arrow">
		                                       
		                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
		                                            aria-labelledby="dropdownMenuLink">
		                                            <div class="dropdown-header">Dropdown Header:</div>
		                                            <a class="dropdown-item" href="#">Action</a>
		                                            <a class="dropdown-item" href="#">Another action</a>
		                                            <div class="dropdown-divider"></div>
		                                            <a class="dropdown-item" href="#">Something else here</a>
		                                        </div>
		                                    </div>
		                                </div>
		                                <!-- Card Body -->
		                                <div class="card-body">
		                                    <div class="chart-pie pt-4 pb-2">
		                                        <canvas id="myPieChart"></canvas>
		                                    </div>
		<!--                                     담당자별 이름 나오게 할곳 -->
		<!--                                     <div class="mt-4 text-center small"> -->
		<!--                                         <span class="mr-2"> -->
		<!--                                             <i class="fas fa-circle text-primary"></i> Direct -->
		<!--                                         </span> -->
		<!--                                         <span class="mr-2"> -->
		<!--                                             <i class="fas fa-circle text-success"></i> Social -->
		<!--                                         </span> -->
		<!--                                         <span class="mr-2"> -->
		<!--                                             <i class="fas fa-circle text-info"></i> Referral -->
		<!--                                         </span> -->
		<!--                                     </div> -->
		                                </div>
		                            </div>                    	
	                    		</c:if>
	                    	</c:forEach>
                    	</div>
                    	<div class="row">
	                    	<c:forEach var="menu" items="${myMenu }">
		                    	<c:if test="${menu.menuName eq 'SALES_BY_PRODUCT' }">
		                            <div class="card shadow mb-4">
		                                <div class="card-header py-3">
		                                    <h6 class="m-0 font-weight-bold text-primary">상품별 매출</h6>
		                                </div>
		                                <div class="card-body">
		                                    <div class="chart-bar">
		                                        <canvas id="myBarChart"></canvas>
		                                    </div>
		                                    <hr>
		                                    등록된 연간 매출 상품 중 Top5 상품들의 정보를 제공해드립니다. <br>
<!-- 		                                    Styling for the bar chart can be found in the -->
<%-- 		                                    <code>/js/demo/chart-bar-demo.js</code> file. --%>
		                                </div>
		                            </div>                    	
		                    	</c:if>
		                    </c:forEach>	
	               		</div>
	               	</div>
	             </c:if>
                    
                    
                    
                    
                    <div class="row">

                        <!-- Content Column -->
<!--                         <div class="col-lg-6 mb-4"> -->

<!--                 </div> -->
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
<!--             <footer class="sticky-footer bg-white"> -->
<!--                 <div class="container my-auto"> -->
<!--                     <div class="copyright text-center my-auto"> -->
<!--                         <span>Copyright &copy; Your Website 2021</span> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </footer> -->
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
		
	function myMenuUpdate() {
		var checkboxValues = [];
			$("input[name='myMenu']:checked").each(function(){
				checkboxValues.push($(this).val());
			})
		
		var allData = {"checkArray" : checkboxValues};
			
		$.ajax({
			url : "/sales/menuUpdate.do",	
			type:"POST",
			data: allData,
			success:function(response) {
				if(response.result ==="success"){
					alert("마이메뉴 설정 완료");
					location.href = "/sales/main.do";	
				}else if(response.result ==="fail"){
					alert("마이메뉴 설정 실패");
					location.href = "/sales/main.do";
				}
			}	
		})		
	}
	
		
		
	
	</script>




<!-- line chart 만드는곳 -->
<script type="text/javascript">
	$(document).ready(function(){
		getLineGraph();
		getPieGraph()
		getBarGraph();
	});
	
	
	function getBarGraph(){
		let productName = [];
		let totalPrice = [];
		
		$.ajax({
			url : "/monthly/totalBarChart.do",
			type : "GET",
			contentType : "application/json",
			success:function(data){
				for(let i = 0; i < data.length; i++){
					productName.push(data[i].productName);
					totalPrice.push(data[i].totalPrice);
				}			
		var ctx = document.getElementById("myBarChart");
		var myBarChart = new Chart(ctx, {
		  type: 'bar',
		  data: {
		    labels: productName,
		    datasets: [{
		      label: "Revenue",
		      backgroundColor: "#4e73df",
		      hoverBackgroundColor: "#2e59d9",
		      borderColor: "#4e73df",
		      maxBarThickness: 25,
		      data: totalPrice
		    }],
		  },
		  options: {
		    maintainAspectRatio: false,
		    layout: {
		      padding: {
		        left: 10,
		        right: 25,
		        top: 25,
		        bottom: 0
		      }
		    },
		    scales: {
		      xAxes: [{
		        time: {
		          unit: 'month'
		        },
		        gridLines: {
		          display: false,
		          drawBorder: false
		        },
		        ticks: {
		          maxTicksLimit: 6
		        }
		      }],
		      yAxes: [{
		        ticks: {
		          min: 0,
		          max: 100000000,
		          maxTicksLimit: 5,
		          padding: 10,
		          // Include a dollar sign in the ticks
		          callback: function(value, index, values) {
		            return '$' + number_format(value);
		          }
		        },
		        gridLines: {
		          color: "rgb(234, 236, 244)",
		          zeroLineColor: "rgb(234, 236, 244)",
		          drawBorder: false,
		          borderDash: [2],
		          zeroLineBorderDash: [2]
		        }
		      }],
		    },
		    legend: {
		      display: false
		    },
		    tooltips: {
		      titleMarginBottom: 10,
		      titleFontColor: '#6e707e',
		      titleFontSize: 14,
		      backgroundColor: "rgb(255,255,255)",
		      bodyFontColor: "#858796",
		      borderColor: '#dddfeb',
		      borderWidth: 1,
		      xPadding: 15,
		      yPadding: 15,
		      displayColors: false,
		      caretPadding: 10,
		      callbacks: {
		        label: function(tooltipItem, chart) {
		          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
		          return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
		        }
		      }
		    },
		  }
		});
			}			
						
		})		
	}
	
	
	
	function getPieGraph(){
		let id = [];
		let totalSales = [];
		
		$.ajax({
			url : "/monthly/totalPieChart.do",
			type : "GET",
			contentType : "application/json",
			success:function(data) {
				for(let i = 0; i < data.length; i++){
					id.push(data[i].id);
					totalSales.push(data[i].totalPrice);
				}
			var ctx = document.getElementById("myPieChart");
			var myPieChart = new Chart(ctx, {
			  type: 'doughnut',
			  data: {
			    labels: id,
			    datasets: [{
			      data: totalSales,
			      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
			      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
			      hoverBorderColor: "rgba(234, 236, 244, 1)",
			    }],
			  },
			  options: {
			    maintainAspectRatio: false,
			    tooltips: {
			      backgroundColor: "rgb(255,255,255)",
			      bodyFontColor: "#858796",
			      borderColor: '#dddfeb',
			      borderWidth: 1,
			      xPadding: 15,
			      yPadding: 15,
			      displayColors: false,
			      caretPadding: 10,
			    },
			    legend: {
			      display: false
			    },
			    cutoutPercentage: 80,
			  },
			});
		}
	});
};
	
	
	function getLineGraph(){
		let yearList = [];
		let monthList = [];
		let totalSales = [];
		
		$.ajax({
			url : "/monthly/totalLineChart.do",
			type:  "GET",
			contentType: "application/json",
			success:function(data){
				for(let i = 0; i<data.length; i++){
					monthList.push(data[i].month);
					totalSales.push(data[i].totalPrice);
				}
				// 차트 만들어 주는곳
				var ctx = document.getElementById("myAreaChart");
				var myLineChart = new Chart(ctx, {
				  type: 'line',
				  data: {
				    labels: monthList,
				    datasets: [{
				      label: "Earnings",
				      lineTension: 0.3,
				      backgroundColor: "rgba(78, 115, 223, 0.05)",
				      borderColor: "rgba(78, 115, 223, 1)",
				      pointRadius: 3,
				      pointBackgroundColor: "rgba(78, 115, 223, 1)",
				      pointBorderColor: "rgba(78, 115, 223, 1)",
				      pointHoverRadius: 3,
				      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
				      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
				      pointHitRadius: 10,
				      pointBorderWidth: 2,
				      data: totalSales,
				    }],
				  },
				  options: {
				    maintainAspectRatio: false,
				    layout: {
				      padding: {
				        left: 10,
				        right: 25,
				        top: 25,
				        bottom: 0
				      }
				    },
				    scales: {
				      xAxes: [{
				        time: {
				          unit: 'date'
				        },
				        gridLines: {
				          display: false,
				          drawBorder: false
				        },
				        ticks: {
				          maxTicksLimit: 7
				        }
				      }],
				      yAxes: [{
				        ticks: {
				          maxTicksLimit: 5,
				          padding: 10,
				          // Include a dollar sign in the ticks
				          callback: function(value, index, values) {
				            return '$' + number_format(value);
				          }
				        },
				        gridLines: {
				          color: "rgb(234, 236, 244)",
				          zeroLineColor: "rgb(234, 236, 244)",
				          drawBorder: false,
				          borderDash: [2],
				          zeroLineBorderDash: [2]
				        }
				      }],
				    },
				    legend: {
				      display: false
				    },
				    tooltips: {
				      backgroundColor: "rgb(255,255,255)",
				      bodyFontColor: "#858796",
				      titleMarginBottom: 10,
				      titleFontColor: '#6e707e',
				      titleFontSize: 14,
				      borderColor: '#dddfeb',
				      borderWidth: 1,
				      xPadding: 15,
				      yPadding: 15,
				      displayColors: false,
				      intersect: false,
				      mode: 'index',
				      caretPadding: 10,
				      callbacks: {
				        label: function(tooltipItem, chart) {
				          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
				          return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
				        }
				      }
				    }
				  }
				});
			}
		})		
	};
</script>

</body>
</html>