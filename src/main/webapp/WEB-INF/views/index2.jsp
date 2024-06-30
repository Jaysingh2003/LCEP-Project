<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page import="java.util.List"%>
<%@ page import="com.unstop.model.Event"%>
<%@ page import="com.unstop.model.User"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- <link rel="stylesheet" href="style.css"> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<style>
    :root{
        --graydark: #5b5a5a;
    }
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html,body{
    width: 100%;
    height: 100%;
    /* background-image: linear-gradient(to right, #39065a, #9a0f98); */
    background-color: var(--primary-color);
    
    
}
:root{
    --graydark: #5b5a5a;
    --secondary-color:rgb(255, 255, 255);
    --primary-color:#dadada;
}
#main{
    width: 100%;
    height: 100%;
    position: relative; 
    
}
#nav{
    /* position: absolute; */
    position: fixed;
    top: 0;
     width: 100%;
     height: 7%;
     /* background-image: var(--gradient-1); */
     background-color: white;
     /* z-index: 9999; */
     position: relative;
     display: flex;
     justify-content: space-evenly;
    align-items: center;
 }
#logo{
    height: 70%;
    width: 100px;
    /* background-color: red; */
    /* background-image: url(); */
    background-size: 100% 100%;
    z-index: 999;
}
#navleft{
    width: 15%;
    display: flex;
    justify-content: space-between;
   align-items: center;
}
#navmid{
    padding: 5px;
    display: flex;
    justify-content: space-evenly;
    width: 15%;
    background-color:#dadada;

    position: relative;
    border-radius: 5px;
}
.Searchbox{
    width: 80%;
    height: 100%;
    background: transparent;
    /* background-color: bisque; */
}
.nav-search{
    border: none;
    outline: none;
    background: transparent;
}

#container{
    width: 100%;
    /* height: 100vh; */
    /* background-color: blueviolet; */
    position: relative;
    display: flex;
}
#left{

    width: 20%;
    /* min-height: 200vh; */
    /* background-color: var(--primary-color); */
   
    position: relative;
    justify-content: center;

}
#bars{
   
    padding: 5%;
    padding-top: 10%;
    position: relative;
    justify-content: center;
    height: 100%;
    width: 100%;
    gap: 2px;
}
.bar{
    margin-top: 2px;
    position: relative;
    display: flex;
    height: 50px;
    width: 90%;
    background-color: rgb(255, 255, 255);
    border-radius: 4px;
    
}
.barleft{
    height: 100%;
    width: 20%;
    position: relative;
 
}
.barright{
    height: 100%;
    width: 80%;
    position: relative;

}
.in{
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
}
.bar-img {
    height: 90%;
    width: 90%;
    border-radius: 2px;
    object-fit: cover; /* Ensures the image covers the area like background-size: cover */
}
#right{
    width: 20%;
    position: relative;
    padding: 30px;

   /* min-height:  200vh; */
   /* background-color: var(--primary-color); */
}
#mid{
    width: 60%;
   /* min-height: 200vh; */
    /* background-color:var(--primary-color); */
    position: relative;
    gap: 5px;
    padding-top: 60px;
    
}
#midsearch{
    width: 100%;
    height: 100px;
   background-color: var(--secondary-color);
    /* background-color: rgb(247, 242, 242); */
    border-radius: 5px;

}
#msup {
    width: 100%;
    height: 50px;
    padding: 2px;
    position: relative;
    display: flex;
}
.msup-left{
    height: 100%;
    width: 10%;
    position: relative;
    }
.msup-circle{
    
    position: absolute;
     height: 46px;
     width: 46px;
    /* background-image: url(images/post-3.png); */
    background-size: cover;
    border-radius: 50%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
}

.msup-right{
    margin:2px ;
    height: 85%;
    width: 90%;
    display: flex;
    padding: 14px;
    border-radius: 28px;
    align-items: center;
    background-color: #e5dede;
    border: 2px solid #788383;
}
.search-icon{

}
.search-input{
    background-color: transparent;
    border: none;
    outline: none;
    font-size: 16px;
    font-family: sans-serif;
    color: rgb(88, 85, 85);
    margin-left: 14px;
    
    
}
 #msdown {
    width: 100%;
    height: 50px;
    /* background-color: rgb(50, 50, 82); */
    display: flex;
    position: relative;
    justify-content: space-between;
}
.msdown-icons{
    width: 33%;
    position: relative;

}
.msdown-icon{
    
    display: flex;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
}


