<%-- 
    Document   : SaveToFirebase
    Created on : Aug 30, 2021, 10:01:01 PM
    Author     : ASUS ROG GAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "mol.Steam" %>

<% Steam steam = (Steam) session.getAttribute("steam");%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js"></script>
        <script>
            // Import the functions you need from the SDKs you need
            import { initializeApp } from "firebase/app";
            import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
            const firebaseConfig = {
                apiKey: "AIzaSyBiuP3Cx_rh7IX-ouxrjeAKaiUZ_HrRL_E",
                authDomain: "steam-f9055.firebaseapp.com",
                projectId: "steam-f9055",
                storageBucket: "steam-f9055.appspot.com",
                messagingSenderId: "515226364957",
                appId: "1:515226364957:web:10c4cf927a0fee6ff7aaf4",
                measurementId: "G-R8KBF0RSHY"
            };

// Initialize Firebase
            const app = initializeApp(firebaseConfig);
            const analytics = getAnalytics(app);
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body><body>
        <h2>Test Firebase 'MySteam' connection</h2>

        <p>
            <input type="button" value="Save" onclick="save_MySteam();" />
        </p>

        <script>
            var databaseRef = firebase.database().ref('Steam/');

            function save_mysteam() {
                var uid = firebase.database().ref().child('Steam').push().key;

                var data = {
                    MySteam_id: uid,
                    MySteam_namegame: 'namegame',
                    MySteam_lname: 'lname',
                    MySteam_lname: 'lname',
                   
                }

                var updates = {};
                updates['/Steam/' + uid] = data;
                firebase.database().ref().update(updates);

                alert('created successfully!');
                reload_page();
            }

            function reload_page() {
                window.location.reload();
            }

        </script>
    </body>
</html>
