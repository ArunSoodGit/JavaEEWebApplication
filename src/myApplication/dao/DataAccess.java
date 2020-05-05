package myApplication.dao;

import myApplication.db.DbUtils;
import myApplication.models.User;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class DataAccess {

    public void addNew(User user) {

    }

    public static List<User> getAll(){
        List<User> userList = new LinkedList<>();
        try {
            Connection connection = DbUtils.getConnectionFromContext("mysql");
            Statement statement = connection.createStatement();
            String sql = "SELECT * FROM users";
            ResultSet rs = statement.executeQuery(sql);
            while(rs.next()){
                User user= new User(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5));
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

}
