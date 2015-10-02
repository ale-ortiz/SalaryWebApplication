<%-- 
    Document   : index
    Created on : Oct 1, 2015, 7:03:49 PM
    Author     : aleortiz
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="styles.css"
    </head>
    
    <body>
        <h2>Simple Salary Calculator</h2>
        <hr>
        <form name="salaryForm" action="results.jsp" method="post">
            <table class="t1">
                 <tbody>
                        <tr>
                            <td>Hours Worked:</td>
                            <td><input type="text" name="hours" value="" size="50" required</td>
                        </tr>
                        <tr>
                            <td>Hourly Pay:</td>
                            <td><input type="text" name="pay" value="" size="50" required</td>
                        </tr>
                        <tr>
                            <td>Pre-tax Deduct:</td>
                            <td><input type="text" name="pre" value="" size="50" required</td>
                        </tr>
                        <tr>
                            <td>Post-tax Deduct:</td>
                            <td><input type="text" name="post" value="" size="50" required</td>
                        </tr>
                 </tbody>
            </table>
            <div>
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            </div>
        </form>
    </body>
</html>
