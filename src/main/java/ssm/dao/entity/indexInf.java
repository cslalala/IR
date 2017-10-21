package ssm.dao.entity;

/**
 * Created by chensu on 2017/9/28.
 */
public class indexInf {

    /*对同一个数据集,因为选取建索引标签的不同,
    所以对于同一个数据集可能会有不同的索引*/

    String indexID;             //索引的唯一标识
    String dataID;              //数据集ID（针对哪个数据集的索引）
    String indexProcessTag; //需要建索引的标签
    String indexResultPath; //索引结果保存的地址
    String indexDocInfPath;//索引结果中的文档信息
    String indexIntegrationPath; //多个索引整合的结果

    public indexInf(String indexID, String dataID, String indexProcessTag, String indexResultPath, String indexDocInfPath, String indexInterationPath) {
        this.indexID = indexID;
        this.dataID = dataID;
        this.indexProcessTag = indexProcessTag;
        this.indexResultPath = indexResultPath;
        this.indexDocInfPath = indexDocInfPath;
        this.indexIntegrationPath = indexInterationPath;
    }

    public String getIndexIntegrationPath() {
        return indexIntegrationPath;
    }

    public void setIndexIntegrationPath(String indexIntegrationPath) {
        this.indexIntegrationPath = indexIntegrationPath;
    }

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
