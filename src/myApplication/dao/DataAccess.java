package myApplication.dao;

import myApplication.db.DbUtils;
import myApplication.models.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class DataAccess {

    public void addNew(User user) {
        try {
            Connection connection = DbUtils.getConnectionFromContext("mysql");
            String sql = "insert into cars values(?,?,?,?,?)";

            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1,user.getId());

            ps.setString(2,user.getName());
            ps.setString(3,user.getSurname());
            ps.setString(4,user.getMark());
            ps.setString(5,user.getModel());
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public static List<User> getAll(){
        List<User> userList = new ArrayList<>();
        try {
            Connection connection = DbUtils.getConnectionFromContext("mysql");
            Statement statement = connection.createStatement();
            String sql = "SELECT * FROM cars";
            ResultSet rs = statement.executeQuery(sql);
            while(rs.next()){
                User user= new User(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5));
                userList.add(user);
            }
            connection.close();
        } catch (SQLException e) {

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
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
    public boolean updateUser(User user) throws SQLException {
       boolean rowUpdate = true;
        try {
            Connection connection = DbUtils.getConnectionFromContext("mysql");
            String sql = "UPDATE cars SET imię=?, nazwisko=?, marka =?, model=? where id=?";

            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1,user.getName());
            ps.setString(2,user.getSurname());
            ps.setString(3,user.getMark());
            ps.setString(4,user.getModel());
            ps.setInt(5,user.getId());
          boolean rowUpdated =   ps.executeUpdate() > 0;
    ps.close();
            connection.close();
    return rowUpdated;

        } catch (SQLException e) {
            e.printStackTrace();
        }
    return rowUpdate;
    }

    public static User getUser(int id) throws SQLException {

        User user = new User();


        try {
            Connection connection = DbUtils.getConnectionFromContext("mysql");
            String sql = "SELECT * FROM cars where id=?";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
                while (rs.next()){
                    user= new User(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5));

                }

            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }



}
