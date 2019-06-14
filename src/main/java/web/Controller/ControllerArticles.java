package web.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import web.model.Articles;
import web.model.Notification;
import web.model.Users;
import web.repos.ArticlesRepository;
import web.repos.NotificationRepository;
import web.repos.UsersRepository;

import java.util.List;
import java.util.Map;

@Controller
public class ControllerArticles {
    @Autowired
    private ArticlesRepository articlesRepository;

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private NotificationRepository notificationRepository;

    @GetMapping("/add_article")
    public String addArticle(Map<String, Object> model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name_user = usersRepository.name(auth.getName());
        String name_user1 = name_user.replaceFirst(",","  ");
        Users users = usersRepository.findByEmail(auth.getName());
        int user_id = users.getId();
        List<Notification> notification = notificationRepository.findAllByNotification(user_id);

        int countNotification = notificationRepository.countNofication(user_id);
        int coutByNotification = notificationRepository.countByNotification(user_id);
        model.put("user",name_user1);
        model.put("countNotification",countNotification);
        model.put("coutByNotification",coutByNotification);
        model.put("notification",notification);
        return ("newArticle");
    }

    @PostMapping("/add_article")
    public String addArticlebd(Articles articles){
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            int id_user = usersRepository.id(auth.getName());
            Users users = usersRepository.findAllById(id_user);
            articles.setUsers(users);
            articles.setTitle(articles.getTitle().replaceAll("\\<.*?\\>", ""));
            articles.setContent(articles.getContent().replaceAll("\\<.*?\\>", ""));
            articlesRepository.save(articles);
            return ("redirect:/");
    }

    @PostMapping("/delete")
    public String deleteArticles(Integer id){
        articlesRepository.deleteArticlesBy(id);
        return "redirect:/";
    }
}
