<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <%@ include file="../common/cssfiles.jsp"%>
    <title><spring:message code="label.title"/></title>
    <style>
        .error{
            color:red
        }
    </style>
</head>
<body>
<h2>Create New Account</h2>
<form:form action="saveAccount" modelAttribute="account">
    <table>
        <tr>
            <td><spring:message code="label.accountNo" />: </td>
            <td>
                <form:input path="accountNo" size="30" />
                <form:errors path="accountNo" cssClass="error" />
            </td>
        </tr>
        <tr>
            <td><spring:message code="label.accountHolderName" />: </td>
            <td>
                <form:input path="accountHolderName" size="30" />
                <form:errors path="accountHolderName" cssClass="error" />
            </td>
        </tr>
        <tr>
            <td><spring:message code="label.balance" />: </td>
            <td>
                <form:input path="balance" size="30" />
                <form:errors path = "balance" cssClass="error"/>
            </td>
        </tr>

        <tr>
            <td><spring:message code="label.accountType" />: </td>
            <td><form:select path="accountType">
                <form:option value="">Select Account Type</form:option>
                <form:option value="SAVINGS">Savings </form:option>
                <form:option value="CURRENT">Current</form:option>
            </form:select>
                <form:errors path="accountType" cssClass="error" />
            </td>
        </tr>
        <tr>
            <td><spring:message code="label.dob" />: </td>
            <td><form:input path="dateOfBirth" size="30"  />
                <form:errors path="dateOfBirth" cssClass="error" />
            </td>
        </tr>
        <tr>
            <td><spring:message code="label.psCode" />: </td>
            <td><form:input path="psCode" size="30" />
                <form:errors path="psCode" cssClass="error" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Create Account" name="btnSubmit" /> </td>
        </tr>
    </table>
</form:form>
<%@ include file="../common/jsfiles.jsp"%>
</body>
</html>
