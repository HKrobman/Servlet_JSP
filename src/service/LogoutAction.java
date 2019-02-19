package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Action;

public class LogoutAction extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception{
		HttpSession session = request.getSession();

		if(session.getAttribute("login_user") != null) {
			session.removeAttribute("login_user");
			return "/WEB-INF/jsp/logout.jsp";
		}

		return "/WEB-INF/jsp/logout_error.jsp";
	}

  }
