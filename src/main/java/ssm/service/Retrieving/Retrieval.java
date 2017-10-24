package ssm.service.Retrieving;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ssm.dao.User_RetrieveDao;
import ssm.dao.entity.indexInf;
import ssm.dao.entity.queryDataInf;
import ssm.dao.entity.queryInf;
import ssm.dao.entity.systemDataInf;
import ssm.service.I_Retrieve;
import ssm.service.Indexing.Entity.docInf;
import ssm.service.Indexing.Entity.word_doc;
import ssm.service.xmlAnalysis;

import javax.annotation.Resource;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.*;

/**
 * Created by chensu on 17/10/5.
 */
@Service
@Transactional
public class Retrieval implements I_Retrieve{
    @Resource
    private User_RetrieveDao user_retrieveDao;
    public systemDataInf modeOne_Find(String dataName, String queryNo, String retrieveModel){
        return user_retrieveDao.find(dataName);
    }

    public String modeOne_Retrieve(systemDataInf systemdatainf){
        String indexResultPath = systemdatainf.getIndexResultPath();
        String indexDocPath = systemdatainf.getIndexDocPath();
        String queryPath = systemdatainf.getQueryPath();
        return "";
    }

    public void addqueryDataInfEntity(queryDataInf querydatainf){
        user_retrieveDao.addqueryDataInf(querydatainf);
    }

    public void addqueryInfEntity(queryInf queryinf){
        user_retrieveDao.addqueryInf(queryinf);
    }
    public void retrieving(String indexDataID, String queryDataPath, String docTag, String idTag, String processTag, String weightModel, int returnCount, String resultPath){
        //解析xml文档
        xmlAnalysis xmlanalysis = new xmlAnalysis();
        Map<String, String> queryMap = xmlanalysis.analysisXML(queryDataPath, docTag, idTag, processTag);
        System.out.println("******************queryMapSize: " + queryMap.size());

        //获得index的地址
        indexInf indexinf = user_retrieveDao.findindexInf(indexDataID);
        System.out.println("***************indexinf: " + indexinf.getIndexResultPath() + " " + indexinf.getIndexDocInfPath() + " " + indexinf.getIndexIntegrationPath());
        retrievalProcess rp = new retrievalProcess();
        rp.process(indexinf, queryMap, weightModel, returnCount, resultPath);
    }
}
