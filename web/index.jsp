<%@page import="java.util.List"%>
<%@page import="DB.model.Item"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 20-Feb-2014, 22:12:13
    Author     : Rene
--%>
<script lang="javascript">
    function rdcAdd()
    {
        window.location = 'http://localhost:8080/ShopList/addItem.jsp';
    }
</script>
<%@page contentType="text/html" import="DB.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>Shoplist</title>
    </head>
    <body>
        <form action="index.jsp">
            <h1>Shoplist</h1>
            <%
                DB db = new DB("localhost", "shoplist", "3306", "user", "3216782109");
                db.setConnection();
                List<Item> list = db.getAllItems();
            %>
            <table border="3">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Number Of Items</th>
                    <th>Bought</th>

                </tr>
                <% for (Item item : list) {%>

                <tr>
                    <td><%=item.getId()%></td>
                    <td><%=item.getItemName()%></td>
                    <td><%=item.getNumItem()%></td>
                    <td><%=item.getGotItem()%></td>
                    <td><input type="checkbox" name=<%=item.getId() %> value="0N" /></td>
                </tr>
                <%
                    }
                    db.disConnect();
                %>

            </table>            
                <input type="button" value="Add Item" name="addBtn" onclick="rdcAdd()" />
        </form>
    </body>
</html>
