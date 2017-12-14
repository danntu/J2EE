<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<html>
<head>
    <title>JSTL sql:query Tag</title>
</head>

<body>
       <sql:setDataSource var = "snapshot" driver = "org.mariadb.jdbc.Driver"
                          url = "jdbc:mariadb://localhost/test"
                          user = "root"  password = "root"/>
       <sql:update dataSource="${snapshot}" var="insert">
           INSERT INTO Employees VALUES (104, 2, 'Nuha', 'Ali');
       </sql:update>
       <sql:update dataSource="${snapshot}" var="delete">
           DELETE FROM Employees WHERE ID=103
       </sql:update>
       <sql:update dataSource="${snapshot}" var="update">
           UPDATE Employees SET ID=103  WHERE ID=100
       </sql:update>
       <c:set var="last" value="Ali"/>
       <sql:query dataSource = "${snapshot}" var = "result">
        SELECT * from Employees WHERE last = ? <sql:param value="${last}"/>
       </sql:query>

<table border = "1" width = "100%">
    <tr>
        <th>Emp ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>

    <c:forEach var = "row" items = "${result.rows}">
        <tr>
            <td> <c:out value = "${row.id}"/></td>
            <td> <c:out value = "${row.first}"/></td>
            <td> <c:out value = "${row.last}"/></td>
            <td> <c:out value = "${row.age}"/></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>