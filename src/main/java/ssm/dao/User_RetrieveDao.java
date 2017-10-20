package ssm.dao;

import org.springframework.stereotype.Component;
import ssm.dao.entity.indexInf;
import ssm.dao.entity.queryDataInf;
import ssm.dao.entity.queryInf;
import ssm.dao.entity.systemDataInf;

/**
 * Created by chensu on 17/10/5.
 */
@Component
public interface User_RetrieveDao {
    systemDataInf find(String dataName);

    void addqueryDataInf(queryDataInf querydatainf);
    void addqueryInf(queryInf queryinf);
    indexInf findindexInf(String indexID);
}
