<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Navigation Bar with Modal Form</title>

<!-- Font Awesome -->
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<style>
:root { -
	-graydark: #5b5a5a; -
	-secondary-color: rgb(247, 242, 242); -
	-primary-color: #dadada;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

html, body {
	width: 100%;
	height: 100%;
	background-color: var(- -primary-color);
}

#nav {
	position: fixed;
	top: 0;
	width: 100%;
	height: 7%;
	background-color: white;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
	z-index: 999;
}

#logo {
	height: 70%;
	width: 100px;
	background-image: url('/images/logo.png');
	background-size: 100% 100%;
}

#navleft, #navmid, #navright {
	display: flex;
	align-items: center;
}

#navleft {
	width: 15%;
	justify-content: space-between;
}

#navmid {
	padding: 5px;
	width: 15%;
	background-color: var(- -primary-color);
	border-radius: 5px;
}

.nav-search {
	width: 80%;
	border: none;
	outline: none;
	background: transparent;
}

.search-icon {
	margin-left: 10px;
	color: var(- -graydark);
	font-size: 20px;
}

#navright i {
	font-size: 26px;
	color: var(- -graydark);
}

#create-post {
	display: block;
	position: absolute;
	z-index: 99999;
	height: 60%;
	width: 70%;
	background: rgb(177, 176, 176);
	border-radius: 5px;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	padding: 20px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.create-post-up {
	height: 10%;
	width: 100%;
	background-color: var(- -secondary-color);
	border-radius: 5px;
	margin-bottom: 20px;
}

.create-post-mid {
	width: 100%;
	position: relative;
	border: none;
}

.create-post-input {
	width: 100%;
	border: none;
	outline: none;
	font-family: sans-serif;
	background-color: #eeeeee;
	padding: 10px;
	margin-bottom: 10px;
	border-radius: 5px;
}

.create-post-down {
	height: 10%;
	width: 100%;
	background-color: var(- -secondary-color);
	position: relative;
	border-radius: 5px;
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

.post-btn {
	display: flex;
	gap: 10px;
}

.cancel-btn, .submit-btn {
	height: 35px;
	width: 100px;
	border: none;
	border-radius: 5px;
	display: flex;
	justify-content: center;
	align-items: center;
	font-family: sans-serif;
	font-size: 14px;
	cursor: pointer;
}

.cancel-btn {
	background-color: #cacfd2;
}

.submit-btn {
	background-image: linear-gradient(90deg, #0ea5ea, #0bd1d1 51%);
	color: white;
}
</style>
</head>
<body>
	<div id="nav">
		<div id="logo"></div>
		<div id="navleft">
			<div class="home">
				<i class="fa-solid fa-house"
					style="font-size: 26px; color: var(- -graydark)"></i>
			</div>
			<div class="home">
				<i class="fa-regular fa-circle-question"
					style="font-size: 26px; color: var(- -graydark)"></i>
			</div>
			<div class="home">
				<i class="fa-regular fa-pen-to-square create"
					style="font-size: 26px; color: var(- -graydark)"
					onclick="openModal()"></i>
			</div>
			<div class="home">
				<i class="fa-regular fa-comment"
					style="font-size: 26px; color: var(- -graydark)"></i>
			</div>
		</div>
		<div id="navmid">
			<input class="nav-search" type="text" placeholder="Search..">
			<i class="fa fa-search search-icon"></i>
		</div>
		<div id="navright">
			<i class="fa fa-user fa-2x"></i>
		</div>
	</div>

	<div id="create-post">
		<div class="create-post-up">
			<h3>Create New Event</h3>
		</div>
		<form class="create-post-mid" action="/lcep/events" method="post">
			<label for="eventTitle">Event Title</label> <input
				class="create-post-input" type="text" placeholder="Event Title"
				id="eventTitle"  name="eventTitle"> <label for="eventDescription">Event
				Description</label>
			<textarea class="create-post-input" placeholder="Event Description"
				id="eventDescription" name="eventDescription"></textarea>
			<label for="eventAddress">Event Address</label> <input
				class="create-post-input" type="text" placeholder="Event Address"
				id="eventAddress" name="eventAddress"> <label for="eventTime">Date Time</label>
			<input class="create-post-input" type="datetime-local" id="eventTime" name="eventTime">


			<div class="create-post-down">
				<div class="post-btn">
					<button class="cancel-btn" onclick="closeModal()">Cancel</button>
					<button type="submit" class="submit-btn">Submit</button>
				</div>
			</div>
		</form>
	</div>

	<script>
		function openModal() {
			document.getElementById("create-post").style.display = "block";
		}

		function closeModal() {
			document.getElementById("create-post").style.display = "none";
		}
	</script>
</body>
</html>