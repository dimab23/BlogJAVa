package web.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import web.model.Articles;
import web.model.Notification;
import web.model.Users;
import web.repos.ArticlesRepository;
import web.repos.NotificationRepository;
import web.repos.UsersRepository;

import java.util.List;
import java.util.Map;

@Controller
public class ProfileController {
    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private PasswordEncoder passwordEncoder2;

    @Autowired
    private ArticlesRepository articlesRepository;

    @Autowired
    private NotificationRepository notificationRepository;

    @GetMapping("/my_profile")
    public String profile(Map<String,Object> model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Users users = usersRepository.findAllByUsers(auth.getName());
        String name_user = usersRepository.name(auth.getName());
        String name_user1 = name_user.replaceFirst(",","  ");
        int user_id = users.getId();
        List<Notification> notification = notificationRepository.findAllByNotification(user_id);

        int countNotification = notificationRepository.countNofication(user_id);
        int coutByNotification = notificationRepository.countByNotification(user_id);
        model.put("user",name_user1);
        model.put("users",users);

        Integer id_user = usersRepository.id(auth.getName());
        int countArticles = articlesRepository.countArticles(id_user);
        if(countArticles != 0) {
            //my_articles
            List<Articles> articlesList = articlesRepository.findAllBy(id_user);
            model.put("articlesList", articlesList);
        }
        model.put("countArticles",countArticles);
        model.put("countNotification",countNotification);
        model.put("coutByNotification",coutByNotification);
        model.put("notification",notification);
        return "Profile";
    }

    @PostMapping("/edit_profile")
    public String editProfile(String first_name,String last_name, String password_current,String password,Map<String,Object> model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String password67 = usersRepository.password(auth.getName());
        BCryptPasswordEncoder passwordEncoder = new
                BCryptPasswordEncoder();
        if (passwordEncoder.matches(password_current,password67) !=true){
            Users users = usersRepository.findAllByUsers(auth.getName());
            String name_user = usersRepository.name(auth.getName());
            String name_user1 = name_user.replaceFirst(",","  ");
            model.put("user",name_user1);
            model.put("users",users);

            Integer id_user = usersRepository.id(auth.getName());
            int countArticles = articlesRepository.countArticles(id_user);
            if(countArticles != 0) {
                //my_articles
                List<Articles> articlesList = articlesRepository.findAllBy(id_user);
                model.put("articlesList", articlesList);
            }
            int user_id = users.getId();
            List<Notification> notification = notificationRepository.findAllByNotification(user_id);
            int countNotification = notificationRepository.countNofication(user_id);
            int coutByNotification = notificationRepository.countByNotification(user_id);
            model.put("countArticles",countArticles);
            model.put("countNotification",countNotification);
            model.put("coutByNotification",coutByNotification);
            model.put("notification",notification);
            model.put("PasswordEroor1","The current password is incorrect. Try again!");
            return "Profile";
        }
        else{
            Users users = usersRepository.findAllByUsers(auth.getName());
            String name_user = usersRepository.name(auth.getName());
            String name_user1 = name_user.replaceFirst(",","  ");
            model.put("user",name_user1);
            model.put("users",users);

            Integer id_user = usersRepository.id(auth.getName());
            int countArticles = articlesRepository.countArticles(id_user);
            if(countArticles != 0) {
                //my_articles
                List<Articles> articlesList = articlesRepository.findAllBy(id_user);
                model.put("articlesList", articlesList);
            }
            model.put("countArticles",countArticles);
            int user_id = users.getId();
            List<Notification> notification = notificationRepository.findAllByNotification(user_id);
            int countNotification = notificationRepository.countNofication(user_id);
            int coutByNotification = notificationRepository.countByNotification(user_id);
            String ps = passwordEncoder2.encode(password);
            first_name = first_name.replaceAll("\\<.*?\\>", "");
            last_name = last_name.replaceAll("\\<.*?\\>", "");
            usersRepository.editProfile(first_name,last_name,ps,auth.getName());
            model.put("countNotification",countNotification);
            model.put("coutByNotification",coutByNotification);
            model.put("notification",notification);
            model.put("PasswordEroor","\n" +
                    "Account changed successfully!");
            return "Profile";
        }
    }
}