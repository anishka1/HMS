<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Patient</title>
<link href="CSS/Style.css" rel="stylesheet" media="all">
</head>
<body>
		<div style="margin-left: 10%;">
		<div class="container main1">

			<fieldset>
				<form action="DeletePatient" method="post">

					<div class="main">
						<h1 style="margin-left: 25%;">Delete Patient</h1>
					</div>
					<div class="main">
						<label for="customer">Pateint SSN Id : <span style="color:red">*</span></label> <input type="text"
							id="ssn_id" name="customerssn" pattern="[0-9]{9}" required > <br>
					</div>
					
					<div class="main">
						<label for="fname">Patient Name :<span style="color:red">*</span></label> <input type="text"
							id="fname" name="firstname" required><br>
					</div>
					<div class="main">
						<label for="address">Age <span style="color:red">*</span></label> <input type="text" id="address"
							name="age" pattern="[0-9]{3}" required><br>
					</div>
					<div class="main">
						<label for="Date of Admission">Date of Admission :</label>
                         <input type="date" id="Date of Admission" name="date of admission">
					</div>
					
					<div class="main">
							<label for="Type of bed">Type of bed:</label>
                      <select name="" id="cars">
                            <option value=""></option>
                            <option value="General ward ">General ward </option>
                            <option value="Semi sharing ">Semi sharing </option>
                            <option value="Single Room ">Single Room </option>
    
                      </select>
							<br>
					</div>
					
					<div class="main">
						<label for="address">Address Line 1<span style="color:red">*</span></label> <input type="text"
							id="address" name="addressline1"  required><br>
					</div>
					<div class="main">
						<label for="address1">Address Line 2</label> <input type="text"
							id="address1" name="addressline2"><br>
					</div>
					<div class="main">
						<label for="city">City<span style="color:red">*</span></label> <input type="text" id="city"
							name="city1" required><br>
					</div>
					<div class="main">
						<label for="state">State<span style="color:red">*</span>   </label> <input type="text" id="state"
							name="state1" required><br>
					</div>
					
					<div class="main">
						<input type="submit" value="Delete" onclick="validate()"> 

					</div>
					
				</form>
			</fieldset>

		</div>

	</div>
	

	<!-- Main JS-->


</body>
<script type="text/javascript">
            function validate()
            {
                var ssn_id = document.getElementById("ssn_id");
                var cust_id = document.getElementById("cust_id");
                var fname = document.getElementById("fname").value;
                var lname = document.getElementById("lname").value;
                var valid = true;
                if(ssn_id.value.length<=0 || cust_id.value.length<=0)
                    {
                        alert("Don't leave the field empty!");
                        valid = false;
                    }
                    
                return valid;
            };
        </script>
</html>