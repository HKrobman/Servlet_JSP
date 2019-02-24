package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.LoginUser;
import dbconnector.DBConnector;


public class LoginDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private LoginUser loginUser = new LoginUser();
	private PreparedStatement preparedStatement;

	public LoginUser search(String userName, String password) throws Exception{

		String sql = "SELECT * FROM login_user where user_name = ? AND password = ?";

		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userName);
			preparedStatement.setString(2, password);
			ResultSet resultSet = preparedStatement.executeQuery();

			if(resultSet.next()) {
				loginUser.setId(resultSet.getInt("id"));
				loginUser.setUserName(resultSet.getString("user_name"));
				loginUser.setPassword(resultSet.getString("password"));
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			connection.close();
		}

		return loginUser;
	}
}
