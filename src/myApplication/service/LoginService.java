package myApplication.service;

import myApplication.db.CryptoUtil;
import myApplication.db.DbUtils;

import java.sql.*;


public class LoginService {

    String sql = "select * from users where login=? and hasło=?";


    public boolean check(String login, String pass) {
        try {

            Connection connection = DbUtils.getConnectionFromContext("mysql");
            PreparedStatement st = connection.prepareStatement(sql);

            pass = CryptoUtil.encode(pass);
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
