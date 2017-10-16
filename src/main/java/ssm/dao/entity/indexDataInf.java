package ssm.dao.entity;

/**
 * Created by chensu on 2017/9/28.
 */
public class indexDataInf {
    String dataID;                           //每上传一次数据集,都会给数据集一个ID
    String dataName;                       //每次上传的数据集都会有一个数据集名称（显示给用户时的名称）
    String indexDataSetZIPPath;      //上传数据集的压缩文件地址
    String indexDataSetPath;            //数据集解压之后的地址
    /*String indexDataSetDivPath;       //数据集预处理之后的地址*/
    String indexDocTag;                   //数据集DOC的标志
    String indexIDTag;                    //数据集每一篇唯一的标识

    public indexDataInf(String dataID, String dataName, String indexDataSetZIPPath, String indexDataSetPath, String indexDocTag, String indexIDTag) {
        this.dataID = dataID;
        this.dataName = dataName;
        this.indexDataSetZIPPath = indexDataSetZIPPath;
        this.indexDataSetPath = indexDataSetPath;
        this.indexDocTag = indexDocTag;
        this.indexIDTag = indexIDTag;
    }

    public String getDataID() {
        return dataID;
    }

    public void setDataID(String dataID) {
        this.dataID = dataID;
    }

    public String getDataName() {
        return dataName;
    }

    public void setDataName(String dataName) {
        this.dataName = dataName;
    }

    public String getIndexDataSetZIPPath() {
        return indexDataSetZIPPath;
    }

    public void setIndexDataSetZIPPath(String indexDataSetZIPPath) {
        this.indexDataSetZIPPath = indexDataSetZIPPath;
    }

    public String getIndexDataSetPath() {
        return indexDataSetPath;
    }

    public void setIndexDataSetPath(String indexDataSetPath) {
        this.indexDataSetPath = indexDataSetPath;
    }

    /*public String getIndexDataSetDivPath() {
        return indexDataSetDivPath;
    }

    public void setIndexDataSetDivPath(String indexDataSetDivPath) {
        this.indexDataSetDivPath = indexDataSetDivPath;
    }
*/
    public String getIndexDocTag() {
        return indexDocTag;
    }

    public void setIndexDocTag(String indexDocTag) {
        this.indexDocTag = indexDocTag;
    }

    public String getIndexIDTag() {
        return indexIDTag;
    }

    public void setIndexIDTag(String indexIDTag) {
        this.indexIDTag = indexIDTag;
    }
}
