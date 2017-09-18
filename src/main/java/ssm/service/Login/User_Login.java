package ssm.service.Login;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import ssm.dao.UserDao;
import ssm.dao.entity.UserEntity;
import ssm.service.UserLogin;

import javax.annotation.Resource;
import javax.transaction.Transactional;

/**
 * Created by chensu on 2017/9/18.
 */
@Service
@Transactional
public class User_Login implements UserLogin {
    @Resource
    private UserDao userDao;
    public void setUserDao(UserDao userDao){
        this.userDao = userDao;
    }
    /*登录验证*/
    public boolean findUser(String emailAddress, String password){
        UserEntity ue=new UserEntity();
        ue.setEmailAddress(emailAddress);
        ue.setPassword(password);
        UserEntity userEntity = userDao.findUser(ue).get(0);
        if(userEntity.getPassword().equals(password)){
            return true;
        }else{
            return false;
        }
    }
    /*注册, 添加用户*/
    public String userInsert(String emailAddress, String username, String password, String confirm_password) {
        if (password.equals(confirm_password)) {
            UserEntity userEntity = new UserEntity(emailAddress, username, password);
           // userDao.addUser(userEntity);
            return "Registration Success".toString();
        } else {
            /*密码不一致*/
            return "Inconsistent password".toString();
        }
    }
}
