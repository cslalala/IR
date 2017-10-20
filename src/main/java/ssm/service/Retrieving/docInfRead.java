package ssm.service.Retrieving;

import ssm.service.Indexing.Entity.docInf;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by chensu on 2017/10/20.
 */
public class docInfRead {
    Map<String, docInf> docInfMap = new HashMap<String, docInf>();

    public Map<String, docInf> readDocInf(File file){
        try{
            BufferedReader bufr = new BufferedReader(new FileReader(file));
            String s = "";
            while((s=bufr.readLine()) != null){
                String ss[] = s.split(" ");
                docInf docinf = new docInf();
                docinf.setNumberCont(Integer.parseInt(ss[1]));
                docinf.setSavePath(ss[2]);
                docInfMap.put(ss[0], docinf);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return  docInfMap;
    }
}
