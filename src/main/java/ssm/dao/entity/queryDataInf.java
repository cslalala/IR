package ssm.dao.entity;

/**
 * Created by chensu on 2017/9/28.
 */
public class queryDataInf {
    String queryID;
    String indexID;
    String queryName;
    String queryPath;
    String queryDocTag;
    String queryIDTag;

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
