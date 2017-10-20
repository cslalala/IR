package ssm.service.Retrieving;

import ssm.service.Indexing.Entity.docInf;
import ssm.service.Indexing.Entity.word_doc;

import java.util.List;
import java.util.Map;

/**
 * Created by chensu on 2017/10/20.
 */
public interface I_retrieveModel {
    List<Map<String, docInf>> TF_IDF(Map<String, word_doc> wordInfMap, Map<String, docInf> docInfMap, Map<String, String> queryMap);
}
