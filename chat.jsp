<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page session="true" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Chat de Groupe</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .chat-container { width: 500px; margin: 20px auto; }
        .chat-box { border: 1px solid #ccc; height: 300px; overflow-y: auto; padding: 10px; background-color: #f9f9f9; }
        .chat-message { margin-bottom: 8px; }
        .chat-message span { font-weight: bold; }
        .chat-form { margin-top: 10px; display: flex; }
        .chat-form input[type="text"] { flex: 1; padding: 8px; font-size: 14px; }
        .chat-form button { padding: 8px 12px; font-size: 14px; margin-left: 5px; }
    </style>
</head>
<body>
<div class="chat-container">
    <h2>Chat du groupe : <%= session.getAttribute("groupName") %></h2>

    <!-- Zone d'affichage des messages -->
    <div class="chat-box" id="chatBox">
        <!-- Messages chargés ici via AJAX -->
    </div>

    <!-- Formulaire pour envoyer un message -->
    <form class="chat-form" onsubmit="return sendMessage();">
        <input type="text" id="msgInput" placeholder="Tapez votre message" required />
        <button type="submit">Envoyer</button>
    </form>
</div>

<script>
    // Fonction pour envoyer le message
    function sendMessage() {
        var msg = document.getElementById("msgInput").value;
        if(msg.trim() === "") return false;

        fetch("ChatServlet", {
            method: "POST",
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: "message=" + encodeURIComponent(msg)
        }).then(() => {
            document.getElementById("msgInput").value = ""; // Vide le champ après envoi
            loadMessages(); // Recharge la chat-box
        });
        return false; // Empêche le rechargement du formulaire
    }

    // Fonction pour charger tous les messages
    function loadMessages() {
        fetch("GetMessagesServlet")
            .then(response => response.text())
            .then(data => {
                document.getElementById("chatBox").innerHTML = data;
                document.getElementById("chatBox").scrollTop = document.getElementById("chatBox").scrollHeight; // Scroll bas
            });
    }

    
    setInterval(loadMessages, 2000);

    // Chargement initial
    loadMessages();
</script>
</body>
</html>
