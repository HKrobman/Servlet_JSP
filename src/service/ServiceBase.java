package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class ServiceBase {
	public abstract String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception;
}
