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
        <h1>Dien tich - Chu vi hinh chu nhat</h1>
        <form action="bai_02.jsp" method="POST">
            <table border="0">
                <tr>
                    <td>Chieu dai</td>
                    <td><input type="text" name="dai" value="" required /></td>
                </tr>
                <tr>
                    <td>Chieu rong</td>
                    <td><input type="text" name="rong" value="" required /></td>
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
            String dai = request.getParameter("dai");
            String rong = request.getParameter("rong");
            if (dai != null && rong != null) {
                double d = Double.parseDouble(dai);
                double r = Double.parseDouble(rong);
                double dt = d * r;
                double cv = (d + r) * 2;
                out.println("<hr>");
                out.println("Dien tich: " + dt);
                out.println("Chu vi: " + cv);
            }
        %>
    </body>
</html>
