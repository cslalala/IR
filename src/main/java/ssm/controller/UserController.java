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
    public String find(String emailAddress, String password) {
        boolean ans = userLogin.findUser(emailAddress, password);
        if (ans) {
            return "ok".toString();
        } else {
            return "not ok".toString();
        }
    }
   /* 用户注册*/

}
