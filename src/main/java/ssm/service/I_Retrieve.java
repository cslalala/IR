package ssm.service;

import ssm.dao.entity.systemDataInf;

/**
 * Created by chensu on 17/10/5.
 */
public interface I_Retrieve {
    systemDataInf modeOne_Retrieve(String dataName, String queryNo, String retrieveModel);
}
