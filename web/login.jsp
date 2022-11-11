

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="login_style.css" rel="stylesheet"/>


    <body>

        <%
           String username = "";
           String password = "";
           Cookie[] cookies = request.getCookies();
           if (cookies != null) {
               for (Cookie cookie: cookies) {
                   if ((cookie.getName()).equals("cusername")) {
                       username = cookie.getValue();
                   } else if ((cookie.getName()).equals("cpassword")) {
                       password = cookie.getValue();
                   }
               }
            }
        %>


        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    <div id="first">
                        <div class="myform form ">
                            <div class="logo mb-3">
                                <div class="col-md-12 text-center">
                                    <h1>Login</h1>
                                </div>
                            </div>
                            <form action="LoginServlet" method="post" name="login">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">User name</label>
                                    <input type="text" name="username"  value="<%=username %>" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter User name">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Password</label>
                                    <input type="password" name="password" value="<%=password %>"id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                                </div>

                                
                                <div class="myformother">
                                    <input style="margin-left: 5px" type="checkbox" checked="checked" name="rememberme" id="rememberMeCheckbox">
                                    <label style="margin-top: 10px; margin-left: 5px; width: 200px " for="rememberMeCheckbox">Remember me</label>
                                    <a  style="margin-left: 50px" href="">Forgot your password?</a>
                                </div>
                                <!--mess-->
                                <p class="text-danger">${mess}</p>
                                <div class="col-md-12 text-center ">
                                    <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
                                </div>
                                <div class="col-md-12 ">
                                    <div class="login-or">
                                        <hr class="hr-or">
                                        <span class="span-or">or</span>
                                    </div>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <p class="text-center">
                                        <a href="https://accounts.google.com/o/oauth2/auth?scope=profile%20email&redirect_uri=http://localhost:6969/HouseBookingSystem_SWP391/LoginGoogleServlet&response_type=code
                                           &client_id=933185261016-juojrbtjn75p13no3s23mo0qqltlpvn5.apps.googleusercontent.com&approval_prompt=force" class="google btn mybtn"><i class="fa fa-google-plus">
                                            </i> Login using Google
                                        </a>
                                    </p>
                                </div>
                                <div class="form-group" id="d">
                                    <p class="text-center">Don't have account? <a href="signup.jsp"  id="signup">Sign up here</a></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>   

    </body>
