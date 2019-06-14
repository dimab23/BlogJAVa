package web.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import web.model.Comments;
import web.model.Articles;
import web.model.Users;
import web.repos.ArticlesRepository;
import web.repos.CommentsRepository;
import web.repos.UsersRepository;
import java.util.Calendar;

@Controller
public class CommentsController {
    @Autowired
    private ArticlesRepository articlesRepository;

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private CommentsRepository commentsRepository;

    @PostMapping("/articles/{id}/comments")
    public String addArticlebd(@PathVariable Integer id, Comments comments){
        //setId_user
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        int id_user = usersRepository.id(auth.getName());
        Users users = usersRepository.findAllById(id_user);
        comments.setUsers(users);

        //setId_articol
        Articles articles = articlesRepository.findById(id);
        comments.setArticles(articles);

        //setDate
        java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
        comments.setDate(date);
        comments.setComment(comments.getComment().substring(0, comments.getComment().length()-1));
        comments.setComment(comments.getComment().replaceAll("\\<.*?\\>", ""));
        commentsRepository.save(comments);
        return ("redirect:/articles/"+id);
    }
}
