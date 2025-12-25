<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Connexion groupe</title>

<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        min-height: 100vh;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
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

    .login-box {
        background: #ffffff;
        padding: 35px;
        width: 100%;
        max-width: 380px;
        border-radius: 14px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.25);
        animation: slideIn 0.9s ease;
    }

    /* Animation d’entrée */
    @keyframes slideIn {
        from {
            opacity: 0;
            transform: translateY(40px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .login-box h2 {
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
        border-color: #667eea;
        box-shadow: 0 0 8px rgba(102,126,234,0.4);
    }

    button {
        width: 100%;
        padding: 13px;
        background: linear-gradient(135deg, #667eea, #764ba2);
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
        color: #667eea;
        font-weight: 600;
        transition: color 0.3s;
    }

    .link a:hover {
        color: #764ba2;
        text-decoration: underline;
    }

    /* 📱 Mobile */
    @media (max-width: 480px) {
        .login-box {
            padding: 25px;
            margin: 15px;
        }

        .login-box h2 {
            font-size: 22px;
        }
    }
</style>
</head>

<body>

<div class="login-box">
    <h2>Connexion au groupe</h2>

<form action="LoginGroupServlet" method="post">
    <input type="text" name="username" placeholder="Nom utilisateur" required><br><br>
    <input type="text" name="groupName" placeholder="Nom du groupe" required><br><br>
    <input type="password" name="password" placeholder="Mot de passe ou code du groupe" required><br><br>
    <button type="submit">Entrer dans le groupe</button>
</form>



    <div class="link">
        <a href="createGroup.jsp">Créer un groupe</a>
    </div>
</div>

</body>
</html>
