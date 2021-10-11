<%-- 
    Document   : updateSteam
    Created on : Aug 30, 2021, 9:35:11 PM
    Author     : ASUS ROG GAMING
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "mol.Steam" %>

<!-- get session object movie -->

<% Steam steam = (Steam) session.getAttribute("steam");%>

<h2>แก้ไขข้อมูลเกม</h2>
<form action="addSteamServlet">
    <label for="fname">ชื่อเกม:</label><br>
    <input type="text" id="namegame" name="Gamename" value="<%= steam.getGamename()%>"><br>
    <input type="checkbox" name= "social1" value="Online"> Online<br/>
    <input type="checkbox" name= "social2" value="Offline"> Offline<br/>
    <select name="GameType">
        <option value="FPS">FPS</option>
        <option value="RPG">RPG</option>
        <option value="open world">open world</option>
    </select>
    <label for="lname">คำอธิบาย:</label><br>
    <input type="text" id="คำอธิบาย" name="Synopsis" value="<%= steam.getSynopsis()%>"><br>
    <label for="lname">จำนวน:</label><br>
    <input type="text" id="จำนวน" name="cc"><br><br>
    <input type="submit" value="แก้ไขข้อมูลเกม">

</form>
