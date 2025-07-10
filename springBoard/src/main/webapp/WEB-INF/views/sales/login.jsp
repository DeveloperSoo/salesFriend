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

    <title>로그인 화면</title>

    <!-- Custom fonts for this template-->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/css/sb-admin-2.min.css" rel="stylesheet">
    <style>
        .bg-login-image{
            background:url('img/123.png');
            background-repeat: no-repeat;
            background-size: 100% 100%; 
        };

    </style>
</head>
<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">영업지원 시스템</h1>
                                    </div>
                                    <form class="user" id="user">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="recruitId" aria-describedby="emailHelp"
                                                placeholder="ID">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="recruitPassword" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0);" onclick="recruitLogin()" class="btn btn-primary btn-user btn-block">
                                            Login
                                        </a>
                                        <hr>
                                        <a href="javascript:void(0);" onclick="masterLogin()" class="btn btn-google btn-user btn-block">
                                             테스트용 로그인하기
                                        </a>
                                       
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="/recruit/findRecruit.do">Forgot Password?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="/recruit/register.do">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

	<script type="text/javascript">

		const masterLogin = () => {
			let id = "";
			let pwd = ""
			
			let param = {
					"id": id,
					"pwd" : pwd
			};
			
			$.ajax({
				type:"POST",
				url:"/recruit/testLogin.do",
				data:param,
				dataType: "json",
				success : function(data)
				{
					if(data.result === "success"){
						alert("로그인에 성공하였습니다.");
						location.href="/sales/main.do"				
					} else {
						alert(data.message || "로그인에 실패하였습니다.")
					}
					},
					error : function()
					{
					alert("서버 오류로 로그인에 실패하였습니다.");
				}
			})
			
		}
	
	
	
	
		const recruitLogin = () => {

		let id = document.querySelector("#recruitId").value;
		let pwd = document.querySelector("#recruitPassword").value;
			
			let param = {
					"id" : id,
					"pwd" : pwd
			};
			
			$.ajax({
				type :"POST",
				url : "/recruit/loginCheck.do",
				data : param,
				dataType: "json",
				success : function(data)
				{
					if(data.result === "success"){
						alert("로그인에 성공하였습니다.");
						location.href="/sales/main.do"				
					} else {
						alert(data.message || "로그인에 실패하였습니다.")
					}
				},
				error : function()
				{
					alert("서버 오류로 로그인에 실패하였습니다.");
				}
			})
			
			
			
		}
	
	</script>


    <!-- Bootstrap core JavaScript-->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/js/sb-admin-2.min.js"></script>

</body>
</html>