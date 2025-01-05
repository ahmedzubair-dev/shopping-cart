<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<link rel="stylesheet" href="css/allstyle.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	    <style>

        .btn {
            color: white;
            background: linear-gradient(90deg, #3498db, #9b59b6);
            border: none;
            border-radius: 5px;
            cursor: pointer;
            outline: none;
            position: relative;
            overflow: hidden;
            transition: background 0.5s ease;
        }
        
        
        .btn:hover {
            background: linear-gradient(90deg, #131842, #E68369,#ECCEAE);
        }

        /* Optional text shadow for better visibility */
        .btn:hover {
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
    </style>
	
</head>
<body >

	<%@ include file="header.jsp"%>

	<%
	String message = request.getParameter("message");
	%>
	<div class="container" 
	style="
    padding-right: 0px;
    padding-left: 0px;
    margin-right: 0px;
    margin-left: 0px;
    margin-top: 130px;
    margin-bottom: 240px;
    width: 100vw; ">
		<div class="row"
			style="margin-top: 5px; margin-left: 2px; margin-right: 2px;
			display: flex;
    		justify-content: center;">  
			<form action="./LoginSrv" method="post"
				class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2"
				style="border: 2px solid black; border-radius: 10px; background-color: #FBF6E2; padding: 35px;
						padding-top:15px;
				        height: 50vh;
    					width: 35vw;
     					margin-left:0px "> 
				<div style="font-weight: bold;" class="text-center">
					<h2 style="    color: #131842;  font-weight: 600;     margin-bottom: 30px; ">Login Form : </h2>
					<%
					if (message != null) {
					%>
					<p style="color: blue;">
						<%=message%>
					</p>
					<%
					}
					%>
				</div>
				<div></div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name" 
						style=" font-size: 20px;">Username</label> 
						<input type="email" placeholder="Enter Username" name="username" class="form-control" style="height:40px;" id="last_name" required  >
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name" style=" font-size: 20px;">Password</label> 
						<input type="password" placeholder="Enter Password" name="password" class="form-control" style="height:40px;"
							id="last_name" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="userrole" style=" font-size: 20px;">Login As</label> 
						<select name="usertype" id="userrole" class="form-control"  style="height:40px;" required>
							<option value="customer" selected>CUSTOMER</option>
							<option value="admin">ADMIN</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center" style=" margin-top: 25px;">
						<button type="submit" class="btn btn-success" style="     height: 41px; width: 100px; font-size: 18px;  background-color: #d9534f;
			    border: none; ">Login
						</button>
					</div>
				</div>
			</form>

		</div>
	</div>

	<%@ include file="footer.html"%>

</body>
</html>