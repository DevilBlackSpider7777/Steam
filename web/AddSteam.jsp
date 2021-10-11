<%-- 
    Document   : AddSteam
    Created on : Aug 30, 2021, 8:51:15 PM
    Author     : ASUS ROG GAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2>หาเพื่อนเล่นเกมกัน</h2>
<form action="addSteamServlet">
    <label for="namegame">ชื่อเกม:</label><br>
    <input type="text" id="name" name="Gamename"><br>
    <input type="checkbox" name= "social1" value="Online"> Online<br/>
    <input type="checkbox" name= "social2" value="Offline"> Offline<br/>
    <select name="GameType">
        <option value="FPS">FPS</option>
        <option value="RPG">RPG</option>
        <option value="open world">open world</option>
    </select><br>
    <label for="lname">คำอธิบาย:</label><br>
    <input type="text" id="คำอธิบาย" name="Synopsis"><br>
    <label for="lname">จำนวน:</label><br>
    <input type="text" id="จำนวน" name="cc"><br><br>
    <input type="submit" value="เพิ่ม">
</form>