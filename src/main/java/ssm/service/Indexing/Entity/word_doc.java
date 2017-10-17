package ssm.service.Indexing.Entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by chensu on 2017/10/17.
 */
public class word_doc {
    //String 为docID, list里面为位置
    public Map<String, List<Integer>> word_docMap = new HashMap<String, List<Integer>>();
}
