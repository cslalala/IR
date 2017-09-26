package ssm.dao;

import org.apache.ibatis.annotations.Param;
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
    void updateValidation(@Param("emailAddress") String emailAddress, @Param("validation") String validation);
    boolean resetPassword(@Param("emailAddress") String emailAddress, @Param("password") String password);
    boolean updataIndexDataSetZIPPath(@Param("emailAddress") String emailAddress, @Param("path") String path);
}
