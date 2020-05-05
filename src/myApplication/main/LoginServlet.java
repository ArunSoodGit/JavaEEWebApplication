package myApplication.main;

import myApplication.service.LoginService;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        LoginService loginService = new LoginService();
        PrintWriter printWriter = response.getWriter();
        response.setContentType("text/html");
        String user_login, password;
        user_login = request.getParameter("login");
        password = request.getParameter("password");

        if (loginService.check(user_login,password)) {
            HttpSession session = request.getSession();
            ServletContext context = request.getServletContext();
            context.setAttribute("login",user_login);
            session.setAttribute("login",user_login);
            response.sendRedirect("UsersServlet");
        }
        else{
            response.sendRedirect("index.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
