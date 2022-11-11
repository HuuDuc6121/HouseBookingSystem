<%-- 
    Document   : BillDetail
    Created on : Oct 12, 2022, 10:46:58 AM
    Author     : Admin
--%>

<%@page import="Model.BillDetail"%>
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
   <link href="css/adminuser_style.css" rel="stylesheet" type="text/css"/>
   <link href="css/admin_style.css" rel="stylesheet" type="text/css"/>
   <link href="css/datatables.css" rel="stylesheet" type="text/css"/>
   <!-- Boostrap 5 -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>  

   <!-- jquery -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    </head>
    <body>
        <%
        BillDetail b = new BillDetail();
        if(request.getAttribute("bid") != null){
            b = (BillDetail) request.getAttribute("bid");
        }
        %>
        <div class="header_fixed">
<!--       <h1>Manage House</h1>
        <form action="mainController" method="get">
            Name : <input type="text" name="name" >
            <input type="submit" value="search" name="action">
        </form>-->
       
        
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
                <table id="table_id">
                <thead>
                    <tr>
                    <th>Bill_Detail_ID</th>
                    <th>Bill_ID</th>
                    <th>House_ID</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Note</th>
                    </tr>
                </thead>
                <tr>
                    <td><%=b.getBilldetailid() %></td>
                    <td><%=b.getBillid() %></td>
                    <td><%=b.getHouseid() %></td>
                    <td><%=b.getStartdate() %></td>
                    <td><%=b.getEnddate() %></td>
                    <td><%=b.getNote() %></td>
                </tr>
            </table>
            </div>
    </body>
    <script src="JS/admin_js.js" type="text/javascript"></script>
</html>