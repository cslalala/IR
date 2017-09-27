package ssm.dao;

import org.apache.ibatis.annotations.Param;
import ssm.dao.entity.User_IndexEntity;

/**
 * Created by chensu on 2017/9/27.
 */
public interface User_IndexDao {
    boolean addUser_Index(User_IndexEntity user_indexEntity);
    boolean update_dataName(@Param("UserID") String UserID, @Param("dataName") String dataName);
    boolean upadate_indexDataSetZIPPath(@Param("UserID") String UserID, @Param("indexDataSetZIPPath") String indexDataSetZIPPath);
    boolean upadate_indexDataSetPath(@Param("UserID") String UserID, @Param("indexDataSetPath") String indexDataSetPath);
    boolean upadate_indexDataSetDivPath(@Param("UserID") String UserID, @Param("indexDataSetDivPath") String indexDataSetDivPath);
    boolean upadate_indexResultPath(@Param("UserID") String UserID, @Param("indexResultPath") String indexResultPath);
    boolean upadate_indexDocInfPath(@Param("UserID") String UserID, @Param("indexDocInfPath") String indexDocInfPath);
    boolean upadate_indexDocTag(@Param("UserID") String UserID, @Param("indexDocTag") String indexDocTag);
    boolean upadate_indexIDTag(@Param("UserID") String UserID, @Param("indexIDTag") String indexIDTag);
    boolean upadate_indexProcessTag(@Param("UserID") String UserID, @Param("indexProcessTag") String indexProcessTag);
}
