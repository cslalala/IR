package ssm.service;

import ssm.dao.entity.queryDataInf;
import ssm.dao.entity.systemDataInf;

/**
 * Created by chensu on 17/10/5.
 */
public interface I_Retrieve {
    systemDataInf modeOne_Find(String dataName, String queryNo, String retrieveModel);
    String modeOne_Retrieve(systemDataInf systemdatainf);
    void addqueryDataInfEntity(queryDataInf querydatainf);
}
