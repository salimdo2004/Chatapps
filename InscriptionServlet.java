package Client;

import java.io.IOException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/inscription")
public class InscriptionServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        String nom = request.getParameter("nom");
        String password = request.getParameter("password");

        // Utiliser TA classe Clients
        clients c = new clients(0, nom, password);

        if (Inscription.register(c)) {
            response.sendRedirect("login.jsp");
        } else {
            response.getWriter().print("Erreur inscription");
        }
    }
}
