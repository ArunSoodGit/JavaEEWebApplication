package myApplication.dao;

import myApplication.db.DbUtils;
import myApplication.models.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class DataAccess {

    public void addNew(User user) {
        try {
            PreparedStatement ps = DbUtils.getPreparedStatment("insert into users values(?,?,?)");
            ps.setString(1,user.getLogin());
            ps.setString(2,user.getPassword());
            ps.setString(3,user.getName());
            ps.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static List<User> getAll(){
        List<User> userList = new LinkedList<>();
        try {
            ResultSet rs = DbUtils.getPreparedStatment("select * from users").executeQuery();
            while(rs.next()){
                User user= new User(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4));
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return userList;
    }

}
