<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 6/28/2018
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>
    <form:form action="processForm" modelAttribute="student">
        First Name : <form:input path="firstName"/>
        <br><br>
        Last Name : <form:input path="lastName"/>
        <br><br>
        Country:
        <form:select path="country">
            <form:options items="${student.countryOptions}"/>
        </form:select>
        <br><br>
        Java   <form:radiobutton path="favoriteLanguage" value="Java"/>
        C#   <form:radiobutton path="favoriteLanguage" value="C#"/>
        PHP  <form:radiobutton path="favoriteLanguage" value="PHP"/>
        Ruby  <form:radiobutton path="favoriteLanguage" value="Ruby"/>
        <br><br>
        Max OS<form:checkbox path="operationSystems" value="MacOS"/>
        WIndows<form:checkbox path="operationSystems" value="Windows"/>
        Linux<form:checkbox path="operationSystems" value="Linux"/>
        <br><br>
        <input type="submit" value="Submit">

    </form:form>

</body>
</html>
