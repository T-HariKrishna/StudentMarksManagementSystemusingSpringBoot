<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Failure</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #fdecea;
        text-align: center;
        padding-top: 80px;
      }
      .message-box {
        background-color: #f8d7da;
        color: #721c24;
        border: 1px solid #f5c6cb;
        display: inline-block;
        padding: 30px;
        border-radius: 10px;
      }
      a {
        display: block;
        margin-top: 20px;
        text-decoration: none;
        color: #dc3545;
      }
    </style>
  </head>
  <body>
    <div class="message-box">
      <h2>❌ Failed to Add Student</h2>
      <p>There was a problem while submitting the form. Please try again.</p>
      <a href="AddStudent">Go Back</a>
    </div>
  </body>
</html>
