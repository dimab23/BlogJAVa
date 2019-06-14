package web.model;

import lombok.Data;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;

@Data
@Entity
@Table(
        uniqueConstraints=
        @UniqueConstraint(columnNames={"id_users", "id_articol"})
)
public class Action {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_users", referencedColumnName = "email")
    private Users users;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_articol", referencedColumnName = "id")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Articles articles;

    private String status;

    public Action() {
    }

    public Action(Users users, Articles articles, String status) {
        this.users = users;
        this.articles = articles;
        this.status = status;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Articles getArticles() {
        return articles;
    }

    public void setArticles(Articles articles) {
        this.articles = articles;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
