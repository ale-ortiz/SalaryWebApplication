<%-- 
    Document   : results
    Created on : Oct 1, 2015, 7:45:55 PM
    Author     : aleortiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String hoursWorked = request.getParameter("hours");
        String hourlyPay = request.getParameter("pay");
        String preTax = request.getParameter("pre");
        String postTax = request.getParameter("post");
        
                %>
    <body>
        <h1>Hello World!</h1>
        <table>
                 <tbody>
                        <tr>
                            <td>Hours Worked:</td>
                            <td><%=hoursWorked %></td>
                        </tr>
                        <tr>
                            <td>Hourly Pay:</td>
                            <td><%=hourlyPay %></td>
                        </tr>
                        <tr>
                            <td>Pre-tax Deduct:</td>
                            <td><%=preTax %></td>
                        </tr>
                        <tr>
                            <td>Post-tax Deduct:</td>
                            <td><%=postTax %></td>
                        </tr>
                 </tbody>
            </table>
    </body>
</html>
