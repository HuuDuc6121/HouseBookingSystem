<%-- 
    Document   : UpdateHouse
    Created on : Oct 1, 2022, 12:04:02 AM
    Author     : Admin
--%>

<%@page import="Model.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Location"%>
<%@page import="java.util.List"%>
<%@page import="Model.House"%>
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
        <!-- Boostrap 5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>  

        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="sweetalert2.min.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>
        <%
        List<Location> llist = new ArrayList<Location>();
            if (request.getAttribute("llist") != null) {
                llist = (List<Location>) request.getAttribute("llist");
            }
            List<Menu> mlist = new ArrayList<Menu>();
            if (request.getAttribute("mlist") != null) {
                mlist = (List<Menu>) request.getAttribute("mlist");
            }
        House h = new House();
            if (request.getAttribute("house") != null) {
                h = (House) request.getAttribute("house");
            }
        %>
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


        <section class="add-products">
            <h1 class="title">Update</h1>

            <form action="EditHouseServlet" method="post" >
                <input
                    type="text"
                    name="houseid"
                    value="<%=h.getHouseid() %>"
                    class="box"
                    placeholder="Enter Account ID"
                    hidden="true"
                    />
                <h2>Post Date</h2>
                <input
                    type="date"
                    name="postdate"
                    value="<%=h.getPostdate() %>"
                    class="box"
                    required=""
                    />
                <h2>House Name</h2>
                <input
                    type="text"
                    name="housename"
                    value="<%=h.getHousename() %>"
                    class="box"
                    placeholder="Enter Full Name"
                    required=""
                    />
                <input
                    type="text"
                    name="review"
                    value="<%=h.getReview() %>"
                    class="box"
                    placeholder="Enter Username"
                    hidden="true"
                    />
                <h2>House Price</h2>
                <input
                    type="number"
                    name="houseprice"
                    value="<%=h.getHouseprice() %>"
                    class="box"
                    placeholder="Enter House Price"
                    required=""
                    />
                <h2>Address</h2>
                <input
                    type="text"
                    name="address"
                    value="<%=h.getAddress() %>"
                    class="box"
                    placeholder="Enter phone number"
                    required=""
                    />
                <input
                    type="number"
                    name="status"
                    value="<%=h.getStatus() %>"
                    class="box"
                    placeholder="Enter status"
                    hidden="true"
                    />
                <h2>Description</h2>
                <input
                    type="text"
                    name="description"
                    value="<%=h.getDescription() %>"
                    class="box"
                    placeholder="Enter role"
                    />
                <h2>Location</h2>
                <select class="box"  name="location">
                    <%
                       for(Location l : llist){
                    %>
                    <option value="<%=l.getId() %>" ><%=l.getName() %></option>
                    <%
                }
                    %>
                </select>
                <h2>Menu</h2>
                <select class="box" name="menu">
                    <%
                        for(Menu m : mlist){
                    %>
                    <option value="<%=m.getId() %>" ><%=m.getName() %></option>
                    <%
                }
                    %>
                </select>



                <input class="Update-btn" type="submit" value="Update" name="Update" id="click"/>
            </form>
        </section>

    </body>
    <script>
        document.querySelector('#click').addEventListener('click', (event) => {
            event.preventDefault();
            Swal.fire({
                title: 'Do you want to save the changes?',
                showDenyButton: true,
                showCancelButton: true,
                confirmButtonText: 'Save',
                denyButtonText: `Don't save`,
            }).then((result) => {
                /* Read more about isConfirmed, isDenied below */
                if (result.isConfirmed) {
                    Swal.fire('Saved!', '', 'success')
                    document.querySelector('form').submit();
                } else if (result.isDenied) {
                    Swal.fire('Changes are not saved', '', 'info')
                }
            })
        });
    </script>

    <script src="JS/admin_js.js" type="text/javascript"></script>
</html>
