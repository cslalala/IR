package ssm.service.Indexing;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ssm.dao.User_IndexDao;
import ssm.service.I_Index;

import javax.annotation.Resource;

/**
 * Created by chensu on 2017/9/26.
 */
@Service
@Transactional
public class Index implements I_Index {
    @Resource
    private User_IndexDao userIndexDao;
    public void setPath(String UserID, String fileName, String path, int type) {
        //设置query存放的路径
        if (type == 1) {
            System.out.println("********************************************");
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
