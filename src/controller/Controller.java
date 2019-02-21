package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ServiceBase;

@WebServlet(urlPatterns= {"*.service"})
public class Controller extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			String path = request.getServletPath();
			/* 例:
			 * Login.actionでアクセスした場合
			 * pathには /Login.action が格納される
			 * 以下のreplaceメソッドによってnameには service.LoginAction が格納される。
			 */
			String name = path.replace(".s", "S").replace("/", "service.");
			ServiceBase action = (ServiceBase)Class.forName(name).newInstance();
			String url = action.execute(request, response);
			request.getRequestDispatcher(url).forward(request, response);
		}catch (Exception e) {
			e.printStackTrace(out);
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}

