package ssm.dao;

import ssm.dao.entity.indexDataInf;
import ssm.dao.entity.indexInf;

/**
 * Created by chensu on 2017/9/27.
 */
public interface User_IndexDao {
   /* void addData(String dataID, String )*/
    void addUser_Index(String id, String userID, String indexID);
    void addIndexDataInf(indexDataInf indexdatainf);
    void addIndexInf(indexInf indexinf);
}
