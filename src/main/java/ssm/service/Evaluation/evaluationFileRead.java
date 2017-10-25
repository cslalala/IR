package ssm.service.Evaluation;

import ssm.service.Evaluation.Entity.EvaluationEntity;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by chensu on 17/10/25.
 */
public class evaluationFileRead {
    public Map<String, List<EvaluationEntity>> readEvaluationFile(String path){
        BufferedReader bufr = null;
        Map<String, List<EvaluationEntity>> queryEvaluationMap = new HashMap<String, List<EvaluationEntity>>();
        try {
            bufr = new BufferedReader(new FileReader(new File(path)));
            String s = "";
            while((s=bufr.readLine()) != null){
                String[] ss = s.split(" ");
                if(!queryEvaluationMap.containsKey(ss[0])){
                    List<EvaluationEntity> list = new ArrayList<EvaluationEntity>();
                    EvaluationEntity ee = new EvaluationEntity();
                    ee.setDocID(ss[1]);
                    ee.setPos(Integer.parseInt(ss[2]));
                    list.add(ee);
                    queryEvaluationMap.put(ss[0], list);
                }else{
                    List<EvaluationEntity> list = queryEvaluationMap.get(ss[0]);
                    EvaluationEntity ee = new EvaluationEntity();
                    ee.setDocID(ss[1]);
                    ee.setPos(Integer.parseInt(ss[2]));
                    list.add(ee);
                    queryEvaluationMap.put(ss[0], list);
                }
            }
            return queryEvaluationMap;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try {
                if(bufr != null){
                    bufr.close();
                }
            }catch (Exception p){
                p.printStackTrace();
            }
        }
        return  queryEvaluationMap;
    }
}
