<%-- 
    Document   : AddAccount
    Created on : Sep 30, 2022, 9:43:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

        <!-- custom admin css file link  -->
        <link rel="stylesheet" href="admin_style.css">
        <link rel="stylesheet" href="sweetalert2.min.css">
        <!-- Boostrap 5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>  

        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="sweetalert2.min.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>

        <section class="add-products">
            <h1 class="title">Add Account</h1>
            <header class="header">

                <div class="flex">

                    <a href="AdminIndex.jsp" class="logo">Admin<span>Panel</span></a>

                    <nav class="navbar">
                        <a href="DashboardServlet"><span>Home</span></a>
                        <a href="ListHouseServlet">Room</a>
                        <a href="ListBillServlet">Orders</a>
                        <a href="ListAccountServlet">Users</a>
                        <a href="ListAddService">Service</a>
                        <a href="ListCommentServlet">Messages</a>
                    </nav>

                    <div class="icons">
                        <div id="menu-btn" class="fas fa-bars"></div>
                        <div id="user-btn" class="fas fa-user"></div>
                    </div>

                    <div class="account-box">
                        <p>username : <span>${fullname}</span></p>
                        <a href="LogoutServlet" class="delete-btn">logout</a>

                    </div>

                </div>
            </header>
            <form action="AddAccountServlet" method="post" >
                <!--        <h3>Update Account</h3>-->
                <input
                    type="text"
                    name="id"
                    class="box"
                    placeholder="Enter Account ID"
                    hidden="true"
                    />
                <input
                    type="file"
                    name="userimg"
                    class="box"
                    hidden="true"
                    />
                <h2>Full Name</h2>
                <input
                    type="text"
                    name="fullname"
                    class="box"
                    placeholder="Enter Full Name"
                    />
                <h2>Username</h2>
                <input
                    type="text"
                    name="username"
                    class="box"
                    placeholder="Enter Username"
                    />
                <h2>Password</h2>
                <input
                    type="password"
                    name="password"
                    class="box"
                    placeholder="Enter Password"
                    />
                <h2>Phone</h2>
                <input
                    type="number"
                    name="phone"
                    class="box"
                    placeholder="Enter phone number"
                    />
                <input
                    type="number"
                    name="status"
                    class="box"
                    placeholder="Enter status"
                    hidden="true"
                    />
                <input
                    type="number"
                    name="role"
                    class="box"
                    placeholder="Enter role"
                    hidden="true"
                    />
                <input class="Update-btn" type="submit" value="   Add  " name="Update" id="click"/>
            </form>
        </section>
    </body>

    <script>
        document.querySelector('#click').addEventListener('click', (event) => {
            event.preventDefault();
            Swal.fire({
                title: 'Do you want to Add ?',
                showDenyButton: true,
                showCancelButton: true,
                confirmButtonText: 'Add',
                denyButtonText: `Don't Add`,
            }).then((result) => {
                /* Read more about isConfirmed, isDenied below */
                if (result.isConfirmed) {
                    Swal.fire('Added!', '', 'success')
                    document.querySelector('form').submit();
                } else if (result.isDenied) {
                    Swal.fire('Changes are not saved', '', 'info')
                }
            })
        });
    </script>
    <script src="admin_script.js"></script>
</html>
