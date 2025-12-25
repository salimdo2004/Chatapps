<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="chat"></div>

<input type="text" id="msg">
<button onclick="sendMsg()">Envoyer</button>

<script>
let groupName = "javaGroup";
let username = "salim";

let socket = new WebSocket(
    "ws://localhost:8080/ChatApp/chat/" + groupName + "/" + username
);

socket.onmessage = function(event) {
    let data = JSON.parse(event.data);
    document.getElementById("chat").innerHTML +=
        "<p><b>" + data.user + ":</b> " + data.text + "</p>";
};

function sendMsg() {
    let msg = document.getElementById("msg").value;
    let json = {
        user: username,
        text: msg
    };
    socket.send(JSON.stringify(json));
}
</script>

</body>
</html>