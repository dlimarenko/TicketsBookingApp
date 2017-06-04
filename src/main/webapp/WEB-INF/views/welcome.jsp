<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
    <title>Welcome!</title>
    <style type="text/css">
        form {
            margin-top: 50px;
        }
        .greetings {
            margin-bottom: 50px;
            font-size: 48px;
            font-family: sans-serif;
        }
    </style>
</head>
<body>
<div style="float:right; margin-right: 25px;">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h4>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a>
        </h4>

    </c:if>

</div>
<form action="" class="col-xs-10 col-xs-offset-2 text-center">


    <div class="col-xs-9 text-center">
        <p class="greetings">Welcome!</p>
    </div>
    <div class="form-group col-xs-4">
        <input type="text" class="form-control" placeholder="From" required="required" pattern="[A-Za-zА-Яа-яЁё_\-]+{3,}">
    </div>
    <div class="form-group col-xs-1">
        <p>&rarr;</p>
    </div>
    <div class="form-group col-xs-4">
        <input type="text" class="form-control" placeholder="To" required="required" pattern="[A-Za-zА-Яа-яЁё_\-]+{3,}">
    </div>
    <div class="form-group col-xs-3 col-xs-offset-3">
        <input type="date" id="date" class="form-control" required="required">
    </div>
    <div class="form-group col-xs-9">
        <button type="submit" class="btn btn-primary">Find!</button>
    </div>
</form>
</body>
</html>


