<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 7/2/2018
  Time: 10:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Customer Registration Form</title>
    <style>
        .error{color:red}
    </style>
</head>
<body>

<form:form action="processForm" modelAttribute="customer">
    First Name: <form:input path="firstName"/>
    <br><br>
    Last Name: <form:input path="lastName"/>
    <form:errors path="lastName" cssClass="error"/>
    <br><br>
    <input type="submit" value="Submit"/>

</form:form>

</body>
</html>
