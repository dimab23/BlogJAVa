package web.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import web.model.Articles;
import web.model.Action;
import javax.transaction.Transactional;

public interface ActionRepository extends JpaRepository<Action,Long> {
    Articles findById(Integer id_articol);



@Query(value = "SELECT COUNT(*) FROM action WHERE id_articol =? AND id_users=?",nativeQuery =true)
    int findBy(int id, String id_user);


@Modifying
@Transactional
@Query(value = "UPDATE action SET status ='like' WHERE id_articol =? AND id_users=?",nativeQuery = true)
    void likeByAction(int id,String id_user);


    @Modifying
    @Transactional
    @Query(value = "UPDATE action SET status ='dislike' WHERE id_articol =? AND id_users=?",nativeQuery = true)
    void dislikeByAction(int id,String id_user);


    @Query(value = "SELECT COUNT(*) FROM action WHERE status='like' AND id_articol =?",nativeQuery =true)
    int findByStatuslike(Integer id);

    @Query(value = "SELECT COUNT(*) FROM action WHERE status='dislike' AND id_articol =?",nativeQuery =true)
    int findByStatusdilike(Integer id);


    @Query(value = "SELECT status FROM action WHERE id_articol =? AND id_users=?",nativeQuery = true)
    String findByStatus(Integer id,String id_user);


    @Modifying
    @Transactional
    @Query(value = "DELETE FROM action WHERE id_articol =? AND id_users=?",nativeQuery = true)
    void deleteActionBy (Integer id,String id_user);

}
