<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 12/26/17
  Time: 10:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Role: <%=request.getSession().getAttribute("role")%> <br><hr>
Counter <%=request.getSession().getAttribute("counter")%><br>
MaxInactiveIntervale: <%=request.getSession().getMaxInactiveInterval()%> <br>
ID Session: <%=request.getSession().getId()%><br>
Lifecycle : <%=request.getAttribute("lifecycle")%><br>
</body>
</html>
