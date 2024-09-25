<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h1>Registration Form</h1>
    <form action="register" method="post">
        <label for="UserID">UserID:</label>
        <input type="text" id="name" name="userID" required/>
        <br/>
        <label for="username">UserName:</label>
        <input type="text" id="username" name="username" required/>
        <br/>
        <label for="password">Password:</label>
        <input type="text" id="password" name="password" required/>
        <br/>
        <label for="location">Location:</label>
        <input type="text" id="location" name="location" required/>
        <br/>
        <input type="submit" value="Register"/>
    </form>
</body>
</html>
