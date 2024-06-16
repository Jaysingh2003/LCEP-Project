<%@ page contentType="text/html;charset=UTF-8" language="java"%>


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
<link rel="stylesheet" href="style.css">
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
    background-color: var(--primary-color);
    
}
:root{
    --graydark: #5b5a5a;
    --secondary-color:rgb(247, 242, 242);
    --primary-color:#dadada;
    --bg-carolina-blue: hsla(199, 89%, 49%, 1);
    --bg-prussian-blue: hsla(216, 33%, 20%, 1);
    --bg-oxford-blue-2: hsla(222, 47%, 11%, 1);
    --bg-oxford-blue: hsla(222, 44%, 13%, 1);
    --gradient-1: linear-gradient(90deg, #0ea5ea, #0bd1d1 51%);
    --gradient-2: linear-gradient(90deg, #0ea5ea, #0bd1d1 51%, #0ea5ea);
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
    background-image: url(images/logo.png);
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
.bar-img{
    height: 90%;
    width: 90%;
   border-radius: 2px;
   background-size: cover;
    background-image:url(images/post-2.png);
}
#right{
    width: 20%;
   /* min-height:  200vh; */
   /* background-color: var(--primary-color); */
}
#mid{
    width: 60%;
   /* min-height: 200vh; */
    background-color:var(--primary-color);
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
    background-image: url(images/post-3.png);
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
    background-image: url(images/post-4.png);
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
    background-image: url(images/post-img.jpg);
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
</style>


</head>
<body>
    <div id="main">
    <div id="nav">
        <div id="logo"></div>
        <div id="navleft">
           <div class="home"><i class="fa-solid fa-house"style="font-size:26px;color:var(--graydark)"></i></div> 
           <div class="home"><i class="fa-regular fa-circle-question"style="font-size:26px;color:var(--graydark)"></i></div> 
           <div class="home"><i class="fa-regular fa-pen-to-square create"style="font-size:26px;color:var(--graydark)"></i></div>
           <div class="home"><i class="fa-regular fa-comment"style="font-size:26px;color:var(--graydark)"></i></div> 
        </div>
        <div id="navmid">
            <div class="Searchbox"><input class="nav-search"  type="text" placeholder="Search.." ></div>
            <div class="Search"><i class="fa fa-search"></i></div>
        </div>
           
        <div id="navright"><i class="fa fa-user fa-2x" style="font-size:26px;color:var(--graydark)"></i></div>
    </div>
<div id="container">
<div id="left">

<div id="bars">
  <div class="bar">
    <div class="barleft" >
        <div class="in"> <i class="fa-regular fa-plus plus create " ></i></div></div>
    <div class="barright"> 
        <div class="in"><h3 class= "create" style="color:var(--graydark); ">Create Post</h3></div>
    </div>
  </div>
  <div class="bar">
    <div class="barleft"> <div class="in bar-img"></div></div>
    <div class="barright"> <div class="in"><h3 style="color:var(--graydark)">Question 1</h3></div></div>
  </div>
  <div class="bar">
    <div class="barleft"><div class="in bar-img"></div></div>
    <div class="barright"> <div class="in"><h3 style="color:var(--graydark)">Question 2</h3></div></div>
  </div>
  <div class="bar">
    <div class="barleft"><div class="in bar-img"></div></div>
    <div class="barright"> <div class="in"><h3 style="color:var(--graydark)">Question 3</h3></div></div>
  </div>
  <div class="bar">
    <div class="barleft"><div class="in bar-img"></div></div>
    <div class="barright"> <div class="in"><h3 style="color:var(--graydark)">Question 4</h3></div></div>
  </div>
</div>


</div>

<div id="mid">
    <div id="midsearch">
        <div id="msup">
            <div class="msup-left">
                <div class="msup-circle"></div>
            </div>
            <div class="msup-right">
            <form action="">
               <i class="fa fa-search search-icon"></i> 
              <input class="search-input" type="search" placeholder=" Ask your Question here...">
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
                
                <h3 style="margin-left: 10px; color:var(--graydark)">Answer</h3>
                 
                </div>
            </div>
            <div class="msdown-icons ">
                <div class="msdown-icon create" >
                    <i class="fa-solid fa-pen pen  "  style="font-size:20px ; color:var(--graydark)"></i>
                    <h3  style="margin-left: 10px; color:var(--graydark)">Post</h3>
                </div>
            </div>
        </div>
    </div>

    <div id="post">
        <div id="post-upper">
            <div id="post-up-left">
                <div id="post-up-left-cicle"></div>
            </div>
            <div id="post-up-right">
                <div id="post-up-right-up">
                    <h3 style=" position:absolute ;margin-left:  10px ; margin-top: 10px; color: var(--graydark) ">Name of The User<span style="color: rgb(0, 136, 255);"> . follow</span></h3>
                  <i class="fa-solid fa-xmark xmark"></i>
                </div>
                
                
                <div id="post-up-right-low">
                    <h5 style=" position:absolute ;margin-left:  10px ; margin-top: 10px; color: var(--graydark) "> 10 April 2024</h5>
                 
                </div>
            </div>
                
                
            </div>
        <div id="post-text">
            <div class="post-text-in"><p>  Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius sit tenetur aliquam, mollitia alias quibusdam voluptatum consectetur earum, obcaecati reprehenderit possimus voluptates modi provident incidunt assumenda quasi molestiae eos atque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet, asperiores. Incidunt, minus, id facilis alias quod qui perferendis officiis nostrum dolorem pariatur cum. Eveniet officia at illo, vitae ut asperiores id nesciunt provident aliquid veniam doloremque quas rerum incidunt facilis eum quam blanditiis velit accusantium expedita ad laboriosam eaque praesentium!</p></div>
        </div>
        <div id="post-img"></div>
        <div id="post-lower">
             <div class="post-like">
              <i class="fa-regular fa-heart like-icon"></i>
              <div class="like-count"><h5 style="color:var(--graydark);">2k <span>Likes</span></h5></div>
             </div>
             <div class="post-comment">
                <i class="fa-regular fa-comments"></i>
             </div>
             <div class="post-triple-dot">
                <i class="fa-solid fa-ellipsis-vertical"></i>
             </div>
            </div>
        </div>
        <div id="post">
            <div id="post-upper">
                <div id="post-up-left">
                    <div id="post-up-left-cicle"></div>
                </div>
                <div id="post-up-right">
                    <div id="post-up-right-up">
                        <h3 style=" position:absolute ;margin-left:  10px ; margin-top: 10px; color: var(--graydark) ">Name of The User<span style="color: rgb(0, 136, 255);"> . follow</span></h3>
                      <i class="fa-solid fa-xmark xmark"></i>
                    </div>
                    
                    
                    <div id="post-up-right-low">
                        <h5 style=" position:absolute ;margin-left:  10px ; margin-top: 10px; color: var(--graydark) "> 10 April 2024</h5>
                     
                    </div>
                </div>
                    
                    
                </div>
            <div id="post-text">
                <div class="post-text-in"><p>  Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius sit tenetur aliquam, mollitia alias quibusdam voluptatum consectetur earum, obcaecati reprehenderit possimus voluptates modi provident incidunt assumenda quasi molestiae eos atque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet, asperiores. Incidunt, minus, id facilis alias quod qui perferendis officiis nostrum dolorem pariatur cum. Eveniet officia at illo, vitae ut asperiores id nesciunt provident aliquid veniam doloremque quas rerum incidunt facilis eum quam blanditiis velit accusantium expedita ad laboriosam eaque praesentium!</p></div>
            </div>
            <!-- <div id="post-img"></div> -->
            <div id="post-lower">
                 <div class="post-like">
                  <i class="fa-regular fa-heart like-icon"></i>
                  <div class="like-count"><h5 style="color:var(--graydark);">2k <span>Likes</span></h5></div>
                 </div>
                 <div class="post-comment">
                    <i class="fa-regular fa-comments"></i>
                 </div>
                 <div class="post-triple-dot">
                    <i class="fa-solid fa-ellipsis-vertical"></i>
                 </div>
                </div>
            </div>
        
      
    </div>  
<!-- mid -->
    


    <div id="right">
  


    </div>

    
    
    
</div>
<!-- container -->


</div>
  

    <div id="create-post">
        <div class="create-post-up">
            
            <h3 style=" position:absolute ;margin-left:  20px ; margin-top: 20px; color: var(--graydark) ">Name of The User <span><h5 style="color: rgb(69, 69, 69);">10 April 2024</h5></span></h3>

            <i class="fa-solid fa-xmark xmark"></i>
            
        </div>
       
        <div class="create-post-mid">
            <textarea class="create-post-input" name="" id="" cols="30" rows="10" placeholder=" Write your Question..." ></textarea>
            <!-- <input class="create-post-input" type=" text" placeholder=" Write your Question....."> -->
        
        </div>
        
        <div class="create-post-down">
            <div class="post-btn">
                <button class="submit-btn" >Submit</button>
                <button class="cancel-btn">Cancel</button>
            </div>
        </div>
    </div>

<script>
    document.addEventListener("DOMContentLoaded", function() {
    // Get the cancel button and x mark
    var cancelButton = document.querySelector(".cancel-btn");
    var xmarkButton = document.querySelector(".fa-xmark");

    // Add click event listener to cancel button
    cancelButton.addEventListener("click", function() {
        // Hide the create-post element
        document.getElementById("create-post").style.display = "none";
    });

    // Add click event listener to x mark
    xmarkButton.addEventListener("click", function() {
        // Hide the create-post element
        document.getElementById("create-post").style.display = "none";
    });
});
document.addEventListener("DOMContentLoaded", function() {
    var createPost = document.getElementById("create-post");
    var createButton = document.querySelector(".create");

    // Add click event listener to the element with "Create" class
    createButton.addEventListener("click", function() {
        // Set the display property of the create-post element to initial
        createPost.style.display = "initial"; // You can also use "block" here if needed
    });
});

</script>

</body>
</html>