#post{
    margin-top: 50px;
    width: 100%;
    min-height: 170px;
    background-color: var(--secondary-color);
    border-radius: 5px;
   
}
#post-upper{
    width: 100%;
    height: 70px;
    /* background-color: rgb(166, 184, 184); */
    display: flex;
    position: relative;
}


#post-up-left{
    width:10% ;
    height: 100%;
    /* background-color: rgb(204, 140, 62); */
    position: relative;
    padding: 5px;
   
}
#post-up-left-cicle{
    position: absolute;
    width:55px ;
    height: 55px;
    border-radius: 50%;
    /* background-image: url(images/post-4.png); */
    background-size: cover;
}
#post-up-right{
    width:90% ;
    height: 100%;
    /* background-color: bisque; */
   
}
#post-up-right-up{
    width:100% ;
    height: 50%;
    /* background-color: rgb(128, 100, 66); */
    
 
}
.xmark{
    position: absolute;
    right: 10px;
    top: 10px;
}

#post-up-right-low{
    width:100% ;
    height: 50%;
    /* background-color: rgb(206, 147, 74); */
}
#post-text{

    width: 100%;
    min-height: 100px;
    /* background-color: rgb(59, 130, 130); */
    padding: 10px;
}
#post-img{
    width: 100%;
    height: 400px;
    /* background-image: url(images/post-img.jpg); */
    background-position: center;
    background-size: cover;
}
#post-lower{
    width: 100%;
    height: 50px;
    /* background-color: rgb(13, 129, 129); */
    display: flex;
    position: relative;
    padding: 10px;
    align-items: center;

}
.post-triple-dot{
    
    position: absolute;
    right :20px;
    top: 18px;
}
.post-comment{
    position: absolute;
    margin-left :15%;
    top: 18px;
}
.post-like{
  display: flex;
  position: relative;
  gap: 10px;
}
/* #posting{
    height: 100%;
    width: 100%;
    position: relative;
    background-color: #788383;
} */
#create-post{
    display: none;
    position: absolute;
    z-index: 99999;
    height: 60%;
    width: 70%;
    /* background: rgb(177, 176, 176); */
    border-radius: 5px;
    /* top:0%; */
    top:50%;
    left:50%;
    transform: translate(-50%,-50%);
    /* position: relative; */
}

.create-post-up{
    height: 20%;
    width: 100%;
    background-color: var(--secondary-color);
    border-radius: 5px;
}
.create-post-mid{
    height: 70%;
    width: 100%;
    /* background-color: rgb(181, 218, 204); */
    position: relative;
    border: none;

}
.create-post-input{
    height: 100%;
    width: 100%;
    border: none;
    outline: none;
    font-family: sans-serif;
    background-color: #bbbbbb;
    padding: 20px;
}
.create-post-down{
    height: 10%;
    width: 100%;
    background-color: var(--secondary-color);
     position: relative;
     border-radius: 5px;
}
.post-btn{
    position: absolute;
    top:20%;
    right:20px;
    gap: 50px;
}
.cancel-btn{
  height: 25px;
  width: 100px;
  background-color: #cacfd2;
  
  border-radius:5px;
  align-items: center;
}
.submit-btn{
    height: 25px;
    width: 100px;
    background-image: var(--gradient-1);
    /* color: var(--gradient-1); */
    border-radius:5px;
    align-items: center;


}

h3 {
    font-size: 16px; /* Replace 16px with the original size of your h3 elements */
    font-weight: normal; /* Adjust this as necessary */
    line-height: 1.5; /* Adjust this as necessary */
    /* margin-top: 20px;  */
    margin-bottom: 10px; /* Adjust this as necessary */
}
#profile-pic {
    width: 40px;
    height: 40px;
    background: linear-gradient(to right, #39065a, #9a0f98);
    border-radius: 50%;
    position: relative;
    
}
.fa-user{
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
}
.right-bars{

   height: 100%; 
   width: 90%;
   /* background-color: #0ea5ea; */
   position: relative;
}
.r-bar{
 height: 40px;
 width: 100%;
 border-radius: 4px;
 margin-bottom: 2px;
 background-color: #fff;
 position: relative;

}
</style>


