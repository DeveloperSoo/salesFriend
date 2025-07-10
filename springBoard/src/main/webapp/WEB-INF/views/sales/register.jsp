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

    <title>회원가입</title>

    <!-- Custom fonts for this template-->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/css/sb-admin-2.min.css" rel="stylesheet">

</head>
<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                            <form class="user">
                                <div class="form-group row">
<!--                                     <div class="col-sm-6 mb-3 mb-sm-0"> -->
<!--                                         <input type="text" class="form-control form-control-user" id="exampleFirstName" -->
<!--                                             placeholder="First Name"> -->
<!--                                     </div> -->
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" id="recruitName"
                                            placeholder="Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="recruitId"
                                        placeholder="ID" onchange="checkId();">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="recruitPassword" placeholder="Password">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user"
                                            id="recruitRepeatPassword" placeholder="Repeat Password">
                                    </div>
                                </div>
                                <a href="javascript:void(0);" onclick="recruitRegister();" class="btn btn-primary btn-user btn-block">
                                    Register Account
                                </a>
                                <hr>
                                <a href="index.jsp" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a href="index.jsp" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.jsp">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="/sales/login.do">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    
    <script src="/resources/js/jquery-1.10.2.js"></script>
	<script type="text/javascript">
		let name = document.querySelector("#recruitName").value;
		let id = document.querySelector("#recruitId").value;
		let pwd = document.querySelector("#recruitPassword").value;
		let repeatPassword = document.querySelector("#recruitRepeatPassword").value;
		
		let regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		
		
		const recruitRegister = () => {
			let name = document.querySelector("#recruitName").value;
			let id = document.querySelector("#recruitId").value;
			let pwd = document.querySelector("#recruitPassword").value;
			let repeatPassword = document.querySelector("#recruitRepeatPassword").value;
	
			let param = {
					"name" : name,
					"id" : id,
					"pwd" : pwd	
			};
			
			if(name.trim() == ''){
				alert("이름을 입력해주세요!")
				$("#recruitName").focus();
			}else if(pwd.trim() == ''){
				alert("비밀번호를 입력해주세요")
				$("#recruitPassword").focus();
			}else if(repeatPassword.trim() == ''){
				alert("비밀번호 확인칸을 입력해주세요")
				$("#recruitRepeatPassword").focus();
			}else if(pwd != repeatPassword){
				alert("비밀번호가 일치하지 않습니다.")
				$("recruitRepeatPassword").focus();
			}
			
			$.ajax({
				type:"POST",
				url : "/recruit/registerCheck.do",
				data : param,
				dataType: "json",
				success: function(data)
				{
					alert("환영합니다" + name + "님!");
					location.href="/recruit/login.do"
				},
				error : function()
				{
					alert("회원가입 실패");
				}
				
			})
			
			
		}
		
		
		function checkId() {
			let id = document.querySelector("#recruitId").value;
				
			$.ajax({
				dataType : "json",
				url: "/recruit/idCheck.do",
				data: {
					"id" : id
				},
				type: "GET",
				success: function(data){
					if(data.check == 0){
						alert("사용 가능한 Id 입니다.");
					}else {
						alert("이미 존재하는 ID 입니다.")
					}
				},
				error : function() {
					alert("통신오류!");
				}
			});

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