<!DOCTYPE html>
<html lang="en">
  <head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Login</title>
    <link rel="shortcut icon" type="image/png" href="/static/images/twitter.ico"/>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <style>
      * {

       box-sizing: border-box;
       margin: 0px;
       padding: 0px;
       font-family:   "Segoe UI", Arial, sans-serif;
       line-height: 1.8;
      }

      body {

        background-color: #00acee ;
      }
      @font-face {
      font-family: "edgeicons";
        src: url("edge-icons-Regular.eot");
        src: url("edge-icons-Regular.eot?#iefix") format("embedded-opentype"),
           url("edge-icons-Regular.woff") format("woff"),
            url("edge-icons-Regular.ttf") format("truetype");
      }

      i{
        color: #00acee;
      }

      a {

       text-decoration: none;
      }

      #container {
        display: flex;
     justify-content: center;
       align-items: center;
        margin: 30px auto;
        max-width: 400px;

      }

      .form-wrap {

         background-color: #fff;
         padding: 15px;
         border-radius: 20px
      }

      .form-wrap h1{

        text-align: center;

      }
      .form-wrap p{
        padding-left: 10px;
      }

      .form-wrap .form-group {

        margin: 10px;
      }

      .form-wrap .form-group label {

        display: block;
      }

      .form-wrap .form-group input {

        width: 100%;
        padding: 2%;
        background-color: rgba(46, 17, 140, 0.05);
        border: 1px;


      }


      .form-wrap button {

        width: 100%;
        background-color: #00acee ;
        border: none;
        display: block;
        border-radius: 5px;
        margin-top: 20px;
        padding: 10px;
        cursor: pointer;
        color: #fff;
      }

      .form-wrap button:hover {

        background-color:  #ffff;
        border-color:#00acee;
        border:1px solid;
        color:#00acee;
      }

      .form-wrap .bottom-text {

        font-size: 13px;
        margin-top: 10px;
      }

      footer {
        text-align: center;
      }

      footer a {
        color:#ffff ;
      }
      .sub-head{
          font-weight: bold;
      }
    </style>
  </head>
  <body>
    <div id="container">
      <div>
      <div class="form-wrap">
        <h1><i class="fab fa-twitter fa-3x"></i></h1>
        <p class="sub-head">Login now!</p>
        <form>

          <div class="form-group">

            <input type="email" name="email" id="email" placeholder="Email"/>
          </div>
          <div class="form-group">

            <input type="password" name="password" id="password" placeholder="Password"/>
          </div>

          <button type="button" class="btn" id="signup">Login in</button>
          <p style="color:red; " id="error"></p>
          <p class="bottom-text">
            By clicking the Sign Up button, you agree to our
            <a href="#">Terms & Conditions</a> and
            <a href="#">Privacy Policy</a>
          </p>
        </form>

      </div>
      <footer>
        <p>Already have an account? <a href="#">Login Here</a></p>
      </footer>
    </div>
    </div>
    <script>
      function validateSignupForm(){

        var email = $("#email").val();

        var password = $("#password").val();
        var error="";
        if(!email){
            error+="Email is empty";
        }

        if(!password){
            error+="Password is empty";
        }
        if(!!password && password.length< 4){
              error+="Password length must be greater than 4 characters";
        }
        $("#error").html(error);
        if(error.length>0)
            return false;
        return true;
      }
      $("#signup").click(function(){
        var validForm=validateSignupForm();
        if(validForm){
         $("#error").hide;
         var user={
         "email": $("#email").val(),
         "password": $("#password").val()
         };
         $.ajax({
          type: "POST",
          url: "/login/welcome",
          data: JSON.stringify(user),
          success: function(response){
            if(!!response){
              if(response.is_logined=== true){
                   location.href="/user/welcomeuser";
              }else{
                   var error=response.message;
                     $("#error").show;
                     $("#error").html(error);
              }
            }

          },
          contentType: "application/json"
         });
        }else{
         $("#error").show();
        }
      });
    </script>
  </body>
</html>
