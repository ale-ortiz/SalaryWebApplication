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
        <link rel="stylesheet" type="text/css" href="styles.css"
    </head>
    <%
        int hoursWorked = Integer.parseInt(request.getParameter("hours"));
        double hourlyPay = Double.parseDouble(request.getParameter("pay"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("pre"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("post"));
        double regularHours = 0;
        double otHours = 0;
        double otPayRate = 0;
        double otPay = 0;
        double regularPay = 0;
        double grossPay = 0;
        double taxablePay = 0;
        double taxAmount = 0;
        double postTaxPay = 0;
        double netPay = 0; 

        if (hoursWorked > 40) {
                regularHours = 40;
                otHours = hoursWorked - 40;
                otPayRate = hourlyPay * 1.5;
                otPay = otHours * otPayRate;
                regularPay = regularHours * hourlyPay;
                grossPay = regularPay + otPay;
        } 
        else {
                grossPay = hoursWorked * hourlyPay;
        }               
        taxablePay = grossPay - preTaxDeduct;
        
        if (grossPay < 500) 
            taxAmount = taxablePay * .18;
        else
            taxAmount = taxablePay * .22;
                    
        postTaxPay = taxablePay - taxAmount;
        netPay = postTaxPay - postTaxDeduct ;      
                %>
    <body>
        <h1>Hello World!</h1>
        <table>
                 <tbody>
                        <tr>
                            <td>Total Hours Worked:</td>
                            <td><%=hoursWorked %></td>
                        </tr>
                        <tr>
                            <td>Hourly Rate:</td>
                            <td><%=hourlyPay %></td>
                        </tr>
                        <tr>
                            <td># Hours Overtime:</td>
                            <td><%=otHours %></td>
                        </tr>
                        <tr>
                            <td>Overtime Hourly Rate:</td>
                            <td><%=otPayRate %></td>
                        </tr>
                        <tr>
                            <td>Gross Pay:</td>
                            <td><%=grossPay %></td>
                        </tr>
                        <tr>
                            <td>Pre-tax Deduct:</td>
                            <td><%=preTaxDeduct %></td>
                        </tr>
                        <tr>
                            <td>Tax Amount:</td>
                            <td><%=taxAmount %></td>
                        </tr>
                        <tr>
                            <td>Post-tax Pay:</td>
                            <td><%=postTaxPay %></td>
                        </tr>
                        <tr>
                            <td>Post-tax Deduct:</td>
                            <td><%=postTaxDeduct %></td>
                        </tr>
                        <tr>
                            <td>Net Pay:</td>
                            <td><%=netPay %></td>
                        </tr>
                 </tbody>
            </table>
    </body>
</html>
