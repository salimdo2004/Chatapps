package Client;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        String nom = request.getParameter("nom");
        String password = request.getParameter("password");

        if (Connexion.login(nom, password)) {
            response.sendRedirect("loginGroup.jsp"); 
        } else {
            
            System.out.println("❌ Nom ou mot de passe incorrect pour l'utilisateur : " + nom);
            response.getWriter().print("Nom ou mot de passe incorrect");
        }
    }
}

