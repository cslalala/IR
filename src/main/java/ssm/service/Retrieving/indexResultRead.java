package ssm.service.Retrieving;

import ssm.service.Indexing.Entity.word_doc;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by chensu on 2017/10/20.
 */
public class indexResultRead {
    Map<String, word_doc> wordInfMap = new HashMap<String, word_doc>();

    public Map<String, word_doc> readIndexResult(File file){
        try {
            BufferedReader bufr = new BufferedReader(new FileReader(file));
            String s = "";
            while((s=bufr.readLine()) != null){
                String ss[] = s.split(" ");
                if(!wordInfMap.containsKey(ss[0])){
                    word_doc wd = new word_doc();
                    List<Integer> pos = new ArrayList<Integer>();
                    for(int i = 2; i < ss.length; i++){
                        pos.add(Integer.parseInt(ss[i]));
                    }
                    wd.word_docMap.put(ss[1], pos);
                    wordInfMap.put(ss[0], wd);
                }else{
                    word_doc wd = wordInfMap.get(ss[0]);
                    List<Integer> pos = new ArrayList<Integer>();
                    for(int i = 2; i < ss.length; i++){
                        pos.add(Integer.parseInt(ss[i]));
                    }
                    wd.word_docMap.put(ss[1], pos);
                    wordInfMap.put(ss[0], wd);
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return wordInfMap;
    }
}
