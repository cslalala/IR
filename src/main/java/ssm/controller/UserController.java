package ssm.controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ssm.entity.IR_Entity;
import ssm.service.I_Index;
import ssm.service.UserLogin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
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

    /*模式三， 上传数据集*/
    @ResponseBody
    @RequestMapping("/Upload")
    public String uploadData(@RequestParam (value = "file", required = false)MultipartFile uploadFile, HttpServletRequest request, HttpServletResponse response) throws IOException {
        //得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
        String savePath = request.getSession().getServletContext().getRealPath("/WEB-INF/upload");
        //上传时生成的临时文件保存目录
        String tempPath = request.getSession().getServletContext().getRealPath("/WEB-INF/temp");
        String fileName = uploadFile.getOriginalFilename();
        //这是一个临时变量 一个请求结束了文件夹就没了呀  doGet函数完了就没了
        File file = new File(tempPath);
        if (!file.exists() && !file.isDirectory()) {
            System.out.println("目录或文件不存在！");
            file.mkdir();
        }

        //得到文件保存的名称
        fileName = UUID.randomUUID().toString() + "_" + fileName;
        //得到文件保存的路径
        String savePathStr = savePath + fileName;
        //设置query存放的路径

        if (type == 1) {
            i_index.updataIndexDataSetZIPPath();
            ur.setIndexDocZippath(savePathStr);
        }
        //设置要进行检索的标签
        else if (type == 2) {
            ur.setIndexTagPath(savePathStr);
            System.out.println(ur.getIndexTagPath());
            ur.setIndexResultPath(savePath + UUID.randomUUID().toString() + "_" + "indexResult");;
            ur.setDocumentXMLPath(savePath + UUID.randomUUID().toString() + "_" + "documentXML");
            ur.setDocumentInfPath(savePath + UUID.randomUUID().toString() + "_" + "documentInf");
        }
        //设置存放结果的路径
        else if (type == 3) {
            ur.setQueryPath(savePathStr);
        }
        else if (type == 4) {
            ur.setRetrivelTagPath(savePathStr);
            ur.setRetrivelResultPath(savePath + UUID.randomUUID().toString() + "_" + "retrieveResult");
            System.out.println(ur.getRetrivelResultPath());
        }
        else if(type == 5){
            ur.setEvaluationDocumentPath(savePathStr);
            System.out.println(ur.getEvaluationDocumentPath());
        }
        System.out.println("文件保存保存路径为:" + savePathStr);
        //创建一个文件输出流
        FileOutputStream fileOutputStream = new FileOutputStream(savePathStr);

        fileOutputStream.write(item.get());
        fileOutputStream.close();


        //删除处理文件上传时生成的临时文件
        //item.delete();
        message = "文件上传成功";
    }
}
