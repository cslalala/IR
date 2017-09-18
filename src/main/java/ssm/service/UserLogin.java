package ssm.service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import ssm.dao.entity.UserEntity;

/**
 * Created by chensu on 2017/9/18.
 */
public interface UserLogin {
    public boolean findUser(String emailAddress, String password);
    public String userInsert(String emailAddress, String username, String password, String confirm_password);
}
