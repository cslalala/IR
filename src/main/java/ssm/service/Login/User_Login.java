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
            //System.out.println(userEntity.getEmailAddress() + " " +userEntity.getName() + " " + userEntity.getPassword() + "　" + userEntity.getValidation());
            if(userDao.addUser(userEntity)){
                return "Registration Success".toString();
            }else{
                return "Registration Failed".toString();
            }
        }
    }

    /*重置用户密码*/
    public String resetPassword(String emailAddress, String passWord){
        UserEntity userEntity = new UserEntity();
        userEntity.setEmailAddress(emailAddress);
        if(userDao.resetPassword(emailAddress, passWord)){
            return "Password reset successful".toString();
        }else{
            return "Password reset failed".toString();
        }
    }

    /*更新用户验证码*/
    public String updateValidation(String emailAddress, String validation){
        UserEntity userEntity = new UserEntity();
        userEntity.setEmailAddress(emailAddress);
        if(userDao.updateValidation(emailAddress, validation)){
            return "ok".toString();
        }else{
            return "not ok".toString();
        }
    }

    /*验证用户输入的验证码*/
    public String confirmValidation(String emailAddress, String validation_input){
        UserEntity userEntity = new UserEntity();
        userEntity.setEmailAddress(emailAddress);
        List<UserEntity> ueList = userDao.findUser(emailAddress);
        String validation = ueList.get(0).getValidation();
        if(validation.equals(validation_input)){
            return "Verification is successful".toString();
        }else{
            return "Verification code entered incorrectly".toString();
        }
    }

    /*忘记密码，发送邮件*/
    public String sendEmail(String emailAddress){
        /*判断用户是否存在*/
        UserEntity userEntity = new UserEntity();
        userEntity.setEmailAddress(emailAddress);
        List<UserEntity> ueList = userDao.findUser(emailAddress);
        if(ueList.size() == 0){
            return "User does not exist".toString();
        }else{
            MailSend ms = new MailSend();
            ms.setAddress("m157****0661@163.com", "80818***@qq.com", "一个带附件的JavaMail邮件");
            ms.send("smtp.163.com", "m157****0661@163.com", "gebilaowang123");
        }
    }
}
