package ssm.dao;

import org.springframework.stereotype.Component;
import ssm.dao.entity.UserEntity;

import java.util.List;


/**
 * User 表数据库控制层接口
 */
@Component
public interface UserDao {

    List<UserEntity> findUser (String emailAddress);
    boolean addUser(UserEntity entity);
    boolean updateValidation(String emailAddress, String validation);
    boolean resetPassword(String emailAddress, String password);
}
