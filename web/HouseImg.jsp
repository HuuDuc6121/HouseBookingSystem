<%-- 
    Document   : HouseImg
    Created on : Oct 12, 2022, 12:05:49 PM
    Author     : Admin
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.HouseImg"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="adminuser_style.css"/>
        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

        <!-- custom admin css file link  -->
        <link rel="stylesheet" href="admin_style.css">
        <!-- Boostrap 5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>  

        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </head>
    <body>
        <div class="header_fixed">
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
            <p class="text-danger">${mess}</p>
            <table>
                <thead>
                    <tr>
                        <th>Img</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="l" items="${h}">
                        <tr>
                        <td>
                            <div style=" width: 200px;height: 200px;">
                                <img style="width: 100%;height: 100%;" src="Images/houseImgs/${l.imglink}<%--=houseimg--%>" >
                            </div>
                        </td>
                        <td>
                            <form action="HouseImgServlet" method="POST" enctype="multipart/form-data">
                                <input type="file" id="upload_file" name="houseimg" size="">
                                <input type="text" name="id" value="${l.imgid}"/>
                                <button class="" type="submit" name="sub" value="uploadPic">Upload</button>
                            </form>
                        </td>
                    </tr>
                    </c:forEach>
                    
                </tbody>

            </table>
        </div>
    </body>
    <script src="admin_script.js"></script>
</html>