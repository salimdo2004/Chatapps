<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Créer un groupe</title>

<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        min-height: 100vh;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #43cea2, #185a9d);
        display: flex;
        justify-content: center;
        align-items: center;
        animation: bgAnim 6s infinite alternate;
    }

    /* Animation background */
    @keyframes bgAnim {
        0% { background-position: left; }
        100% { background-position: right; }
    }

    .box {
        background: #ffffff;
        padding: 35px;
        width: 100%;
        max-width: 380px;
        border-radius: 14px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.25);
        animation: slideUp 0.9s ease;
    }

    /* Animation d’entrée */
    @keyframes slideUp {
        from {
            opacity: 0;
            transform: translateY(40px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: 600;
        color: #555;
    }

    input {
        width: 100%;
        padding: 12px;
        margin-bottom: 18px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        transition: border 0.3s, box-shadow 0.3s;
    }

    input:focus {
        outline: none;
        border-color: #43cea2;
        box-shadow: 0 0 8px rgba(67,206,162,0.4);
    }

    button {
        width: 100%;
        padding: 13px;
        background: linear-gradient(135deg, #43cea2, #185a9d);
        border: none;
        border-radius: 8px;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: transform 0.3s, box-shadow 0.3s;
    }

    button:hover {
        transform: translateY(-2px);
        box-shadow: 0 10px 25px rgba(0,0,0,0.25);
    }

    .link {
        text-align: center;
        margin-top: 18px;
    }

    .link a {
        text-decoration: none;
        color: #185a9d;
        font-weight: 600;
        transition: color 0.3s;
    }

    .link a:hover {
        text-decoration: underline;
        color: #43cea2;
    }

    /* 📱 Mobile */
    @media (max-width: 480px) {
        .box {
            padding: 25px;
            margin: 15px;
        }

        h2 {
            font-size: 22px;
        }
    }
</style>
</head>

<body>

<div class="box">
    <h2>Créer un groupe</h2>

    <form action="CreateGroupServlet" method="post" onsubmit="return showCode();">
        <label>Nom du groupe</label>
        <input type="text" name="groupName" required>

        <label>Mot de passe</label>
        <input type="password" name="password" required>

        <!-- Champ caché pour le code -->
        <input type="hidden" id="generatedCode" name="groupCode">

        <button type="submit">Créer le groupe</button>
    </form>

    <div class="link">
        <a href="loginGroup.jsp">Se connecter à un groupe</a>
    </div>
</div>



</body>
</html>
