package myApplication.db;

import myApplication.models.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDbUtil {
    public static List<User> getUserList() throws ClassNotFoundException, SQLException {
        ArrayList<User> users = new ArrayList<>();

        String sql = "select * from users ";
        String url = "jdbc:mysql://localhost:3306/bazatss";
        String username = "root";
        String password = "";


        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(url, username, password);
    Statement stmt = connection.createStatement();

    ResultSet resultSet = stmt.executeQuery(sql);
    while(resultSet.next()){
       int id = resultSet.getInt(1);
       String login =  resultSet.getString(2);
       String pass = resultSet.getString(3);
       String name = resultSet.getString(4);
       User user = new User(id,login,pass,name);
       users.add(user);
    }
        return users;
    }
}
