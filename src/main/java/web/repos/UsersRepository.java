package web.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import web.model.Users;

import javax.transaction.Transactional;

public interface UsersRepository extends JpaRepository<Users, Long> {
    Users findByEmail(String email);

    Users findByActivationCode(String code);

    @Query(value = "SELECT first_name, last_name FROM users WHERE email =?", nativeQuery = true)
    String name(String email);

    @Query(value = "SELECT first_name, last_name FROM users WHERE id =?", nativeQuery = true)
    String author(Integer id);

    @Query(value = "SELECT id FROM users WHERE email =?", nativeQuery = true)
    int id(String email);

    Users findAllById(int id);

    @Modifying
    @Transactional
    @Query(value = "UPDATE users SET active =false,activation_code=? where email=?", nativeQuery = true)
    void reset(String activationCode, String email);

    @Modifying
    @Transactional
    @Query(value = "UPDATE  users SET password =?,active=true WHERE email =?", nativeQuery = true)
    void newpassword(String password, String email);

    @Query(value = "SELECT* FROM users WHERE email= ?", nativeQuery = true)
    Users findAllByUsers(String email);


    @Query(value = "SELECT password FROM users WHERE email=?", nativeQuery = true)
    String password(String email);

    @Modifying
    @Transactional
    @Query(value = "UPDATE  users SET first_name=?,last_name=?,password =?,active=true WHERE email =?", nativeQuery = true)
    void editProfile(String first_name, String last_name, String password, String email);


    @Query(value = "SELECT COUNT(*) FROM users WHERE email=?", nativeQuery = true)
    int exitingEmail(String email);

    Users findById(int id);

}

