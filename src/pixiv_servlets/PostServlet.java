package pixiv_servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pixiv.DBConnection;
import pixiv.Posts;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/posts")
public class PostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<Posts> posts = DBConnection.getPosts();

        request.setAttribute("posty", posts);
        request.getRequestDispatcher("/index.jsp").forward(request, response);

    }
}
