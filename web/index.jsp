<%@page import="java.util.List"%>
<%@page import="DB.model.Item"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 20-Feb-2014, 22:12:13
    Author     : Rene
--%>

<%@page contentType="text/html" import="DB.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>Shoplist</title>
    </head>
    <body>
        <h1>Shoplist</h1>
        <%
            DB db = new DB("localhost", "shoplist", "3306", "user", "3216782109");
            db.setConnection();
            List<Item> list = db.getAllItems();
        %>
        <table border="2">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Number Of Items</th>
                <th>Bought</th>
               
            </tr>
            <% for (Item item : list) { %>

            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getItemName()%></td>
                <td><%=item.getNumItem()%></td>
                <td><%=item.getGotItem()%></td>
            </tr>
            <%
                }
                db.disConnect();
            %>

        </table>
    </body>
</html>
