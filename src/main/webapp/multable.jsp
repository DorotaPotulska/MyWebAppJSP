<%--
  Created by IntelliJ IDEA.
  User: cdc4
  Date: 03.08.2020
  Time: 23:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Multiplication table</title>
</head>
<body>
<form action="multable.jsp" method="get">
    RozmianX:<input type="number" name="sizeX" min="1"><br/>
    RozmianY:<input type="number" name="sizeY" min="1"><br/>
    <input type="submit">
</form>
<hr>

<table>
    <%
        String sizeX = request.getParameter("sizeX");
        String sizeY = request.getParameter("sizeY");
        int sizeXint;
        int sizeYint;

        try {
            sizeXint = Integer.parseInt(sizeX);
        } catch (NumberFormatException nfe) {
            sizeXint = 10;
        }


        try {
            sizeYint = Integer.parseInt(sizeY);
        } catch (NumberFormatException nfe) {
            sizeYint = 10;
        }

        for (int i = 1; i <= sizeXint; i++) {
            out.print("<tr>");
            for (int j = 1; j <= sizeYint; j++){
                out.print("<td>");
                out.print(i*j);
                out.print("</td>");
            }
            out.print("</tr>");
        }
    %>
</table>
</body>
</html>
