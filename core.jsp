<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 12/11/17
  Time: 12:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <core:out value="Danik"/>
 <core:set var="sal" scope="session" value="${3000*2}"/>
 <p>Before Remove Value: <core:out value = "${sal}"/></p>
 <core:remove var = "sal"/>
 <p>After Remove Value: <core:out value = "${sal}"/></p>

 <core:catch var="catchException">
     <% int x = 5 / 0; %>
 </core:catch>

 <core:if test="${catchException  != null}">
     <p> The exception is :  ${catchException} <br>
         There is exception: ${catchException.message}
     </p>
 </core:if>
 <core:set var="sal" scope="session" value="${3000*2}"/>
<core:if test="${sal>2000}">
    <p>My salary is very small : <core:out value="${sal}"/></p>
</core:if>

<core:choose>
    <core:when test="${sal>5000}">
        Salary is very good
    </core:when>
    <core:otherwise>
        You salary is bad
    </core:otherwise>
</core:choose>
</body>
</html>
