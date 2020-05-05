package myApplication.dao;

import myApplication.db.DbUtils;
import myApplication.models.User;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class DataAccess {

    public void addNew(User user) {
        try {
            Connection connection = DbUtils.getConnectionFromContext("mysql");
            String sql = "insert into users values(?,?,?,?,?)";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,user.getId());
            ps.setString(2,user.getLogin());
            ps.setString(3,user.getPassword());
            ps.setString(4,user.getName());
            ps.setString(5,user.getSurname());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
