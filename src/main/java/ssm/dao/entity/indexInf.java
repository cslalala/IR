package ssm.dao.entity;

/**
 * Created by chensu on 2017/9/28.
 */
public class indexInf {
    String indexID;
    String dataID;
    String indexProcessTag;
    String indexResultPath;
    String indexDocInfPath;

    public String getIndexID() {
        return indexID;
    }

    public void setIndexID(String indexID) {
        this.indexID = indexID;
    }

    public String getDataID() {
        return dataID;
    }

    public void setDataID(String dataID) {
        this.dataID = dataID;
    }

    public String getIndexProcessTag() {
        return indexProcessTag;
    }

    public void setIndexProcessTag(String indexProcessTag) {
        this.indexProcessTag = indexProcessTag;
    }

    public String getIndexResultPath() {
        return indexResultPath;
    }

    public void setIndexResultPath(String indexResultPath) {
        this.indexResultPath = indexResultPath;
    }

    public String getIndexDocInfPath() {
        return indexDocInfPath;
    }

    public void setIndexDocInfPath(String indexDocInfPath) {
        this.indexDocInfPath = indexDocInfPath;
    }
}
