<%-- 
    Document   : viewCommentSteam
    Created on : Aug 31, 2021, 9:04:30 AM
    Author     : ASUS ROG GAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CommentSteam</title>
    </head>
    <body>
        <form action="CommentServlet">
        <label for="name"> ชื่อเรื่อง:</label><br>
        <input type="text" id="Name" name="name"><br>
        <label for="comment">ความคิดเห็น:</label><br>
        <input type="text" id="comment" name="comment"><br>
        <label for="commentdata">วันที่และเวลา :</label><br>
        <input type="datetime-local" name="datetime">
         <input type="submit" value="เพิ่ม">
        </form>
    </body>
</html>

