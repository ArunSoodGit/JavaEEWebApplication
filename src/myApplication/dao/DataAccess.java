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

            ps.setString(2,user.getName());
            ps.setString(3,user.getSurname());
            ps.setString(4,user.getMark());
            ps.setString(5,user.getModel());
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
            String sql = "SELECT * FROM cars";
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
    public static int delete(int id) {
        int status=0;
        try {
            Connection connection = DbUtils.getConnectionFromContext("mysql");
            String sql = "delete from cars where id=?";

            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1,id);

           status= ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

}
