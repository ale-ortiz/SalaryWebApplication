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
        <title>Salary Info</title>
        <link rel="stylesheet" type="text/css" href="styles.css"
    </head>
    <%
        int hoursWorked = Integer.parseInt(request.getParameter("hours"));
        double hourlyPay = Double.parseDouble(request.getParameter("pay"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("pre"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("post"));
        int regularHours = 0;
        int otHours = 0;
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
        <h2>Salary Info</h2>
        <hr>
        <div>
        <table class="t2" border="1">
                 <tbody>
                        <tr>
                            <td class="td1">Total Hours Worked:</td>
                            <td class="td2"><%=hoursWorked %></td>
                        </tr>
                        <tr>
                            <td class="td3">Hourly Rate:</td> 
                            <td class="td4"><%=hourlyPay %></td>
                        </tr>
                        <tr>
                            <td class="td5"># Hours Overtime:</td>
                            <td class="td6"><%=otHours %></td>
                        </tr>
                        <tr>
                            <td class="td7">Overtime Hourly Rate:</td>
                            <td class="td8"><%=otPayRate %></td>
                        </tr>
                        <tr>
                            <td class="td9">Gross Pay:</td>
                            <td class="td10"><%=grossPay %></td>
                        </tr>
                        <tr>
                            <td class="td11">Pre-tax Deduct:</td>
                            <td class="td12"><%=preTaxDeduct %></td>
                        </tr>
                        <tr>
                            <td class="td13">Tax Amount:</td>
                            <td class="td14"><%=taxAmount %></td>
                        </tr>
                        <tr>
                            <td class="td15">Post-tax Pay:</td>
                            <td class="td16"><%=postTaxPay %></td>
                        </tr>
                        <tr>
                            <td class="td17">Post-tax Deduct:</td>
                            <td class="td18"><%=postTaxDeduct %></td>
                        </tr>
                        <tr>
                            <td class="td19">Net Pay:</td>
                            <td class="td20"><%=netPay %></td>
                        </tr>
                 </tbody>
            </table>
            <p>
			<a href="index.jsp" title="Home">Home</a>
            </p>
        </div>
    </body>
</html>
