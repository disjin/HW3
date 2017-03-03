<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Salary Calculator</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="simpleSalaryCalculator" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="number" name="hours" value=""></td>                       
                    </tr>
                    <tr>
                        <td>Hourly pay:</td>
                        <td><input type="number" name="pay" value=""></td>                       
                    </tr>
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="number" name="pre-tax" value=""></td>                       
                    </tr>
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="number" name="post-tax" value="" required></td>                       
                    </tr>
                </tbody>
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Sumbit" id="sumbit">
            
        </form>
    </body>
</html>
