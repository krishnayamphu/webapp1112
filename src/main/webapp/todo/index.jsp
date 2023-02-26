<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ky.models.Todo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Todo Items</title>
    <style>
        .done{
            text-decoration: line-through;
        }
        table{
            border-collapse: collapse;
        }
        th,td{
            border-bottom: 1px solid #ccc;
            padding: 5px 10px;
        }
    </style>
</head>
<body>
<form action="todo-add" method="post">
    <input type="text" name="item" placeholder="Add todo item" required>
    <button>Add</button>
</form>
<table>
    <%
        ArrayList<Todo> items= (ArrayList<Todo>) request.getAttribute("todolist");
        for (Todo todo:items) {
    %>

    <tr>
        <td>
            <input id="ckb<%= todo.getId()%>" type="checkbox" onclick="validate(<%= todo.getId()%>)" <%= todo.isStatus()==true?"checked":"" %>>
        </td>
        <td>
            <span id="lbl<%= todo.getId()%>" class="<%= todo.isStatus()==true?"done":"" %>">
            <%=todo.getItems()%>
            </span>
        </td>
        <td>
            <form action="todo" method="post">
                <input type="hidden" value="<%= todo.getId() %>" name="id">
                <button>Remove</button>
            </form>
        </td>
    </tr>
    <%
        }
    %>
 
    <script src="todo/jquery.min.js"></script>
    <script>
     function validate(id) {
        let name = 'ckb' + id;
        let lblname = 'lbl' + id;
        if (document.getElementById(name).checked) {
            console.log("checked");
            mydata = "id=" + id + "&status=true";
            postData(mydata);
            document.getElementById(lblname).style.textDecoration = 'line-through'
        } else {
            console.log("un checked");
            mydata = "id=" + id + "&status=false";
            postData(mydata);
            document.getElementById(lblname).style.textDecoration = 'none'
        }
    }

    function postData(mydata) {
        $.ajax({
            url: "todo-update",
            type: 'POST',
            data: mydata,
            success: function (data) {
                console.log(data);
            },
        })
    }
    </script>
</table>
</body>
</html>
