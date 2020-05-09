package myApplication.main;

import myApplication.dao.DataAccess;
import myApplication.db.CryptoUtil;
import myApplication.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataAccess da = new DataAccess();

        String user_login, password,name,surname;

        user_login = request.getParameter("login");
        password = request.getParameter("password");
        password = CryptoUtil.encode(password);
        name = request.getParameter("imie");
        surname = request.getParameter("nazwisko");
        User user = new User(user_login,password,name,surname);
        da.addNew(user);
        response.sendRedirect("UsersServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
