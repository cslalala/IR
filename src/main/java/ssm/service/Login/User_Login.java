package ssm.service.Login;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ssm.dao.UserDao;
import ssm.dao.entity.UserEntity;
import ssm.service.UserLogin;

import javax.annotation.Resource;
import java.util.List;


/**
 * Created by chensu on 2017/9/18.
 */
@Service
@Transactional
public class User_Login implements UserLogin {
    @Resource
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    /*登录验证*/
    public String findUser(String emailAddress, String password) {
        UserEntity ue = new UserEntity();
        ue.setEmailAddress(emailAddress);
        ue.setPassword(password);
        List<UserEntity> uelist = userDao.findUser(emailAddress);
        /*1代表用户不存在， 2代表密码错误， 成功就传用户的名字*/
        if(uelist.size() == 0){
            return "User does not exist";
        }else{
            UserEntity userEntity = userDao.findUser(emailAddress).get(0);
            if(!userEntity.getPassword().equals(password)){
                return "Wrong password";
            }else{
                return userEntity.getName();
            }
        }
    }

    /*注册, 添加用户*/
    public String userInsert(String emailAddress, String username, String password) {
        /*判断用户是否已经存在*/
        UserEntity ue = new UserEntity();
        ue.setEmailAddress(emailAddress);
        List<UserEntity> uelist = userDao.findUser(emailAddress);
        if(uelist.size() != 0){
            return "User already exists".toString();
        }else{
            UserEntity userEntity = new UserEntity(emailAddress, username, password);
            if(userDao.addUser(userEntity)){
                return "Registration Success".toString();
            }else{
                return "Registration Failed".toString();
            }
        }
    }
}
