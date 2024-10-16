<%-- 
    Document   : bai_04
    Created on : Oct 16, 2024, 8:46:19 AM
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
        <h1>Doi ngoai te</h1>
        <form action="bai_04.jsp" method="post">
            <table border="0">
                <tr>
                    <td>Cho biet so tien</td>
                    <td><input type="text" name="sotien" value="" required /></td>
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
            String sotien = request.getParameter("sotien");
            String loaiNgoaiTe = request.getParameter("loaingoaite");
            if (sotien != null) {
                double tien = Double.parseDouble(sotien);
                double tienVND = 0;
                switch (loaiNgoaiTe) {
                    case "USD":
                        tienVND = tien * 21380;
                        break;
                    case "GBP":
                        tienVND = tien * 32682.80;
                        break;
                    case "EUR":
                        tienVND = tien * 23555.67;
                        break;
                    case "JPY":
                        tienVND = tien * 178.61;
                        break;
                    case "AUD":
                        tienVND = tien * 16727.44;
                        break;
                }
                out.print("So tien doi duoc: " + sotien + "(" + loaiNgoaiTe + ") = " + tienVND + "VND");
            }
        %>

    </body>
</html>
