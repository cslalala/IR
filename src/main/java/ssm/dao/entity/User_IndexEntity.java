package ssm.dao.entity;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by chensu on 2017/9/26.
 */
public class User_IndexEntity {
    //Index
    private String userID;
    private String dataName;                          //数据集名称
    private String indexDataSetZIPPath;          //数据集压缩文件的地址
    private String indexDataSetPath;              //数据集解压之后的地址
    private String indexDataSetDivPath;          //数据集进行处理之后的地址（分割）
    private String indexDocTag;                      //数据集中每一篇的标签
    private String indexIDTag;                       //数据集每一篇的ID
    private String indexProcessTag; //需要建索引的标签
    private String indexResultPath;                  //索引结果存放地址

    public User_IndexEntity(){

    }
    public String getDataName() {
        return dataName;
    }

    public void setDataName(String dataName) {
        this.dataName = dataName;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
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

    public String getIndexDataSetDivPath() {
        return indexDataSetDivPath;
    }

    public void setIndexDataSetDivPath(String indexDataSetDivPath) {
        this.indexDataSetDivPath = indexDataSetDivPath;
    }

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
}