</head>
<body>
    <div id="main">


        
    <div id="nav">
        <div id="logo"><h2>LCEP</h2></div>
        <div id="navleft">
           <div class=""><i class="fa-solid fa-house"style="font-size:26px;color:var(--graydark)"></i></div> 
           <div class=""><i class="fa-regular fa-circle-question"style="font-size:26px;color:var(--graydark)"></i></div> 
           <div class=""><i class="fa-regular fa-pen-to-square create"style="font-size:26px;color:var(--graydark)"data-toggle="modal" data-target="#createEventModal"></i></div>
           <div class=""><i class="fa-regular fa-comment"style="font-size:26px;color:var(--graydark)"></i></div> 
        </div>
        <div id="navmid">
            <div class="Searchbox"><input class="nav-search"  type="text" placeholder="Search.." ></div>
            <div class="Search"><i class="fa fa-search"></i></div>
        </div>
           
        <div id="navright">
            <div id="profile-pic" style="overflow: hidden;">
            <i class="fa fa-user " style="font-size:30px; color:var(--primary-color)"></i>
        </div></div>
    </div>
<div id="container">
<div id="left">
 <!-- create Event -->
<div id="bars">
  <div class="bar" data-toggle="modal" data-target="#createEventModal"  >
    <div class="barleft"  >
      <div class="in" > <i class="fa-regular fa-plus plus create " ></i></div></div>
   
   
        <div class="barright" > 
        <div class="in"><h3 class= "create" style="color:var(- -graydark) ; font-weight: bold; " >Create Event</h3></div>
    </div>
  </div>


  
 
  <!-- The Modal -->
					<div class="modal" id="createEventModal">
						<div class="modal-dialog">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">Create Event</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>

								<!-- Modal Body -->
								<div class="modal-body">
									<form action="/lcep/events" method="post" enctype="multipart/form-data">
										<div class="form-group">
											<label for="eventTitle">Event Title:</label> <input
												type="text" class="form-control" id="eventTitle"
												placeholder="Enter event title" name="eventTitle" required>
										</div>

										<div class="form-group">
											<label for="eventAddress">Event Address:</label> <input
												type="text" class="form-control" id="eventAddress"
												placeholder="Enter event address" name="eventAddress"
												required>
										</div>

										<div class="form-group">
											<label for="eventTime">Event Time:</label> <input
												type="datetime-local" class="form-control" id="eventTime"
												name="eventTime" required>
										</div>

										<div class="form-group">
											<label for="eventDescription">Event Description:</label>
											<textarea class="form-control" id="eventDescription"
												placeholder="Enter event description"
												name="eventDescription" rows="3" required></textarea>
										</div>

										<!-- New Image File Input -->
										<div class="form-group">
											<label for="eventImage">Event Image (optional):</label> <input
												type="file" class="form-control-file" id="eventImage"
												name="file" accept="image/jpeg, image/png">
										</div>
										<input type="hidden" name="userId" value="${userId}" placeholder="${userId}">

										<div class="form-group">
											<label for="eventCategory">Event Category:</label> <select
												class="form-control" id="eventCategory" name="category"
												required>
												<option value="">Select a category</option>
												<option value="Community Event">Community Event</option>
												<option value="Donation Event">Donation Event</option>
												<option value="Volunteer Event">Volunteer Event</option>
												<option value="others">Others</option>
											</select>
										</div>



										<!-- Modal Footer -->
										<div class="modal-footer">
											<button type="submit" class="btn btn-primary">Submit</button>
											<button type="button" class="btn btn-danger"
												data-dismiss="modal">Close</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>


					<!-- Modal closed -->



  
  
  <div class="bar">
    <div class="barleft"> <img class="bar-img in" src="/images/post-2.png" alt=" img"></div>
    <div class="barright" > <div class="in"><h3 style="color: var(- -graydark) ">Post 1</h3></div></div>
  </div>
  <div class="bar">
    <div class="barleft"> <img class="bar-img in" src="/images/post-2.png" alt=" img"></div>
    <div class="barright" > <div class="in"><h3 style="color: var(- -graydark) ">Post 2</h3></div></div>
  </div>
  
