package pixiv;

import jakarta.servlet.http.Part;
import labs_jdbc.Student;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;


public class DBConnection {
    private static Connection connection;
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:8889/jdbc_labs", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static ArrayList<Posts> getPosts() {
        ArrayList<Posts> posts = new ArrayList<>();

        try {
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM posts"
            );

            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()) {
                Posts post = new Posts();
                post.setId(resultSet.getLong("id"));
                post.setName(resultSet.getString("full_name"));

                post.setImage((Image)resultSet.getBlob("image"));


                posts.add(post);
            }
            statement.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return posts;
    }
    public static void addPost(Posts posts, InputStream inputStream) {
        try {
            PreparedStatement statement = connection.prepareStatement(
                    "INSERT INTO posts (full_name, image) " +
                            "VALUES (?,?)"
            );

            statement.setString(1, posts.getName());
            statement.setBlob(2, inputStream);


            statement.executeUpdate();
            statement.close();
        } catch (Exception e) {

        }
    }
}
