<%-- 
    Document   : productListView
    Created on : Nov 13, 2017, 5:00:00 PM
    Author     : hisham
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Product List</title>
 </head>
 <body>
 
   
 
    <h3>Product List</h3>
 
    <p style="color: red;">${errorString}</p>
 
    <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>Staffid</th>
          <th>Name</th>
          <th>Email</th>
          <th>Contact No</th>
          <th>Edit</th>
          <th>Delete</th>
       </tr>
       <c:forEach items="${adminList}" var="admin" >
          <tr>
             <td>${admin.staffid}</td>
             <td>${admin.name}</td>
             <td>${admin.email}</td>
             <td>${admin.contactNo}</td>
             <td>
                <a href="editProduct?code=${product.code}">Edit</a>
             </td>
             <td>
                <a href="deleteProduct?code=${product.code}">Delete</a>
             </td>
          </tr>
       </c:forEach>
    </table>
 
    <a href="createProduct" >Create Product</a>
 
 
 </body>
</html>
