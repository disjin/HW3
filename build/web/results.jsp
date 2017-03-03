<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    
    <%
        double hoursWorked = Double.parseDouble(request.getParameter("hours"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("pre-tax"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("post-tax"));
        double hourlyPay = Double.parseDouble(request.getParameter("pay"));
    
        double grossPay = 0;
        double taxAmount = 0;
        double postTaxPay = 0;
        double netPay = 0;
        double otPay = hourlyPay * 1.5;
        double otHours = hoursWorked - 40;
        double preTaxPay = 0;
        
    
            if (hoursWorked > 40)
            grossPay = (40 * hourlyPay) + (otHours * otPay);
            else
            grossPay = hoursWorked * hourlyPay;
    
            if (grossPay < 500)
            taxAmount = (grossPay - preTaxDeduct) * 0.18;
            else 
            taxAmount = (grossPay - preTaxDeduct) * 0.22;
    
            postTaxPay = (grossPay - preTaxDeduct) - taxAmount;
            netPay = postTaxPay - postTaxDeduct;
        %>
    
    <body>
        <h1>Salary Info</h1>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyPay %></td>
                </tr>
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= otHours%></td>
                </tr>
                <tr>
                    <td>Overtime Pay Rate:</td>
                    <td><%=otPay%></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td><%=grossPay%></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%=preTaxPay%></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%=taxAmount%></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%=postTaxPay%></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct%></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td><%=netPay%></td>
                </tr>
            </tbody>           
        </table>
    </body>
</html>
