package web.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import web.repos.NotificationRepository;

@Controller
public class NotificationController {

    @Autowired
    private NotificationRepository notificationRepository;

    @PostMapping("open_notification")
    public String OpenAllNotification(Integer id,Integer id_articles){
        notificationRepository.viewNotification(id);
        return "redirect:/articles/"+id_articles;
    }
}
