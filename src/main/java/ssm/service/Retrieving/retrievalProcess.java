package ssm.service.Retrieving;

import ssm.dao.entity.indexInf;
import ssm.service.Data;
import ssm.service.Indexing.Entity.docInf;
import ssm.service.Indexing.Entity.word_doc;
import ssm.service.Indexing.PorterStemming;
import ssm.service.stopWordsRead;

import java.io.File;
import java.util.*;

/**
 * Created by chensu on 2017/10/20.
 */
public class retrievalProcess {
    public Map<String, word_doc> wordInfMap = new HashMap<String, word_doc>();
    public Map<String, docInf> docInfMap = new HashMap<String, docInf>();
    public Map<String, Map<String, docInf>> ansMap = new HashMap<String, Map<String, docInf>>();
    public Map<String, String>queryMap = new HashMap<String, String>();
    List<String> stopWordsList = new ArrayList<String>();
    stopWordsRead stopwordsread = new stopWordsRead();
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
                    wd.word_docMap
                }
            }
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
                if(weightModel.equals("TF-IDF")){
                   TF_IDF();
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
