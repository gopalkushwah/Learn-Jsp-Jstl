<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Page is of Core Tags of JSTL</h1>
        <p>JSTL (JavaServer Pages Standard Tag Library) core tags are a set of custom tags that provide essential functionality for controlling the flow of your JSP (JavaServer Pages) and working with data. These tags simplify common tasks and make your JSP code more readable and maintainable. Let's explore the core JSTL tags step by step:</p>
        <h2>Step 1: Include JSTL Core Tags in Your JSP Page</h2>
        <%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
        
        <!--out tag is used to print some values on the client side-->
        <hr>
        <h2>Out</h2>
        <c:out value="Gopal"></c:out>
        
        
        <hr>
<!--        set is used to set any type of data in any variable
        set has 4 scope
        1. application : variable can we accessible within the whole application
        2. session : this value will be set to the HttpSession object
        3. page : variable can be accessible within the same page 
        4. request : variable can be accessible by the http request object
-->
        <h2>Set</h2>
        
        <c:set var="variableName" value="12345" scope="application"/>
        <h5>Value of variableName : <c:out value="${variableName}"></c:out></h5>
        <hr>
        <!----------------------------------------------------------------------------------------->
        <!--remove-->
        <!--it is used to remove any variable from the same context or same page--> 
        <!--after removing the variable we can't access it anymore-->
        <h2>Remove</h2>
        
        <c:remove var="variableName"></c:remove>
        <h5>Value of variableName not accessible after remove: <c:out value="${variableName}">Default value</c:out></h5>
        
        <hr>
        <!----------------------------------------------------------------------------------------->
        <!--if-->
        <!--it is same as java if conditional statement--> 
        <!--it check the given condition , if true then execute the inside content-->
        
        <h2>if</h2>
        <c:set var="i" value="10"></c:set>
        <c:set var="j" value="20"></c:set>
        <c:if test="${i>j}">
            <p>I > J</p>
        </c:if>
        <c:if test="${i<j}">
            <p>I < J</p>
        </c:if>
        <hr>
        <!----------------------------------------------------------------------------------------->
        <!--choose , when and otherwise-->
        <!--this three tags , works together-->
        <!--this is same as java switch statement-->
        <!--choose ===> switch()-->
        <!--when  ====> case-->
        <!--otherwise ==> defualt--> 
        <h2>Choose</h2>
        <h2>When</h2>
        <h2>Otherwise</h2>
        <c:set var="a" value="10"></c:set>
        <c:choose>
            <c:when test="${a>10}">
                <p>a is > 10</p>
            </c:when>
            <c:when test="${a<10}">
                <p>a is < 10</p>
            </c:when>
            <c:otherwise>
                <p>a = 10</p>
                
            </c:otherwise>
        </c:choose>
        <!----------------------------------------------------------------------------------------->
        <hr>
        <!--forEach-->
        <!--this tags is used to iterate the array or any collection-->
        <!--we can use it like normal loops-->
        <h2>Using c:forEach</h2>
        <%-- <c:forEach var="item" begin="1" end="10">
            <h1><c:out value="${item}"></c:out></h1>
        </c:forEach> --%>
        <c:set var="fruits" value="${['mango','banana','papaya']}"></c:set>
        <%--<c:set var="fruits" value="${['Apple', 'Banana', 'Orange']}"/>--%>
    
        <c:forEach var="item" items="${fruits}">
            <h1><c:out value="${item}"></c:out></h1>
        </c:forEach>
        <!----------------------------------------------------------------------------------------->
        <hr>
        <h2>Redirect</h2>
            <!--redirect--> 
            <!--it is used to redirect the page to another page-->
            
            <%--<c:redirect url="https://bard.google.com/chat/7d0c7cb79bd1ea5e"></c:redirect>--%>
       <!----------------------------------------------------------------------------------------->
        <hr>
        <!--url and param and redirect-->
        <!--this url and params are used to create a query string--> 
        <c:url var="google" value="https://www.google.com/search">
            <c:param name="q" value="what is google"></c:param>
        </c:url>
        <c:out value="${google}"/>
        <%--<c:redirect url="${google}"/>--%>
        
    </body>
</html>