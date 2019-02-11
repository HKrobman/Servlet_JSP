package login_logout_lesson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tools.Action;

public class LogoutAction extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception{
		HttpSession session = request.getSession();

		if(session.getAttribute("login_user") != null) {
			session.removeAttribute("login_user");
			return "logout.jsp";
		}

		return "logout_error.jsp";
	}
 
  }
