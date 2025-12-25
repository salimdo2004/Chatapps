package chatt;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/ChatServlet")
public class ChatServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        String groupName = (String) session.getAttribute("groupName");
        String message = request.getParameter("message");

        if (username == null || groupName == null || message == null || message.trim().isEmpty()) {
            response.sendRedirect("chat.jsp");
            return;
        }

        // Récupérer les messages de l'application (ServletContext)
        ServletContext context = getServletContext();
        Map<String, List<String>> messages = (Map<String, List<String>>) context.getAttribute("groupMessages");

        if (messages == null) {
            messages = new HashMap<>();
            context.setAttribute("groupMessages", messages);
        }

        messages.putIfAbsent(groupName, new ArrayList<>());
        messages.get(groupName).add(username + ": " + message);

        response.sendRedirect("chat.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Rediriger vers chat.jsp
        response.sendRedirect("chat.jsp");
    }
}
