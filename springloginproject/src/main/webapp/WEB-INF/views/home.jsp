<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <h1>Welcome to Home Page</h1>
    <p>Logged in as ${user.username}💜</p>
    <hr>
    <h1>User Details</h1>
    
    <p>UserID: ${user.userID}</p>
    <p>UserName: ${user.username}</p>
    <p>Password: ${user.password}</p>
    <p>Location: ${user.location}</p>
</body>
</html>
