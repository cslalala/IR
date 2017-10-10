package ssm.service.Retrieving;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ssm.dao.User_RetrieveDao;
import ssm.dao.entity.systemDataInf;
import ssm.service.I_Retrieve;

import javax.annotation.Resource;

/**
 * Created by chensu on 17/10/5.
 */
@Service
@Transactional
public class User_retrieving implements I_Retrieve{
    @Resource
    private User_RetrieveDao user_retrieveDao;
    public systemDataInf modeOne_Find(String dataName, String queryNo, String retrieveModel){
        return user_retrieveDao.find(dataName);
    }

    public String modeOne_Retrieve(systemDataInf systemdatainf){
        String indexResultPath = systemdatainf.getIndexResultPath();
        String indexDocPath = systemdatainf.getIndexDocPath();
        String queryPath = systemdatainf.getQueryPath();
        return "";
    }
}
