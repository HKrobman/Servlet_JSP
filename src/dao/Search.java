package dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnector.DBConnector;


@WebServlet("/Search")
public class Search extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		//servletだから？

		//ここにheader
		try {
			DBConnector dbConnector = new DBConnector();
			Connection connection = dbConnector.getConnection();
			String keyword = request.getParameter("keyword");
			String sql = "SELECT * FROM book where title like ?";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, "%" + keyword + "%");
			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {
				out.println(resultSet.getString("title"));
			}
		}catch(Exception e){
			e.printStackTrace(out);
		}

	}

}
