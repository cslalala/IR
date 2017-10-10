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
    public void uploadData(UploadParam param,MultipartFile uploadFile, HttpServletRequest request) throws IOException {
       /* try{
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
            System.out.println("文件保存保存路径为:" + savePath);
            if(param.getTt().equals("1")){
                i_index.setindexDataInf(pp, fileName, save, savePath);
            }
       *//* if(param.getTt().equals("1")){
            i_index.setPath( UUID.randomUUID().toString(), );
        }*//*
            //这个字节数组就是文件
            byte[] bytes = uploadFile.getBytes();
        }catch (Exception e){
            e.printStackTrace();
        }*/

//        //这是一个临时变量 一个请求结束了文件夹就没了呀  doGet函数完了就没了
//        String message = "";
//        try {
//
//            FileItemFactory factory = new DiskFileItemFactory();
//            ServletFileUpload upload = new ServletFileUpload(factory);
//            int type = 0;
//            //1、创建一个DiskFileItemFactory工厂
//            DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
//            //设置工厂的缓冲区的大小，当上传的文件大小超过缓冲区的大小时，就会生成一个临时文件存放到指定的临时目录当中。
//            diskFileItemFactory.setSizeThreshold(1024 * 100);
//            //设置上传时生成的临时文件的保存目录
//            diskFileItemFactory.setRepository(file);
//            //2、创建一个文件上传解析器
//            ServletFileUpload fileUpload = new ServletFileUpload(diskFileItemFactory);
//            //解决上传文件名的中文乱码
//            fileUpload.setHeaderEncoding("UTF-8");
//            //监听文件上传进度
//            //System.out.println("*");
//            fileUpload.setProgressListener(new ProgressListener() {
//                public void update(long pBytesRead, long pContentLength, int arg2) {
//                    System.out.println("文件大小为：" + pContentLength + ",当前已处理：" + pBytesRead);
//                }
//            });
//            //3、判断提交上来的数据是否是上传表单的数据
//            if (!fileUpload.isMultipartContent(request)) {
//                //按照传统方式获取数据
//                return;
//            }
//            List<FileItem> list = fileUpload.parseRequest(request);
//            for (FileItem item : list) {
//                //如果fileitem中封装的是普通输入项的数据
//                if (item.isFormField()) {
//                    String name = item.getFieldName();
//                    //解决普通输入项的数据的中文乱码问题
//                    String value = item.getString("UTF-8");
//                    String value1 = new String(name.getBytes("iso8859-1"), "UTF-8");
//                    // System.out.println(name + "  " + value);
//                    type = Integer.parseInt(value);
//                    // System.out.println(name + "  " + value1);
//                } else {
//                    //如果fileitem中封装的是上传文件，得到上传的文件名称，
//                    String fileName = item.getName();
//
//                    System.out.println(fileName);
//                    if (fileName == null || fileName.trim().equals("")) {
//                        continue;
//                    }
//
//                    //注意：不同的浏览器提交的文件名是不一样的，有些浏览器提交上来的文件名是带有路径的，如：  c:\a\b\1.txt，而有些只是单纯的文件名，如：1.txt
//                    //处理获取到的上传文件的文件名的路径部分，只保留文件名部分
//                    fileName = fileName.substring(fileName.lastIndexOf(File.separator) + 1);
//                    //得到上传文件的扩展名
//                    String fileExtName = fileName.substring(fileName.lastIndexOf(".") + 1);
//                    //如果需要限制上传的文件类型，那么可以通过文件的扩展名来判断上传的文件类型是否合法
//                    System.out.println("上传文件的扩展名为:" + fileExtName);
//                    //获取item中的上传文件的输入流
//                    InputStream is = item.getInputStream();
//                    //得到文件保存的名称
//                   String fileName2 = UUID.randomUUID().toString() + "_" + fileName;
//                    //得到文件保存的路径
//                    String savePathStr = savePath + fileName2;
//                    //用户ID，随便先写一个
//                    String userID = "823164623@qq.com";
//                    i_index.setPath(userID, fileName , savePathStr, type);
//                    System.out.println("文件保存保存路径为:" + savePathStr);
//                    //创建一个文件输出流
//                    FileOutputStream fileOutputStream = new FileOutputStream(savePathStr);
//                    fileOutputStream.write(item.get());
//                    fileOutputStream.close();
//                    //删除处理文件上传时生成的临时文件
//                    //item.delete();
//                    message = "文件上传成功";
//                }
//            }
//        }catch (FileUploadBase.FileSizeLimitExceededException e) {
//            e.printStackTrace();
//            request.setAttribute("message", "单个文件超出最大值！！！");
//            //request.getRequestDispatcher("/message.jsp").forward(request, response);
//            return;
//        } catch (FileUploadBase.SizeLimitExceededException e) {
//            e.printStackTrace();
//            request.setAttribute("message", "上传文件的总的大小超出限制的最大值！！！");
//            //request.getRequestDispatcher("/message.jsp").forward(request, response);
//            return;
//        } catch (FileUploadException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//            message = "文件上传失败";
//        }
//        response.getWriter().println("上传成功");
//        response.getWriter().close();
    }
}
