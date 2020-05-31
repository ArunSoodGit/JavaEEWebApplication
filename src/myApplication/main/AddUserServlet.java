package myApplication.main;

import myApplication.dao.DataAccess;
import myApplication.db.CryptoUtil;
import myApplication.models.User;
import sun.plugin.com.Dispatcher;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataAccess da = new DataAccess();

        String name,surname,mark, model;
        int user_id=0;


       // password = CryptoUtil.encode(password);
        name = request.getParameter("imie");
        surname = request.getParameter("nazwisko");
        mark = request.getParameter("marka");
        model = request.getParameter("model");
        User user = new User(user_id,name,surname,mark,model);
        da.addNew(user);
    response.sendRedirect("UsersServlet");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       // RequestDispatcher dispatcher = request.getRequestDispatcher("newUser.jsp");
       // dispatcher.forward(request,response);
    }
}
