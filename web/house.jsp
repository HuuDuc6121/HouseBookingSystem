<%-- 
    Document   : house
    Created on : Oct 28, 2022, 11:55:28 PM
    Author     : kiety
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row content">
                <div>
                    <c:forEach var="h" items="${list}">
                        <div class="col-sm-3 py-3" style="margin-top: 10px;">
                            <div class="card">
                                <form method ="post" action="HouseServlet">
                                    <button style="background: white;color : black;" type="submit">
                                        <div class="img_scale" ><img src="" style="width: 90%; height: 250px" /></div><br/>                    
                                        <input type="hidden" value="${h.houseid}" name="id"/>
                                        Name: ${h.housename}<br/>
                                        price: ${h.houseprice}<br/>
                                        address: ${h.address}<br/>
                                </form>       
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>
