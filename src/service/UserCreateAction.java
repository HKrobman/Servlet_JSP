package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Action;
import dao.UserCreateDAO;

public class UserCreateAction extends Action {
	public String execute(
			HttpServletRequest request, HttpServletResponse response
		) throws Exception{
			String userName = request.getParameter("user_name");
			String password = request.getParameter("password");
			if( !(userName.equals("")) &&  !(password.equals("")) ) {
				UserCreateDAO userCreateDAO = new UserCreateDAO();
				userCreateDAO.createUser(userName, password);
				return "/WEB-INF/jsp/userCreateComplete.jsp";
			}else {
				return "/WEB-INF/jsp/userCreateError.jsp";
			}
		}
}