<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 12/12/17
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Number Format</h3>

<c:set var="number" value="120000.2309"/>
<p>Number 1 = <f:formatNumber value="${number}" type="currency"/></p>
<p>Number 2 = <f:formatNumber value="${number}" type="number" maxIntegerDigits="3"/></p>
<p>Number 3 = <f:formatNumber value="${number}" type="number" maxFractionDigits="3"/></p>
<p>Number 4 = <f:formatNumber value="${number}" type="number" groupingUsed="true"/></p>
<p>Number 5 = <f:formatNumber value="${number}" type="percent" maxIntegerDigits="3"/></p>
<p>Number 6 = <f:formatNumber value="${number}" type="percent" minFractionDigits="10"/></p>
<p>Number 7 = <f:formatNumber value="${number}" type="number" pattern="###.####E0"/></p>
<p>Currency in USA
<f:setLocale value="en_US"/>
    <f:formatNumber value="${number}" type="currency"/>
</p>

<f:parseNumber var = "i" type="number" value="${number}"/>
<p>Parsed Number 1 = <c:out value="${i}"/></p>
<f:parseNumber var="i" type="number" integerOnly="true" value="${number}"/>
<p>Parsed Number 2 = <c:out value="${i}"/></p>

<h3>formatDate</h3>
<c:set var="sysd" value="<%= new java.util.Date()%>"/>
<c:out value="${sysd}"/>
<p>Date1 <f:formatDate type="time" value="${sysd}"/></p>
<p>Date2 <f:formatDate type="date" value="${sysd}"/></p>
<p>Date3 <f:formatDate type="both" value="${sysd}"/></p>
<p>Date4 <f:formatDate type="both" dateStyle="short" timeStyle="short" value="${sysd}"/></p>
<p>Date5 <f:formatDate type="date" dateStyle="medium" timeStyle="medium" value="${sysd}"/></p>
<p>Date6 <f:formatDate type="date" dateStyle="long" timeStyle="long" value="${sysd}"/></p>
<p>Date7 <f:formatDate type="date" pattern="dd.MM.yyyy" value="${sysd}"/></p>

<h3>parseDate</h3>
<c:set value="14-12-2017" var = "now"/>
<p><f:parseDate value="${now}" var="parsedDate" pattern="dd-MM-yyyy"/>
Parsed date <c:out value="${parsedDate}"/>
</p>


<h3>Bundle tag with prefix</h3>

<f:bundle basename="com.mantiso.Example" prefix="count.">
    <f:message key="one"/>
    <f:message key="two"/>
    <f:message key="three"/>
</f:bundle>
<h3>Bundle tag without prefix</h3>

<f:bundle basename="com.mantiso.Example">
    <f:message key="count.one"/>
    <f:message key="count.two"/>
    <f:message key="count.three"/>
</f:bundle>
<br>

</body>
</html>
