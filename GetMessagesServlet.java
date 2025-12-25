package chatt;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

	@WebServlet("/GetMessagesServlet")
	public class GetMessagesServlet extends HttpServlet {
	    /**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        HttpSession session = request.getSession();
	        String groupName = (String) session.getAttribute("groupName");

	        response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();

	        Map<String, List<String>> messages = (Map<String, List<String>>) getServletContext().getAttribute("groupMessages");
	        if (groupName != null && messages != null && messages.containsKey(groupName)) {
	            for (String msg : messages.get(groupName)) {
	                String[] parts = msg.split(":", 2);
	                out.println("<div class='chat-message'><span>" + parts[0] + ":</span> " + parts[1] + "</div>");
	            }
	        }
	    }
	}


