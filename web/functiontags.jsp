<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JSTL Function Tags</h1>
        <h3>The JSTL function provides a number of standard functions, most of these functions are common string manipulation functions. The syntax used for including JSTL function library in your JSP is:</h3>
        <%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   --%>
        <h3><pre>
        String toUpperCase(String input)
        String toLowerCase(String input)
        int indexOf(String input, String substring)
        boolean contains(String input, String substring)
        boolean containsIgnoreCase(String input, String substring)
        boolean startsWith(String input, String substring)
        boolean endsWith(String input, String substring)
        String substring(String input, int beginIndex, int endIndex)
        String substringAfter(String input, String substring)
        String substringBefore(String input, String substring)
        String escapeXml(String input)
        String trim(String input)
        String replace(String input, String substringBefore, String substringAfter) 
        String[] split(String input, String delimiters)
        int length(Object obj)
        String join(String[] array, String separator)
        </pre> </h3>
        <!--<img src="./Screenshot 2023-09-20 161929.png" alt="alt"/>>-->
        
        
        <c:set var="text" value="Gopal kushwah is a good boy"/>
        <c:set var="list" value="${['this','is','simple','array','text','to','join']}"/>
        <h1>length using fn:length() method ==> <c:out value="${fn:length(text)}"></c:out></h1>
        <h1>Uppercase using fn:toUpperCase() method ==> <c:out value="${fn:toUpperCase(text)}"></c:out></h1>
        <h1>LowerCase using fn:toLowerCase() method ==> <c:out value="${fn:toLowerCase(text)}"></c:out></h1>
        <h1>checking if contains using fn:contains() method ==> <c:out value="${fn:contains(text,'good')}"></c:out></h1>
        <h1>checking if containsIgnoreCase using fn:containsIgnoreCase() method ==> <c:out value="${fn:containsIgnoreCase(text,'GOOD')}"></c:out></h1>
        <h1>checking if index using fn:indexOf() method ==> <c:out value="${fn:indexOf(text,'good')}"></c:out></h1>
        
        
        <%--<h1>join using fn:join() method ==> <c:set var="afterJoinText" value="${fn:join(list,' ')}"/></h1>--%>
        <%--<h1>join index using fn:join() method ==> <c:out value="${afterJoinText}"></c:out></h1>--%>
    </body>
</html>
