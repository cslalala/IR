package ssm.controller;

import net.sf.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ssm.dao.entity.*;
import ssm.entity.UploadParam;
import ssm.service.I_Evaluate;
import ssm.service.I_Index;
import ssm.service.I_Retrieve;
import ssm.service.UserLogin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * Created by chensu on 17/9/7.
 */
@Controller
public class UserController extends BaseController {
    @Resource
    private UserLogin userLogin;
    @Resource
    private I_Index i_index;
    @Resource
    private I_Retrieve i_retrieve;
    @Resource
    private I_Evaluate i_evaluate;
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
    public String uploadData(MultipartFile uploadFile, HttpServletRequest request) throws IOException {
        try{
            String fileName = uploadFile.getOriginalFilename();
            System.out.println("****************" + "fileName:" + fileName);
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
    /*username: $("#log_state").val(), dataZipPath: $("#dataZipPath").val(), docTag: $("#IndexDocTag").val(), idTag:$("#IndexIDTag"), processTag:$("#IndexProcessTag")*/
    public String indexing(String username, String dataZipPath, String docTag, String idTag, String processTag){
        System.out.println("dataZipPath: "+dataZipPath);
        String dataSetPath = i_index.UnZip(dataZipPath);
        //更新user_index表
        String indexID = UUID.randomUUID().toString();
        i_index.addUser_IndexEntity(username, indexID);

        //更新indexDataInf表
        String dataID = UUID.randomUUID().toString();
        String dataName = dataZipPath.substring(dataZipPath.lastIndexOf("_")+1);
        indexDataInf indexdatainf = new indexDataInf(dataID, dataName, dataZipPath, dataSetPath, docTag, idTag);
        System.out.println("***************" + indexdatainf.getDataID()+" " + indexdatainf.getDataName());
        i_index.addIndexDataInfEntity(indexdatainf);

        //更新indexInf表
        String indexResultPath = dataSetPath + "_" + "indexResult";
        String indexDocInfPath = dataSetPath + "_" + "indexDocInf";
        String indexIntegrationPath = dataSetPath + "_" + "indexIntegration";
        indexInf indexinf = new indexInf(indexID, dataID, processTag, indexResultPath, indexDocInfPath, indexIntegrationPath);
        i_index.addIndexInfEntity(indexinf);

        i_index.process(dataSetPath, docTag, idTag, processTag, indexResultPath, indexDocInfPath, indexIntegrationPath);
        return indexID;
    }


    /*模式三, 检索*/
    @ResponseBody
    @RequestMapping("/modeTh_retrieval")
    public String modeTh_retrieval(String indexDataID, String queryDataPath, String weightModel, String docTag, String idTag, String processTag, int retuernCount){
        List<DataEntity> dataEntityList = new ArrayList<DataEntity>();
        //更新queryDataInf表
        String queryID = UUID.randomUUID().toString();
        String queryName = queryDataPath.substring(queryDataPath.lastIndexOf("_")+1);
        System.out.println("************" + "queryName:" + queryName);
        System.out.println("************" + "queryDataPath" + queryDataPath);
        queryDataInf querydatainf = new queryDataInf(queryID, indexDataID, queryName, queryDataPath, docTag, idTag);
        i_retrieve.addqueryDataInfEntity(querydatainf);

        //更新queryInf表
        String retrieveResultID = UUID.randomUUID().toString();
        String resultPath = queryDataPath.substring(0, queryDataPath.lastIndexOf(".")) + UUID.randomUUID().toString() + "_resultPath";
        queryInf queryinf = new queryInf(retrieveResultID, indexDataID, queryID, processTag, weightModel, retuernCount, resultPath);
        i_retrieve.addqueryInfEntity(queryinf);

        i_retrieve.retrieving(indexDataID, queryDataPath, docTag, idTag, processTag, weightModel, retuernCount, resultPath);
        try{
            BufferedReader bufr = new BufferedReader(new FileReader(new File(resultPath)));
            String s = null;
            while((s = bufr.readLine())!= null){
                String[] ss = s.split(" ");
                StringBuilder temp = new StringBuilder();
                for(int i = 6; i <ss.length; i++){
                    temp.append(ss[i] + " ");
                }
                DataEntity de = new DataEntity();
                de.setTitle(ss[1]);
                de.setUrl(ss[4]);
                de.setDescription(temp.toString());
                dataEntityList.add(de);
            }
            JSONArray jsonArray = JSONArray.fromObject(dataEntityList);
            String ans = jsonArray.toString();
            return ans;
        }catch (Exception e){
            e.printStackTrace();
        }
        return "";
    }

     /*模式三, 点击title,跳转链接*/
    @ResponseBody
    @RequestMapping("/getFile")
    public void getFile(String filepath,HttpServletResponse response){

        response.setContentType("text/html");
        BufferedReader bufr =null;
        PrintWriter writer = null;
        try {
             bufr = new BufferedReader(new FileReader(new File(filepath)));
             writer = response.getWriter();
            String s = "";
            while((s=bufr.readLine()) != null){
                writer.append(s);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(writer!=null) {
                writer.close();
            }
            try {
                if(bufr!=null){
                    bufr.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /*模式三, 评测*/
    @ResponseBody
    @RequestMapping("/evaluate")
    public String evaluate(String retrieveResultPath, String evaluationFilePath){

    }

}
