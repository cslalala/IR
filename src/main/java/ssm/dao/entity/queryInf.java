package ssm.dao.entity;

/**
 * Created by chensu on 2017/9/28.
 */
public class queryInf {
    String retrieveResultID;    //每次检索结果都有一个ID
    String indexID;                 //对于哪一个索引的检索结果
    String queryID;                 //对于哪一个query的检索结果
    String queryProcessTag;     //进行检索的标签
    String queryModel;              //检索的模型
    String resultLength;            //返回结果的条数
    String resultPath;              //结果保存的地址

    public String getRetrieveResultID() {
        return retrieveResultID;
    }

    public void setRetrieveResultID(String retrieveResultID) {
        this.retrieveResultID = retrieveResultID;
    }

    public String getIndexID() {
        return indexID;
    }

    public void setIndexID(String indexID) {
        this.indexID = indexID;
    }

    public String getQueryID() {
        return queryID;
    }

    public void setQueryID(String queryID) {
        this.queryID = queryID;
    }

    public String getQueryProcessTag() {
        return queryProcessTag;
    }

    public void setQueryProcessTag(String queryProcessTag) {
        this.queryProcessTag = queryProcessTag;
    }

    public String getQueryModel() {
        return queryModel;
    }

    public void setQueryModel(String queryModel) {
        this.queryModel = queryModel;
    }

    public String getResultLength() {
        return resultLength;
    }

    public void setResultLength(String resultLength) {
        this.resultLength = resultLength;
    }

    public String getResultPath() {
        return resultPath;
    }

    public void setResultPath(String resultPath) {
        this.resultPath = resultPath;
    }
}
