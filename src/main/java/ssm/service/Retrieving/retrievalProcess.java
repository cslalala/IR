package ssm.service.Retrieving;

import javafx.beans.binding.DoubleExpression;
import org.apache.ibatis.annotations.Param;
import ssm.dao.entity.indexInf;
import ssm.service.Data;
import ssm.service.Indexing.Entity.docInf;
import ssm.service.Indexing.Entity.word_doc;
import ssm.service.Indexing.PorterStemming;
import ssm.service.Retrieving.Entity.weightEntity;
import ssm.service.stopWordsRead;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.*;

/**
 * Created by chensu on 2017/10/20.
 */
public class retrievalProcess {
    public Map<String, word_doc> wordInfMap = new HashMap<String, word_doc>();
    public Map<String, docInf> docInfMap = new HashMap<String, docInf>();
    public Map<String, weightEntity> ansMap = new HashMap<String, weightEntity>();//String为queryID, value为对应的docID和分数,
    public Map<String, Integer>wordCountMap = new HashMap<String, Integer>();
    public Map<String, String>queryMap = new HashMap<String, String>();
    List<String> stopWordsList = new ArrayList<String>();
    stopWordsRead stopwordsread = new stopWordsRead();
    int allFileCount;
    public void StopWords(){
        stopWordsList  = stopwordsread.readStopWords();
    }
    //对query的处理
    public void query_Process(){
        Set<String> set = queryMap.keySet();
        Iterator<String> it = set.iterator();
        while(it.hasNext()) {
            String queryID = it.next();
            String queryContent = queryMap.get(queryID);
            queryContent = queryContent.replaceAll(Data.regEx, " ").replace("\\", " ").replace("\n", " ").replace("\"", " ");
            String[] queryWords = queryContent.split(" ");
            String word = new String();
            StringBuilder temp = new StringBuilder();
            for (int i = 0; i < queryWords.length; i++){
                word = queryWords[i].trim().toLowerCase();
                if(word.length() <= 2) continue;
                if(stopWordsList.contains(word)) continue;
                PorterStemming ps = new PorterStemming();
                for(int t = 0; t < word.length(); t++){
                    ps.add(word.charAt(t));
                }
                word = ps.stem();
                temp.append(word);
            }
            queryMap.put(queryID, temp.toString());
        }
    }
    public void TF_IDF(){
        Set<String> set = queryMap.keySet();
        Iterator<String> it = set.iterator();
        while(it.hasNext()) {
            String queryID = it.next();
            String queryContent = queryMap.get(queryID);
            String[] queryWords = queryContent.split(" ");
            for(int i = 0; i < queryWords.length; i++){
                if(wordInfMap.containsKey(queryWords[i])){
                    word_doc wd = wordInfMap.get(queryWords[i]);
                    Set<String> set2 = wd.word_docMap.keySet(); // //String 为docID, list里面为位置
                    Iterator<String> it2 = set2.iterator();
                    while(it2.hasNext()){
                        String docID = it2.next();
                        docInf docinf = docInfMap.get(docID);
                        if(ansMap.containsKey(queryID)) {
                            weightEntity we = ansMap.get(queryID);
                            if(we.weightMap.containsKey(docID)){
                                double tt = we.weightMap.get(docID);
                                tt += (wd.word_docMap.get(docID).size()/docinf.getNumberCont()*1.0)*Math.log(allFileCount/wordCountMap.get(queryWords[i])*1.0);
                                we.weightMap.put(docID, tt);
                                ansMap.put(queryID, we);
                            }else{
                                double tt = (wd.word_docMap.get(docID).size()/docinf.getNumberCont()*1.0)*Math.log(allFileCount/wordCountMap.get(queryWords[i])*1.0);
                                we.weightMap.put(docID, tt);
                                ansMap.put(queryID, we);
                            }
                        }else{

                        }
                    }
                }
            }
        }
    }

    public void readWordCount(String path){
        try {
            BufferedReader bufr = new BufferedReader(new FileReader(new File(path)));
            String s = "";
            while((s=bufr.readLine()) != null){
                String[] ss = s.split(" ");
                wordCountMap.put(ss[0], Integer.parseInt(ss[1]));
                allFileCount = Integer.parseInt(ss[2]);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public String process( indexInf indexinf, Map<String, String>qM,String weightModel, int returnCount, String resultPath){
        queryMap = qM;
        //读取index的内容
        File file = new File(indexinf.getIndexResultPath());
        File fileList[] = file.listFiles();
        File file_doc = new File(indexinf.getIndexDocInfPath());
        File file_docList[] = file_doc.listFiles();
        try{
            for(int i = 0; i < fileList.length; i++){
                indexResultRead indexreultread  = new indexResultRead();
                wordInfMap = indexreultread.readIndexResult(fileList[i]);
                docInfRead docinfread = new docInfRead();
                docInfMap = docinfread.readDocInf(file_docList[i]);
                StopWords();
                query_Process();
                readWordCount(indexinf.getIndexIntegrationPath());
                if(weightModel.equals("TF-IDF")){
                   TF_IDF();
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return "";
    }
}
