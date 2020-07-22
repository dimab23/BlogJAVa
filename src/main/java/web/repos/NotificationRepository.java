package web.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import web.model.Notification;

import javax.transaction.Transactional;
import java.util.List;

public interface NotificationRepository extends JpaRepository<Notification, Long> {

    @Modifying
    @Transactional
    @Query(value = "DELETE FROM notification WHERE articles_id=? AND user_id= ? AND autor_notification_id=? AND status=?", nativeQuery = true)
    void deleteNotificationBy(Integer articles_id, Integer user_id, Integer autor_notification_id, String status);

    @Modifying
    @Transactional
    @Query(value = "UPDATE notification SET status=? WHERE articles_id=? AND user_id= ? AND autor_notification_id=?", nativeQuery = true)
    void updateNotification(String status, Integer articles_id, Integer user_id, Integer autor_notification_id);

    @Query(value = "SELECT * FROM notification WHERE autor_notification_id=? ORDER BY id DESC", nativeQuery = true)
    List<Notification> findAllByNotification(int autor_notification_id);

    @Query(value = "SELECT count(*) from notification WHERE autor_notification_id=? AND seen=false", nativeQuery = true)
    int countNofication(int autor_notification_id);

    @Modifying
    @Transactional
    @Query(value = "UPDATE notification SET seen =true WHERE id=?", nativeQuery = true)
    void viewNotification(int id);

    @Query(value = "SELECT count(*) from notification WHERE autor_notification_id=?", nativeQuery = true)
    int countByNotification(int autor_notification_id);
}
