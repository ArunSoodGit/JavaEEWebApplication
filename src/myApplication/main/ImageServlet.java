package myApplication.main;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;

@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("image/png");
        javax.servlet.ServletOutputStream out = response.getOutputStream();

        int width = 400;
        int height = 400;
        java.awt.image.BufferedImage image = new java.awt.image.BufferedImage(width, height, java.awt.image.BufferedImage.TYPE_INT_RGB);
        java.awt.Graphics g = image.getGraphics();
        g.setColor(Color.darkGray);
        g.fillRect(0, 0, 400, 400);

        g.setColor(Color.yellow);
        g.fillOval(100, 100, 200, 200);

        g.setColor(Color.red);
        g.drawArc(150, 200, 100, 66, -10, -70);

        g.setColor(Color.black);
        g.fillOval(162, 166, 16, 20);
        g.fillOval(216, 166, 16, 20);

        g.setColor(Color.orange);

        g.setColor(Color.green);
        g.setFont(new Font("Serif", Font.BOLD, 30));
        g.drawString("Cześć " + request.getUserPrincipal().getName() +"!", 100, 380);


        try {
            javax.imageio.ImageIO.write(image, "jpg", out);
        } catch (IOException ioe) {
            System.out.println("Coś poszło nie tak" + ioe);
        } finally {
            out.close();
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
