package ssm.dao;

import org.springframework.stereotype.Component;
import ssm.dao.entity.systemDataInf;

/**
 * Created by chensu on 17/10/5.
 */
@Component
public interface User_RetrieveDao {
    systemDataInf find(String dataName);
}
