<%@page import="DB.DB"%>
<%@page import="java.util.List"%>
<%@page import="DB.model.Item"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : addItem
    Created on : 27-Feb-2014, 09:16:31
    Author     : Rene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shoplist Add Item</title>
    </head>
    <body>
        <h1>Add Item to shoplist</h1>
        <%
            DB db = new DB("localhost", "shoplist", "3306", "user", "3216782109");
            db.setConnection();
            String rgpName = request.getParameter("itemName");
            String rgpAmount = request.getParameter("itemAmount");
            if (rgpName != "" && rgpAmount != "" && rgpName != null && rgpAmount != null)
            {
                db.itemName = rgpName;
                db.itemAmount = rgpAmount;
                
                db.addToSQL();
                
                response.sendRedirect("index.jsp");
            }
            
            db.disConnect();
        %>

        <form action="addItem.jsp" method="post">
            

            <table>
                <tr>
                    <td>Item Name</td>
                    <td>Item Amount</td>
                </tr>
                <tr>
                    <td><input type="text" name="itemName" value="" size="13" /></td>
                    <td><input type="text" name="itemAmount" value="" size="13" /></td>
                    <td><input type="submit" value="Add" name="addToSQL" /></td>
                </tr>                                    
            </table>
        </form>
    </body>
</html>
