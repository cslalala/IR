package ssm.service.Retrieving;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ssm.service.Indexing.Entity.docInf;
import ssm.service.Indexing.Entity.word_doc;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by chensu on 2017/10/20.
 */
@Service
@Transactional
public class retrieveModel implements I_retrieveModel {
    @Resource
    public List<Map<String, docInf>> ansList;
    public List<Map<String, docInf>> TF_IDF(Map<String, word_doc> wordInfMap, Map<String, docInf> docInfMap, Map<String, String> queryMap){

        return ;
    }
}
