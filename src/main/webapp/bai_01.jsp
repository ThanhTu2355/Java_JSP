<%-- 
    Document   : bai_01
    Created on : Oct 16, 2024, 8:26:57 AM
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
        <h1>Chuong trinh dau tien</h1>
        <form action="bai_01.jsp" method="POST">
            Cho biet ho ten: <input type="text" name="hoten" value="" required />
            <input type="submit" value="Thi hanh" />
        </form>
        <%
            String hoten = request.getParameter("hoten");
            if (hoten != null) {
                out.println("Chao ban: <b>" + hoten + "</b>");
            }
        %>
    </body>
</html>
