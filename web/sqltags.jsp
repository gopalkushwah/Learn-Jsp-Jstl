
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JSTL SQL Tags</h1>
        <p>The JSTL sql tags provide SQL support. The url for the sql tags is http://java.sun.com/jsp/jstl/sql and prefix is sql.</p>
        <p>The SQL tag library allows the tag to interact with RDBMSs (Relational Databases) such as Microsoft SQL Server, mySQL, or Oracle. The syntax used for including JSTL SQL tags library in your JSP is:</p>
        <%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  --%>
        
        <!--to learn it first create a data base named ===> gymweb-->
        <!--then create a table name ==> client-->
        
        
        <sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/gymweb" user="root" password="1234" var="ds"></sql:setDataSource>
        <sql:query dataSource="${ds}" var="rs">SELECT * FROM client;</sql:query>
        <table>
            <thead>
                <tr><th>clientid</th><th>name</th><th>email</th><th>mobile</th></tr>
            </thead>
            <tbody>
            <c:forEach var="row" items="${rs.rows}">
                <tr><td>${row.clientid}</td><td>${row.name}</td><td>${row.email}</td><td>${row.mobile}</td></tr>
            </c:forEach>
            </tbody>
        </table>
        <sql:update dataSource="${ds}">UPDATE client SET email="bhola@gmail.com" WHERE clientid="4";</sql:update>
        
    </body>
</html>
