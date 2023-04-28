package pixiv_servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import labs_jdbc.Student;
import pixiv.DBConnection;
import pixiv.Image;
import pixiv.Posts;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(value = "/add-posts")
public class AddPostServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Part filePart = request.getPart("post_image");
        InputStream inputStream = filePart.getInputStream();

        // Connect to the SQL database
        String jdbcURL = "jdbc:mysql://localhost:8889/jdbc_labs";
        String dbUsername = "root";
        String dbPassword = "root";
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Prepare the SQL statement to insert the image into the database
        String sql = "INSERT INTO posts (full_name, image ) VALUES (?, ?)";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, filePart.getName());
            statement.setBlob(2, inputStream);
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        // Execute the SQL statement


        // Close the connection and redirect back to the HTML form

        response.sendRedirect("/posts.jsp");


//
//        DBConnection.addPost(post);
//
//        response.sendRedirect("/posts.jsp");


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/addPosts.jsp").forward(request, response);
    }
}
