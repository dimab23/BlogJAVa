package web.model;

import lombok.Data;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.springframework.data.annotation.CreatedDate;


import javax.persistence.*;
import java.util.Date;

@Data
@Entity
public class Comments {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "users_id")
    private Users users;

    @ManyToOne
    @JoinColumn(name = "articles_id")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Articles articles;

    @Column(columnDefinition = "TEXT")
    private String comment;

    @CreatedDate
    @Temporal(TemporalType.DATE)
    private Date date;


}