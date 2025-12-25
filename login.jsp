<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion</title>

    <style>
        * {
            box-sizing: border-box;
        }

        /* Style global */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            animation: bgMove 6s infinite alternate;
        }

        /* Animation du background */
        @keyframes bgMove {
            0% { background-position: left; }
            100% { background-position: right; }
        }

        /* Container */
        .login-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 14px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.25);
            width: 100%;
            max-width: 380px;
            text-align: center;
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

        /* Titre */
        .login-container h2 {
            margin-bottom: 25px;
            color: #333;
        }

        /* Champs */
        .login-container input {
            width: 100%;
            padding: 14px;
            margin: 12px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 15px;
            transition: border 0.3s, box-shadow 0.3s;
        }

        .login-container input:focus {
            outline: none;
            border-color: #2575fc;
            box-shadow: 0 0 8px rgba(37,117,252,0.4);
        }

        /* Bouton */
        .login-container button {
            width: 100%;
            padding: 14px;
            margin-top: 15px;
            background: linear-gradient(135deg, #2575fc, #6a11cb);
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .login-container button:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.25);
        }

        /* Lien */
        .login-container a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #2575fc;
            font-weight: 500;
            transition: color 0.3s;
        }

        .login-container a:hover {
            color: #6a11cb;
            text-decoration: underline;
        }

        /* 📱 Mobile */
        @media (max-width: 480px) {
            .login-container {
                padding: 25px;
                margin: 15px;
            }

            .login-container h2 {
                font-size: 22px;
            }
        }
    </style>
</head>

<body>

<div class="login-container">
    <h2>Connexion</h2>

    <form action="login" method="post">
        <input type="text" name="nom" placeholder="Nom" required>
        <input type="password" name="password" placeholder="Mot de passe" required>
        <button type="submit">Se connecter</button>
    </form>

    <a href="register.jsp">Créer un compte</a>
</div>

</body>
</html>
