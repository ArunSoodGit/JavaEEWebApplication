package myApplication.main;

import myApplication.dao.DataAccess;
import myApplication.models.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import static java.lang.Integer.parseInt;

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {





    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DataAccess dataAccess = new DataAccess();

        User user = null;
        try {
            user = dataAccess.getUser(Integer.parseInt(request.getParameter("id")));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        List<User> userList = DataAccess.getAll();
        request.setAttribute("user",user);


        RequestDispatcher dispatcher = request.getRequestDispatcher("updateUser.jsp");
        dispatcher.forward(request,response);

    }
}
