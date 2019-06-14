package web.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Articles {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String title;
    @Column(columnDefinition = "TEXT")
    private String content;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "Author", referencedColumnName = "id")
    private Users users;

    public Articles(String title, String content, Users users) {
        this.title = title;
        this.content = content;
        this.users = users;
    }

    public Articles() {
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
