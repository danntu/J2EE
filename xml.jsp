<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>

<html>
<head>
    <title>JSTL x:out Tags</title>
</head>

<body>
    <h3>Cities info:</h3>
    <c:set var="xmltext">
        <cities>
            <city>
                <name>Almaty</name>
                <people>1000000</people>
            </city>

            <city>
                <name>Astana</name>
                <people>600000</people>
            </city>
        </cities>
    </c:set>

    <%--<x:parse xml="${xmltext}" var="out"/>--%>
    <%--<b>The city name is : </b> <x:out select="$out/cities/city[1]/name"/>--%>
    <%--<br>--%>
    <%--<b>The people Astana count: </b> <x:out select="$out/cities/city[2]/people"/>--%>
    <%--<br/>--%>
    <%--&lt;%&ndash;<x:set var="fragment" select="$out//city/" />&ndash;%&gt;--%>
    <%--&lt;%&ndash;<b>The people Almaty count: </b> <c:out value="${fragment}"/>&ndash;%&gt;--%>

    <%--<x:if select="$out//city">--%>
        <%--Document has at least <city> element--%>
    <%--</x:if>--%>

    <%--<x:if select="$out/cities/city[1]/people>600000">--%>
        <%--City Almaty more 600 000--%>
        <%--</x:if>--%>
        <%--<br>--%>
        <%--<x:forEach select="$out/cities/city/name" var="item">--%>
            <%--City name <x:out select="$item"/>--%>
        <%--</x:forEach>--%>

        <%--<br>--%>
        <%--<x:choose>--%>
            <%--<x:when select="$out//city/name='Almaty1'">--%>
                <%--You choose Almaty--%>
            <%--</x:when>--%>
            <%--<x:when select="$out//city/name='Astana1'">--%>
                <%--You choose Astana--%>
            <%--</x:when>--%>
            <%--<x:otherwise>--%>
                <%--You choose wrong--%>
            <%--</x:otherwise>--%>
        <%--</x:choose>--%>

        <c:import url="style.xsl" var="xslt"/>
        <x:transform xml="${xmltext}" xslt="${xslt}">
            <x:param name="bgColor" value="blue"/>
        </x:transform>
</body>
</html>