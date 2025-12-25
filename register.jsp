<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #2575fc, #6a11cb);
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

        .register-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 380px;
            text-align: center;
            animation: slideUp 1s ease;
        }

        /* Animation d’apparition */
        @keyframes slideUp {
            from {
                transform: translateY(40px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .register-container h2 {
            margin-bottom: 25px;
            color: #333;
        }

        .register-container input {
            width: 100%;
            padding: 14px;
            margin: 12px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 15px;
            transition: border 0.3s, box-shadow 0.3s;
        }

        .register-container input:focus {
            outline: none;
            border-color: #6a11cb;
            box-shadow: 0 0 8px rgba(106,17,203,0.4);
        }

        .register-container button {
            width: 100%;
            padding: 14px;
            margin-top: 15px;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .register-container button:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.25);
        }

        .register-container a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #6a11cb;
            font-weight: 500;
            transition: color 0.3s;
        }

        .register-container a:hover {
            color: #2575fc;
            text-decoration: underline;
        }

        /* 📱 Mobile */
        @media (max-width: 480px) {
            .register-container {
                padding: 25px;
                margin: 15px;
            }

            .register-container h2 {
                font-size: 22px;
            }
        }
    </style>
</head>
<body>

<div class="register-container">
    <h2>Créer un compte</h2>

    <form action="inscription" method="post">
        <input type="text" name="nom" placeholder="Nom" required>
        <input type="password" name="password" placeholder="Mot de passe" required>
        <button type="submit">S'inscrire</button>
    </form>

    <a href="login.jsp">Déjà un compte ? Connexion</a>
</div>

</body>
</html>
