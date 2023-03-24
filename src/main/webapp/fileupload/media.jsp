<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
    .container{
        display: flex;
        flex-wrap: wrap;
        padding: 15px;
        width: 90%;
        margin: 50px auto;
    }
    .card-img{
        display: flex;
        flex-direction: column;
        margin: 5px;
    }
    img{
        width: 100px;
        height: 100px;
        object-fit: cover;
    }
    a:hover img{
        opacity: .5;
    }
    form{
        margin-top: 5px;
        display: flex;
        justify-content: center;
    }

    </style>
</head>
<body>
<div class="container">
    <c:forEach var="file" items="${files}">
        <div class="card-img">
            <a href="uploads/${file}">
                <img src="uploads/${file}" alt="" width="100px">
            </a>
            <form action="media" method="post">
                <input type="hidden" name="image" value="${file}">
                <button>Remove</button>
            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>
