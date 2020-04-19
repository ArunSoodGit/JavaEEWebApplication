package myApplication;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class LoginService {

    String sql = "select * from users where login=? and hasło=?";
    String url = "jdbc:mysql://localhost:3306/bazatss";
    String username = "root";
    String password = "";

    public boolean check(String login, String pass) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, username, password);
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, login);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

}
