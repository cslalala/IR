package ssm.service.Evaluation;

import ssm.service.Evaluation.Entity.EvaluationEntity;
import ssm.service.Evaluation.Entity.EvaluationResultEntity;
import ssm.service.I_Evaluate;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.List;
import java.util.Map;

/**
 * Created by chensu on 17/10/25.
 */
public class Evaluate implements I_Evaluate {
    public String evaluating(String retrieveResultPath, String evaluationFilePath){
        evaluationFileRead evaluationfileread = new evaluationFileRead();
        EvaluationResultEntity ere = new EvaluationResultEntity();
        Map<String, List<EvaluationEntity>> queryEvaluationMap = evaluationfileread.readEvaluationFile(evaluationFilePath);
        BufferedReader bufr = null;
        try{
            bufr = new BufferedReader(new FileReader(new File(retrieveResultPath)));
            String s = "";
            s = bufr.readLine();
            if(s != null){
                String[] ss = s.split(" ");
                String queryID = ss[0];
                List<EvaluationEntity> list = queryEvaluationMap.get(ss[0]);
                while((s=bufr.readLine()) != null){
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                if(bufr!=null){
                    bufr.close();
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }
}
