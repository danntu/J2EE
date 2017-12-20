<%--
  Created by IntelliJ IDEA.
  User: mdaniyar
  Date: 12/20/17
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:set var = "theString" value="I am a test String 123"/>

    <c:if test="${fn:contains(theString, 'test')}">
        <p>Found test string</p>
    </c:if>

    <c:if test="${fn:contains(theString, 'TEST')}">
        <p>Found TEST string</p>
    </c:if>

    <c:if test="${fn:containsIgnoreCase(theString, 'TEST')}">
        <p>Found TEST string</p>
    </c:if>

   <c:if test="${fn:endsWith(theString, '123')}">
    <p>String ends with 123<p>
   </c:if>

       <c:if test="${fn:startsWith(theString, 'I am')}">
    <p>Start I am<p>
        </c:if>

       <c:set var = "string1" value = "This is first String."/>
       <c:set var = "string2" value = "This <abc>is second String.</abc>"/>
       <c:set var="split" value="${fn:split(string1, ' ')}"/>
       <c:set var="string3" value="${fn:join(split, ' : ')}"></c:set>
       <c:set var="string4" value="${fn:replace(string3, ':',' ' )}"/>
       <p>Replaced text ${string4}</p>
       <p>Final String : ${string3}</p>
    <p>Index 1 : ${fn:indexOf(string1,"first")}</p>
    <p>Index 1 : ${fn:indexOf(string2,"second")}</p>
    <p>Length split : ${fn:length(split)}</p>
    <p>With escapeXml() Function:</p>
    <p>string (1) : ${fn:escapeXml(string1)}</p>
    <p>string (2) : ${fn:escapeXml(string2)}</p>

    <p>Without escapeXml() Function:</p>
    <p>string (1) : ${string1}</p>
    <p>string (2) : ${string2}</p>

    <c:set var = "string1" value = " This is first String   "/>
    <p>String (1) Length : ${fn:length(string1)}</p>

    <c:set var = "string2" value = "${fn:trim(string1)}" />
    <p>String (2) Length : ${fn:length(string2)}</p>
    <p>Final string : ${string2}</p>

</body>
</html>
