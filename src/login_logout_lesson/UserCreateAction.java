package login_logout_lesson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserCreateDAO;
import tools.Action;

public class UserCreateAction extends Action {
	public String execute(
			HttpServletRequest request, HttpServletResponse response
		) throws Exception{
			String userName = request.getParameter("user_name");
			String password = request.getParameter("password");
			if( !(userName.equals("")) &&  !(password.equals("")) ) {
				UserCreateDAO userCreateDAO = new UserCreateDAO();
				userCreateDAO.createUser(userName, password);
				return "userCreateComplete.jsp";
			}else {
				return "userCreateError.jsp";
			}
		}
}