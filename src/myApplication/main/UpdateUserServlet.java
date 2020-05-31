package myApplication.main;

import myApplication.dao.DataAccess;
import myApplication.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataAccess da = new DataAccess();

        String name,surname,mark, model;
        int user_id= Integer.parseInt(request.getParameter("id"));


        // password = CryptoUtil.encode(password);
        name = request.getParameter("imie");
        surname = request.getParameter("nazwisko");
        mark = request.getParameter("marka");
        model = request.getParameter("model");
        User user = new User(user_id,name,surname,mark,model);
        try {
            da.updateUser(user);
        } catch (SQLException throwables) {

        }

        response.sendRedirect("UsersServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
