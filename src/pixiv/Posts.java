package pixiv;

import java.awt.*;
import java.io.File;
import java.io.FileInputStream;

public class Posts {
    private Long id;
    private String name;
    private Image image;

    public Posts(Long id, String name, Image image) {
        this.id = id;
        this.name = name;
        this.image = image;
    }
    public Posts() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }
}
