<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" >
	
	<title>Curso JSP</title>
	
<style type="text/css">


body{
background-color: #448aff;
}

form{
padding: 25px;
 position: absolute;
 top: 35%;
 left: 33%;
 right: 33%;
 background-color: #fff;
 border-radius: 20px;

}

h2{
color:#448aff;
font-weight: 800;
}

.msg{
 font-size: 15px;
 color: #fff;
 background-color: #B22222;

}
</style>	
	
</head>
<body>


<div>
		<form action="<%=request.getContextPath() %>/ServletLogin" method="post" class="row g-3 needs-validation" novalidate>
		<div>
				<h2 align="center">TELA DE LOGIN</h2>  
		</div>
		
		<input type="hidden" value="<%= request.getParameter("url") %>" name="url">
		
		<div class="mb-3">
		  		<label style="font-size: 14px; font-weight: 800" class="form-label" for="login">LOGIN:</label>
		  		<input class="form-control" id="login" name="login" type="text" required>
		</div>
		 
		 <div class="mb-3">
		  		<label style="font-size: 14px; font-weight: 800" class="form-label" for="senha">SENHA:</label> 
		  		<input class="form-control" id="senha" name="senha" type="password" required>
		  </div>
		  <div align="center" class="form-default" >
		  		<input width="60px" type="submit" value="ACESSAR" class="btn btn-primary">
		  </div>
		  
		  <h5 class="msg">${msg}</h5>
		</form>
</div>
   <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" ></script>


<script type="text/javascript">
//Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()

</script>
</body>
</html>