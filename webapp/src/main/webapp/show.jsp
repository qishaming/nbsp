
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  this is show page;
    id的值是：${id}
<c:forEach items="${list}" var="u">
    ${u.username}<br>
</c:forEach>
</body>
</html>
