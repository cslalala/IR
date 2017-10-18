package ssm.dao;

import org.apache.ibatis.annotations.Param;
import ssm.dao.entity.indexDataInf;
import ssm.dao.entity.indexInf;

/**
 * Created by chensu on 2017/9/27.
 */
public interface User_IndexDao {
   /* void addData(String dataID, String )*/
    void addUser_Index(@Param("id") String id, @Param("userID")String userID, @Param("indexID") String indexID);
    void addIndexDataInf(indexDataInf indexdatainf);
    void addIndexInf(indexInf indexinf);
}
