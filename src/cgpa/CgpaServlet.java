package cgpa;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class CgpaServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		resp.getWriter().println("Hello, world");
		
		String sem=req.getParameter("sem");
		String stream= req.getParameter("stream");
		HttpSession obj=req.getSession(true);
		obj.setAttribute("session_sem", sem);

		if("p".equals(stream))
			resp.sendRedirect("cgpacalculator1.jsp");
		else
			resp.sendRedirect("cgpacalculator2.jsp");
		
	}
}
