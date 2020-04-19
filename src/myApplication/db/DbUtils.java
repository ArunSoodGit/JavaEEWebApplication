package myApplication.db;

import java.sql.*;

public class DbUtils {


   // String sql = "select * from users where login=? and hasło=?";


    public static PreparedStatement getPreparedStatment(String sql) throws ClassNotFoundException , SQLException {

        String url = "jdbc:mysql://localhost:3306/bazatss";
        String username = "root";
        String password = "";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, username, password);
            PreparedStatement ps = connection.prepareStatement(sql);




        return ps;
    }

}





