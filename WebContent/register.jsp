<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
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
           
            font-size: 18px;  
            background-color: #d9534f
        }

        .btn:hover {
            background: linear-gradient(90deg, #131842, #E68369,#ECCEAE);
        }
        
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
	margin: 0px;
    padding: 0px;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 72vh;
    width: 100vw;">
    
		<div class="row"
			style="margin-top: 5px; margin-left: 2px; margin-right: 2px;">

			<form action="./RegisterSrv" method="post"
				class="col-md-6 col-md-offset-3"
				style="border: 2px solid black; 
				border-radius: 10px; 
				background-color: #FFE5CC; 
				padding: 15px 25px;     
				width: 50vw;
			    height: 60vh; 
			    margin:0px;">
				<div style="font-weight: bold;" class="text-center">
					<h2 style=" color: #131842;
										    margin-bottom: 30px;
										    margin-top: 10px;">Registration Form:</h2>
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
					<div class="col-md-6 form-group">
						<label for="first_name" style="font-size: 18px;">Name:</label> 
						<input type="text"
							name="username" class="form-control" id="first_name"
							name="first_name" required style="height:45px;">
					</div>
					<div class="col-md-6 form-group">
						<label for="last_name" style="font-size: 18px;">Email:</label>
						 <input type="email" style="height:45px;"
							name="email" class="form-control" id="last_name" name="last_name"
							required>
					</div>
				</div>
				<div class="form-group">
					<label for="last_name" style="font-size: 18px;">Address:</label>
					<textarea name="address" class="form-control" id="last_name"
						name="last_name" required style="height:70px;" ></textarea>
				</div>
				<div class="row">
					<div class="col-md-6 form-group">
						<label for="last_name" style="font-size: 18px;">Mobile:</label> 
						<input type="number" style="height:45px;"
							name="mobile" class="form-control" id="last_name"
							name="last_name" required>
					</div>
					<div class="col-md-6 form-group">
						<label for="last_name" style="font-size: 18px;">Pin Code:</label> 
						<input type="number" style="height:45px;"
							name="pincode" class="form-control" id="last_name"
							name="last_name" required>
					</div>

				</div>
				<div class="row">
					<div class="col-md-6 form-group">
						<label for="last_name" style="font-size: 18px;">Password:</label> 
						<input type="password" style="height:45px;"
							name="password" class="form-control" id="last_name"
							name="last_name" required>
					</div>
					<div class="col-md-6 form-group">
						<label for="last_name" style="font-size: 18px;">Confirm Password:</label> 
						<input
							type="password" name="confirmPassword" class="form-control"
							id="last_name" name="last_name" required style="height:45px;">
					</div>
				</div>
				<div class="row text-center">
					<div class="col-md-6" >
						<button type="Reset" class="btn btn-danger" style="  height: 41px; 
            width: 100px; margin-bottom: 2px; margin-top:20px; ">Reset</button>
					</div>
					<div class="col-md-6"  >
						<button type="submit" class="btn btn-success" style="  height: 41px; 
            width: 100px;  margin-bottom: 2px; margin-top:20px;  background-color: #d9534f;
            border:none;">Register</button>
					</div>
				</div>
			</form>
		</div>
	</div>


	<%@ include file="footer.html"%>
</body>
</html>