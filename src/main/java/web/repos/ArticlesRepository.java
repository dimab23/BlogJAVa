package web.repos;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import web.model.Articles;
import web.model.Users;

import javax.transaction.Transactional;
import java.util.List;

public interface ArticlesRepository extends JpaRepository<Articles,Long> {
     Articles findById (Integer id);
     List<Articles> findAllById(Integer id);

     @Query(value = "SELECT id, title, CONCAT(SUBSTRING(content,1,127),'...') As  content,author from articles",nativeQuery = true)
     Page<Articles> findAllByArticles(Pageable pageable);

     @Query(value = "SELECT id, title, CONCAT(SUBSTRING(content,1,127),'...') As  content,author from articles",nativeQuery = true)
     List<Articles> findAllByArticles1(Pageable pageable);

     @Query(value = "SELECT * FROM articles WHERE id=?",nativeQuery = true)
     List<Articles> findAllByArticlesId(Integer id);

     @Modifying
     @Transactional
     @Query(value = "DELETE FROM articles WHERE id=?", nativeQuery = true)
     void deleteArticlesBy(Integer id);

     @Query(value = "SELECT id, title, CONCAT(SUBSTRING(content,1,127),'...') As  content,author from articles WHERE author =  ? ORDER BY id DESC ", nativeQuery = true)
     List<Articles> findAllBy (Integer id);

     @Query(value = "SELECT count(*) from articles WHERE author =?",nativeQuery = true)
     int countArticles (Integer id);

     @Query(value = "SELECT author from articles WHERE id=?",nativeQuery = true)
     Integer authoNotification (int id);

}
