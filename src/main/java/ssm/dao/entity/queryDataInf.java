package ssm.dao.entity;

/**
 * Created by chensu on 2017/9/28.
 */
public class queryDataInf {
    String queryID;         //每次上传的query都有一个ID
    String indexID;         //query对不同的index的检索,索引需要indexID
    String queryName;      //上传的query都有一个名称（也是显示给用户看的时候的名字）
    String queryPath;       //上传query的保存地址
    String queryDocTag;     //上传query的DOC标签
    String queryIDTag;      //上传查询的唯一标识

    public queryDataInf(String queryID, String indexID, String queryName, String queryPath, String queryDocTag, String queryIDTag) {
        this.queryID = queryID;
        this.indexID = indexID;
        this.queryName = queryName;
        this.queryPath = queryPath;
        this.queryDocTag = queryDocTag;
        this.queryIDTag = queryIDTag;
    }

    public String getQueryID() {
        return queryID;
    }

    public void setQueryID(String queryID) {
        this.queryID = queryID;
    }

    public String getIndexID() {
        return indexID;
    }

    public void setIndexID(String indexID) {
        this.indexID = indexID;
    }

    public String getQueryName() {
        return queryName;
    }

    public void setQueryName(String queryName) {
        this.queryName = queryName;
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
}
