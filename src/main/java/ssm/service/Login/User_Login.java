package ssm.service.Login;

import org.apache.http.MessageConstraintException;
import org.apache.shiro.session.Session;
import org.apache.zookeeper.server.SessionTracker;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ssm.dao.UserDao;
import ssm.dao.entity.UserEntity;
import ssm.service.UserLogin;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.List;
import java.util.Properties;
import java.util.Random;


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
            return "User already exists".toString();
        }else{
            /*收件人邮箱*/
            String to = emailAddress;
        /*发件人电子邮箱*/
            String from = "823164623@qq.com";
        /*指定发送邮件的主机为localhost*/
            String host = "localhost";
        /*获取系统属性*/
            Properties properties = System.getProperties();
        /*设置邮件服务器*/
            properties.setProperty("mail.smtp.host", host);
        /*获取默认session对象*/
            javax.mail.Session session = javax.mail.Session.getDefaultInstance(properties);
            try{
                //创建默认的MimeMessage对象
                MimeMessage message = new MimeMessage(session);
                //Set From:头部头字段
                message.setFrom(new InternetAddress(from));
                //Set To: 头部头字段
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                //Set Subject: 头部头字段 随机生成6位数字
                int randomInt = new Random().nextInt(999999);
                message.setSubject(String.valueOf(randomInt));
                //发送消息
                Transport.send(message);
                //更新用户的验证码
                String ans = updateValidation(emailAddress, String.valueOf(randomInt));
                if(ans.equals("ok")){
                    return "Success";
                }else{
                    return "Fail";
                }
            }catch (MessagingException mex){
                mex.printStackTrace();
                return "Fail";
            }
        }
    }
}