</div>


</div>

<div id="mid">
    <div id="midsearch">
        <div id="msup">
            <div class="msup-left">
                <img class="msup-circle" src="/images/post-3.png" alt="">
            </div>
            <div class="msup-right">
            <form action="">
               <i class="fa fa-search search-icon"></i> 
              <input class="search-input" type="search" placeholder=" Search here...">
            </form>
            </div>
        </div>
        <div id="msdown">
            <div class="msdown-icons">
                <div class="msdown-icon">
                    <i class="fa-solid fa-circle-question " style="font-size:20px ;color:var(--graydark)"></i>
                    <h3 style="margin-left: 10px;color:var(--graydark)">Ask</h3>
                </div>
            </div>
            <div class="msdown-icons">
                <div class="msdown-icon">
                
                    <i class="fa-regular fa-pen-to-square"  style="font-size:20px;color:var(--graydark)"></i>
                
                <h3 style="margin-left: 10px; color:var(--graydark);;">Answer</h3>
                 
                </div>
            </div> 
            <div class="msdown-icons ">
                <div class="msdown-icon create" data-toggle="modal" data-target="#createEventModal" >
                    <i class="fa-solid fa-pen pen  "  style="font-size:20px ; color:var(--graydark)"></i>
                    <h3  style="margin-left: 10px; color:var(--graydark)">Post</h3>
                </div>
            </div>
        </div>
    </div>
<!-- posted card with image -->
    <!-- Display Events Dynamically -->
				<% List<Event> events  =  (List<Event>) request.getAttribute("events"); %>

				<% for(Event event:events) { %>
				<div id="post">
					<div id="post-upper">
						<div id="post-up-left">
							<img id="post-up-left-cicle" src="/images/post-4.png" alt="">
						</div>
						<div id="post-up-right">
							<div id="post-up-right-up">
								<h3
									style="position: absolute; margin-left: 10px; margin-top: 10px; color: #5b5a5a; font-weight: bold;">
									<%= event.getEventOrganizer().getName()%>
									<span style="color: rgb(0, 136, 255);"> . follow</span>
								</h3>
							</div>
							<div id="post-up-right-low">
								<h3
									style="font-size: 15px; position: absolute; margin-left: 10px; margin-top: 10px; color: #5b5a5a;">
									<%= event.getEventPostTime() %>
								</h3>
							</div>
						</div>
					</div>
					<div id="post-text">
						<hr>
						<div>
							<h3>
								<span style="font-weight: bold;">Event Title: </span><%= event.getEventTitle()%></h3>
						</div>
						<hr>
						<div>
							<h3>
								<span style="font-weight: bold;">Time: </span><%= event.getEventTime()%></h3>
						</div>
						<hr>
						<div>
							<h3>
								<span style="font-weight: bold;">Address: </span><%= event.getEventAddress() %></h3>
						</div>
						<hr>
						<div class="post-text-in">
							<span style="font-weight: bold;">Description:</span>
							<p><%= event.getEventDescription() %></p>
						</div>
					</div>
					<img id="post-img"  src="${pageContext.request.contextPath}<%= event.getEventImage() %>" alt="Event Image">
					<div id="post-lower">
						<div class="post-like">
							<i class="fa-regular fa-heart like-icon"></i>
							<div class="like-count">
								<h5 style="color: #5b5a5a;">
									2k <span>Likes</span>
								</h5>
							</div>
						</div>
						<div class="post-comment">
							<i class="fa-regular fa-comments"></i>
						</div>
						<div class="post-triple-dot">
							<i class="fa-solid fa-ellipsis-vertical"></i>
						</div>
					</div>
				</div>

				<% } %>


    
        
      
    </div>  
<!-- mid -->
    

    <div id="right">
     <div class="right-bars">
        <div class="r-bar"> <div class="in"><h3 style="color: var(- -graydark) ;font-weight: bold; ">Categories</h3></div></div>
        <div class="r-bar"> <div class="in"><h3 style="color: var(- -graydark) ">Category 1</h3></div></div>
        <div class="r-bar"> <div class="in"><h3 style="color: var(- -graydark) ">Category 2</h3></div></div>
     </div>

    </div>

    
    
    
</div>
<!-- container -->


</div>
  

</body>
</html>