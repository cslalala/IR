package ssm.service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import ssm.dao.entity.UserEntity;

/**
 * Created by chensu on 2017/9/18.
 */
public interface UserLogin {
    public String findUser(String emailAddress, String password);
    public String userInsert(String emailAddress, String username, String password);
    public String sendEmail(String emailAddress);
    public String updateValidation(String emailAddress,  String validation);
    public String confirmValidation(String emailAddress, String validation_input);
    public String resetPassword(String emailAddress, String passWord);
}
