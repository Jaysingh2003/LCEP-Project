<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LcepHome</title>
<link rel="stylesheet" href="lceptHomeStyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Montserrat', sans-serif;
}

#main {
	height: 100vh;
	width: 100%;
	background-image: linear-gradient(to right, #39065a, #9a0f98);
	position: relative;
}

#reg {
	position: absolute;
	height: 70%;
	width: 50%;
	background-color: #dadada;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	display: flex;
}

#reg-left {
	width: 50%;
	height: 100%;
	overflow: hidden;
	position: relative;
}

#reg-left-up {
	transform: translate(-20%, -20%);
	width: 200px;
	height: 200px;
	background-image: linear-gradient(to right, #9a0f9885, #38065a86);
	border-radius: 50%;
	position: absolute;
}

#reg-left-mid {
	margin-top: 200px;
	padding: 20px;
	position: relative;
	z-index: 1; /* Ensure this content is above the circles */
}

#reg-left-down {
	position: absolute;
	bottom: 0;
	transform: translate(-20%, 20%);
	width: 200px;
	height: 200px;
	background-image: linear-gradient(to right, #9a0f98fe, #38065a);
	border-radius: 50%;
}

#mini-circle {
	position: absolute;
	right: 0;
	bottom: 0;
	width: 100px;
	height: 100px;
	background-image: linear-gradient(to right, #39065a, #9a0f98);
	border-radius: 50%;
}

#reg-right {
	width: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
}

#log-right {
	width: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
}

#form-container {
	width: 100%;
	padding: 40px;
	border-radius: 10px;
	text-align: center;
}

#form-container h2 {
	margin-bottom: 10px;
	font-size: 20px;
	color: #444;
}

#profile-pic {
	width: 50px;
	height: 50px;
	background: linear-gradient(to right, #39065a, #9a0f98);
	border-radius: 50%;
	margin: 0 auto 10px;
}

#form-container p {
	margin-bottom: 20px;
	color: #666;
}
/* General styles for form fields */
#registration-form input[type="text"], #registration-form input[type="email"],
	#registration-form input[type="password"], #registration-form input[type="number"],
	#registration-form select {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
}

/* File input container */
#file-input-container {
	position: relative;
	margin-bottom: 10px;
}

/* Hidden file input */
#registration-form input[type="file"] {
	display: none;
}

/* Custom file input label */
#file-input-label {
	display: inline-block;
	width: 100%;
	padding: 10px;
	background-color: #ccc;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
	cursor: pointer;
	text-align: center;
	color: #666;
}

/* Custom file input label on hover */
#file-input-label:hover {
	background: linear-gradient(to right, #39065a, #9a0f98);
	color: #fff;
}

#registration-form button[type="submit"] {
	width: 100%;
	padding: 10px;
	background: linear-gradient(to right, #39065a, #9a0f98);
	border: none;
	border-radius: 5px;
	color: #fff;
	font-size: 16px;
	cursor: pointer;
}
/* Display selected file name */
#selected-file {
	margin-top: 5px;
	font-size: 14px;
	color: #666;
}
</style>


</head>
<body>
	<div id="main">




		<div class="container mt-2 container-fluid  d-${hidden} ">
			<div class="alert alert-${alertType} alert-dismissible fade show"
				role="alert">
				<strong>Message!</strong> ${message}
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>
		</div>




		<div id="reg">

			<div id="reg-left">
				<div id="reg-left-up"></div>
				<div id="reg-left-mid">
					<h1>LCEP</h1>
					<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
						Accusamus nostrum blanditiis quidem natus dolore nihil quae!</p>
				</div>
				<div id="reg-left-down">
					<div id="mini-circle"></div>
				</div>

			</div>

			<!-- login form started -->

			<div id="log-right">
				<div id="form-container">
					<h2>Log In</h2>
					<div id="profile-pic" style="overflow: hidden;">
						<i class="fa fa-user" style="font-size: 56px; color: #dadada;"></i>
					</div>
					<form id="registration-form" action="/lcep/login" method="post">

						<input type="email" placeholder="Email" name="email" required>
						<input type="password" placeholder="Password" name="pass" required>

						<button type="submit">SUBMIT</button>
						<p style="font-size: 12px; margin-top: 4px;">
							I Don't have any Account <span><a href="#">Sign Up</a></span>
						</p>
					</form>

				</div>

				<!-- login form ended -->
			</div>


			<!-- Registration  form started -->
			<div id="reg-right">
				<div id="form-container">
					<h2>Create An Account</h2>
					<div id="profile-pic" style="overflow: hidden;">
						<i class="fa fa-user" style="font-size: 56px; color: #dadada;"></i>
					</div>
					<form id="registration-form" action="/lcep/register" method="post">
						<input type="text" placeholder="Full Name" name="name" required>
						<input type="email" placeholder="email" name="email" required>
						<input type="password" placeholder="pass" name="pass" required>
						<input type="number" placeholder="contact No." name="contNo"
							required>
						<!-- <input type="password" placeholder="Retype Password" required>  -->

						<select id="role" name="profile" required>
							<option value="user">User</option>
							<option value="volunteer">Volunteer</option>
						</select>

						<!--
            
            <div id="certificate-upload" style="display: none;">
                <div id="file-input-container">
                    <label for="certificate" id="file-input-label">Upload Certificate</label>
                    <input type="file" id="certificate" name="certificate">
                    <div id="selected-file"></div>
                </div>
            </div>
           -->
						<div class="checkbox-container">
							<input type="checkbox" id="terms" required> <label
								for="terms" style="font-size: 10px;">I have agreed to
								the terms and conditions</label>
						</div>
						<button type="submit">SUBMIT</button>
						<p style="font-size: 12px; margin-top: 4px;">
							Have Already Account <span><a href="#">Log in</a></span>
						</p>
					</form>

				</div>
			</div>


<!-- registration form started -->
	
		</div>



	</div>





	</div>

	<script>
document.addEventListener('DOMContentLoaded', function () {
    var regRight = document.getElementById('reg-right');
    var logRight = document.getElementById('log-right');

    // Initially hide the reg form
    regRight.style.display = 'none';


      // Toggle to registration form
      document.querySelector('#log-right p span a').addEventListener('click', function (e) {
        e.preventDefault();
        logRight.style.display = 'none';
        regRight.style.display = 'block';
    });
    // Toggle to login form
    document.querySelector('#reg-right p span a').addEventListener('click', function (e) {
        e.preventDefault();
        regRight.style.display = 'none';
        logRight.style.display = 'block';
    });

  

    // Existing code for role change and file upload display
    document.getElementById('role').addEventListener('change', function () {
        var certificateUpload = document.getElementById('certificate-upload');
        if (this.value === 'volunteer') {
            certificateUpload.style.display = 'block';
        } else {
            certificateUpload.style.display = 'none';
        }
    });

    document.getElementById('certificate').addEventListener('change', function () {
        var selectedFile = document.getElementById('selected-file');
        if (this.files && this.files.length > 0) {
            selectedFile.textContent = this.files[0].name;
        } else {
            selectedFile.textContent = '';
        }
    });
});



    </script>
</body>
</html>