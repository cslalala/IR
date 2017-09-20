package ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import ssm.service.UserLogin;

import javax.annotation.Resource;

/**
 * Created by chensu on 17/9/7.
 */
@Controller
public class UserController extends BaseController {
    @Resource
    private UserLogin userLogin;

    public void setUserLogin(UserLogin userLogin) {
        this.userLogin = userLogin;
    }

    /*用户登录，查询用户*/
    @ResponseBody
    @RequestMapping("/findUser")
    public String find(String emailAddress, String passWord) {
        String ans = userLogin.findUser(emailAddress, passWord);
        return ans;
    }
   /* 用户注册*/
   @ResponseBody
   @RequestMapping("/insertUser")
   public String insert(String emailAddress, String userName, String passWord){
       String ans = userLogin.userInsert(emailAddress, userName, passWord);
       return ans;
   }
   /*忘记密码，发送邮件*/
   @ResponseBody
    @RequestMapping("/sendEmail")
    public String sendEmail(String emailAddress){
       String ans = userLogin.sendEmail(emailAddress);
       return ans;
   }

   /*用户忘记密码操作中点击发邮件之后2分钟之后应该再次更新一下用户的validation, 使原来的验证码失效*/
    @ResponseBody
    @RequestMapping("/updateValidation")
    public void updateValidation(String emailAddress){
        String ans = userLogin.updateValidation(emailAddress, "-1".toString());
    }

    /*验证用户输入的验证码是否正确*/
    @ResponseBody
    @RequestMapping("/confirmValidation")
    public String confirmValidation(String emailAddress, String validation_input){
        String ans = userLogin.confirmValidation(emailAddress, validation_input);
        return ans;
    }

    /*重置密码*/
    @ResponseBody
    @RequestMapping("/resetPassword")
    public String resetPassword(String emailAddress, String passWord){
        String ans =userLogin.resetPassword(emailAddress, passWord);
        return ans;
    }
}
