package web.model;

import lombok.Data;
import lombok.NonNull;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
public class Notification {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private Users users;

    @ManyToOne
    @JoinColumn(name = "articles_id")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private  Articles articles;

    @ManyToOne
    private  Users autorNotification;
    @NonNull
    private String status;

    @Temporal(TemporalType.TIMESTAMP)
    @NonNull
    private Date date;

    @NonNull
    private boolean seen;

    public void setAutorNotification(Users autorNotification) {
        this.autorNotification = autorNotification;
    }

    public Notification(Users users, Articles articles, Users autorNotification, String status, Date date, boolean seen) {
        this.users = users;
        this.articles = articles;
        this.autorNotification = autorNotification;
        this.status = status;
        this.date = date;
        this.seen = seen;
    }

    public Notification() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean isSeen() {
        return seen;
    }

    public void setSeen(boolean seen) {
        this.seen = seen;
    }
}
