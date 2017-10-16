package ssm.controller;

import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ssm.dao.entity.systemDataInf;
import ssm.entity.UploadParam;
import ssm.service.I_Index;
import ssm.service.I_Retrieve;
import ssm.service.Indexing.unZip;
import ssm.service.UserLogin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

/**
 * Created by chensu on 17/9/7.
 */
@Controller
public class UserController extends BaseController {
    @Resource
    private UserLogin userLogin;
    private I_Index i_index;
    private I_Retrieve i_retrieve;
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
        String ans = userLogin.resetPassword(emailAddress, passWord);
        return ans;
    }

    /*模式一 检索*/
    @ResponseBody
    @RequestMapping("/modeOne_retrieve")
    public String modeOne_retrieve(String dataName, String queryNo, String retrieveModel){
        systemDataInf systemdatainf = i_retrieve.modeOne_Find(dataName, queryNo, retrieveModel);
        String ans = i_retrieve.modeOne_Retrieve(systemdatainf);
        return "1";
    }

    /*模式三， 上传数据集*/
    @ResponseBody
    @RequestMapping("/Upload")
    public String uploadData(UploadParam param,MultipartFile uploadFile, HttpServletRequest request) throws IOException {
        try{
            String fileName = uploadFile.getOriginalFilename();
            fileName = fileName.substring(fileName.lastIndexOf(File.separator) + 1);
            //得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
           // String newFileName = UUID.randomUUID().toString() + "_" + fileName;
            String save = request.getServletContext().getRealPath("/WEB-INF/upload");

            String pp = UUID.randomUUID().toString();
            String savePath = save + pp +"_" + fileName;
            FileOutputStream fileOutputStream = new FileOutputStream(savePath);
            fileOutputStream.write(uploadFile.getBytes());
            fileOutputStream.close();
            System.out.println("**************************");
            System.out.println("文件保存保存路径为:" + savePath);
            return savePath;
        }catch (Exception e){
            e.printStackTrace();
        }
        return "fail";
    }

    /*模式三， 建索引*/
    @ResponseBody
    @RequestMapping("/Indexing")
    /*dataZipPath: $("#dataZipPath").val(), docTag: $("#IndexDocTag").val(), idTag:$("#IndexIDTag"), processTag:$("#IndexProcessTag")*/
    public String indexing(String username, String dataZipPath, String docTag, String idTag, String processTag){
        String dataSetPath = i_index.UnZip(dataZipPath);
        //更新user_index表
        return "";
    }
}
