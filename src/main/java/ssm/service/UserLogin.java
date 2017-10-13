package ssm.service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import ssm.dao.entity.UserEntity;

/**
 * Created by chensu on 2017/9/18.
 */
public interface UserLogin {
    String findUser(String emailAddress, String password);
    String userInsert(String emailAddress, String username, String password);
    String sendEmail(String emailAddress);
    String updateValidation(String emailAddress,  String validation);
    String confirmValidation(String emailAddress, String validation_input);
    String resetPassword(String emailAddress, String passWord);
}