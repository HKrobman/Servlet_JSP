package login_logout_lesson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.LoginUser;
import dao.LoginDAO;
import tools.Action;


public class LoginAction extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception{
		HttpSession session = request.getSession();

		String userName = request.getParameter("user_name");
		String password = request.getParameter("password");
		if(userName.equals("") || password.equals("")) {
			return "login_error.jsp";
		}
		LoginDAO loginDAO = new LoginDAO();
		LoginUser loginUser = loginDAO.search(userName, password);

		if(loginUser != null) {
			session.setAttribute("login_user", loginUser);
			return "login_logout.jsp";
		}

		return "login_error.jsp";
	}
}
