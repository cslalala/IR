package ssm.dao.entity;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by chensu on 2017/9/26.
 */
public class User_RetrieveEntity {
    //Retrieve
    private String userID;
    private String dataName;                        //数据集名称
    private String queryPath;                          // query存放的地址
    private String queryDocTag;                      //query中每一个query的标签
    private String queryIDTag;                       //query的ID
    private String queryProcessTag ; //进行检索的query的标签
    private String queryModel;        //检索模型名称
    private int retrieveResultLength;                // 对于每一个query返回的结果数量
    private String retrieveResultPath;               //检索结果存放的地址

    public String getDataName() {
        return dataName;
    }

    public void setDataName(String dataName) {
        this.dataName = dataName;
    }

    public String getQueryModel() {
        return queryModel;
    }

    public void setQueryModel(String queryModel) {
        this.queryModel = queryModel;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getQueryPath() {
        return queryPath;
    }

    public void setQueryPath(String queryPath) {
        this.queryPath = queryPath;
    }

    public String getQueryDocTag() {
        return queryDocTag;
    }

    public void setQueryDocTag(String queryDocTag) {
        this.queryDocTag = queryDocTag;
    }

    public String getQueryIDTag() {
        return queryIDTag;
    }

    public void setQueryIDTag(String queryIDTag) {
        this.queryIDTag = queryIDTag;
    }

    public String getQueryProcessTag() {
        return queryProcessTag;
    }

    public void setQueryProcessTag(String queryProcessTag) {
        this.queryProcessTag = queryProcessTag;
    }

    public int getRetrieveResultLength() {
        return retrieveResultLength;
    }

    public void setRetrieveResultLength(int retrieveResultLength) {
        this.retrieveResultLength = retrieveResultLength;
    }

    public String getRetrieveResultPath() {
        return retrieveResultPath;
    }

    public void setRetrieveResultPath(String retrieveResultPath) {
        this.retrieveResultPath = retrieveResultPath;
    }
}
