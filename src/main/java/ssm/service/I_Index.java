package ssm.service;

import ssm.dao.entity.indexDataInf;
import ssm.dao.entity.indexInf;

/**
 * Created by chensu on 2017/9/26.
 */
public interface I_Index {
    String UnZip(String path);
    void addUser_IndexEntity(String useID, String indexID);
    /*i_index.addIndexDataInfEntity(dataID, dataName, dataZipPath, dataSetPath, docTag, idTag);*/
    void addIndexDataInfEntity(indexDataInf indexdatainf);
    void addIndexInfEntity(indexInf indexinf);
    void process(String dataSetPath, String docTag, String idTag, String processTag, String indexResultPath, String indexDocInfPath);
}
