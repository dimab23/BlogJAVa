package web.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import web.model.Comments;

import java.util.List;

public interface CommentsRepository extends JpaRepository<Comments, Long> {

    @Query(value = "SELECT * FROM comments WHERE articles_id=? ORDER BY id DESC", nativeQuery = true)
    List<Comments> findAllByComment(Integer id);

    @Query(value = "SELECT count(*) from comments where articles_id=?", nativeQuery = true)
    int countCommentsBy(Integer id);
}
