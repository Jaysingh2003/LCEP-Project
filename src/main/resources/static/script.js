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
