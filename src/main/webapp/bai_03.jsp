<%-- 
    Document   : bai_02
    Created on : Oct 16, 2024, 8:31:46 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Dien tich - Chu vi hinh tron</h1>
        <form action="bai_03.jsp" method="POST">
            <table border="0">
                <tr>
                    <td>Ban kinh</td>
                    <td><input type="text" name="bankinh" value="" required /></td>
                </tr>
                <tr>
                    <td>Chon loai ngoai te</td>
                    <td><select name="loaingoaite"> 
                            <option value="USD">USD</option>
                            <option value="GBP">GBP</option>
                            <option value="EUR">EUR</option>
                            <option value="JPY">JPY</option>
                            <option value="AUD">AUD</option>
                        </select></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Tinh toan" />
                        <input type="submit" value="Tiep tuc" />
                    </td>
                </tr>
            </table>
        </form>
        <%
            String bankinh = request.getParameter("bankinh");
            if (bankinh != null) {
                double bk = Double.parseDouble(bankinh);
                double dt = Math.PI * bk * bk;
                double cv = 2 * bk * Math.PI;
                out.println("<hr>");
                out.println("Dien tich: " + dt);
                out.println("Chu vi: " + cv);
            }
        %>
    </body>
</html>
