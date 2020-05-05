package myApplication.db;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;

public class DbUtils {


    // String sql = "select * from users where login=? and hasło=?";


    public static PreparedStatement getPreparedStatment(String sql) throws ClassNotFoundException, SQLException {

        Connection connection = getConnectionFromContext("mysql");
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM user");


        return ps;

    }

    public static java.sql.Connection getConnectionFromContext(String serwerType) throws SQLException {

        try {

            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:/comp/env");

            DataSource ds_mssql = (DataSource) envContext.lookup("bazatss");
            Connection connection;

            if (serwerType.equals("mysql")) {
                connection = ds_mssql.getConnection();

                return connection;
            }
            return null;
        } catch (Exception ex) {
            throw new SQLException("Nie pobrano połączenia z kontekstu");
        }
    }
}





