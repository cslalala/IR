package ssm.dao;

import org.springframework.stereotype.Component;
import ssm.dao.entity.UserEntity;

import java.util.List;


/**
 * User 表数据库控制层接口
 */
@Component
public interface UserDao {

    public List<UserEntity> findUser (String email);
    public void addUser(UserEntity entity);
}
