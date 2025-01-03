<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h1>${user != null ? "Edit User" : "Create New User"}</h1>
    <form action="users" method="post">
        <input type="hidden" name="action" value="${user != null ? 'update' : 'insert'}">
        <input type="hidden" name="id" value="${user != null ? user.id : ''}">
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" value="${user != null ? user.username : ''}" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" value="${user != null ? user.email : ''}" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" value="${user != null ? user.password : ''}" required>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
        <a href="users" class="btn btn-secondary">Cancel</a>
    </form>
</div>
</body>
</html>
    