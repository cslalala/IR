package ssm.service.Indexing;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ssm.dao.UserDao;
import ssm.dao.User_IndexDao;
import ssm.dao.entity.User_IndexEntity;
import ssm.service.I_Index;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

/**
 * Created by chensu on 2017/9/26.
 */
@Service
@Transactional
public class Index implements I_Index {
    @Resource
    private User_IndexDao userIndexDao;
    User_IndexEntity user_indexEntity;
    public void setPath(String UserID, String fileName, String path, int type) {
        //设置query存放的路径
        if (type == 1) {
            System.out.println("********************************************");
            user_indexEntity.setUserID(UserID);
            user_indexEntity.setDataName(fileName);
            user_indexEntity.setIndexDataSetZIPPath(path);
            user_indexEntity.setIndexDataSetPath(path + UUID.randomUUID().toString() + "_DataSet");
            user_indexEntity.setIndexDataSetDivPath(path + UUID.randomUUID().toString() + "_DataSetDiv");
            user_indexEntity.setIndexResultPath(path + UUID.randomUUID().toString() + "_IndexResult");
            System.out.println(user_indexEntity.getUserID() + "　" + user_indexEntity.getDataName() + " " + user_indexEntity.getIndexDataSetZIPPath() + " " +
                    user_indexEntity.getIndexDataSetPath() + " " + user_indexEntity.getIndexDataSetDivPath() + " " + user_indexEntity.getIndexResultPath());
        }
       /* //设置要进行检索的标签
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
        userDao.
    }*/
    }
}
