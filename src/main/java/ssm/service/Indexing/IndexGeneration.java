package ssm.service.Indexing;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import ssm.service.Data;
import ssm.service.Indexing.Entity.docInf;
import ssm.service.Indexing.Entity.word_doc;
import ssm.service.stopWordsRead;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.*;

/**
 * Created by chensu on 2017/10/17.
 */
public class IndexGeneration {
    //读取stopwords
    List<String> stopWordsList = new ArrayList<String>();
    stopWordsRead stopwordsread = new stopWordsRead();
    List<String> docPathList = new ArrayList<String>();
    List<String> processTagList = new ArrayList<String>();
    Map<String, word_doc> wordInfMap = new HashMap<String, word_doc>();
    Map<String, docInf> docInfMap = new HashMap<String, docInf>();
    StringBuilder fileContent = new StringBuilder();
    String id = new String(); // file的idtag的值
    int indexResultFileCount = 0;
    public void StopWords(){
        stopWordsList  = stopwordsread.readStopWords();
    }

    public void readDocPath(String dataSetPath){
        File file = new File(dataSetPath);
        if(file.isDirectory()){
            File[] fileList = file.listFiles();
            for(File fileTemp: fileList){
                if(dataSetPath.endsWith("_MACOSX")){
                    continue;
                }
                readDocPath(dataSetPath + "\\" + fileTemp.getName());
            }
        }else{
            docPathList.add(dataSetPath);
        }
    }

    //遍历当前节点下的所有节点
    public void listNodes(Element node, String idTag, int flag){
        if(node.hasMixedContent()){
            Iterator it = node.elementIterator();
            while(it.hasNext()){
                Element arrName = (Element) it.next();
                if(processTagList.contains(arrName.getName())){
                    listNodes(arrName, idTag, 1);
                }else if(flag == 1){
                    listNodes(arrName, idTag, 1);
                }else{
                    listNodes(arrName, idTag, 0);
                }
            }
        }else{
            if(node.getName().equals(idTag.trim())){
                id = node.getTextTrim();
            }else if(processTagList.contains(node.getName().trim())){
                fileContent.append(node.getTextTrim() + " ");
            }else if(flag == 1){
                fileContent.append(node.getTextTrim() + " ");
            }
        }
    }

    //对抽取的数据建索引
    public void indexing(String path){
        String content = fileContent.toString();
        content = content.replaceAll(Data.regEx, " ").replace("\n", " ").replace("\\", " ").replace("\"", " ");
        String docWord[] = content.split(" ");
        int word_cont = 0; //记录文档中有多少的单词
        String word = new String();
        for(int i = 0; i < docWord.length; i++){
            word = docWord[i].trim().toLowerCase();
            if(word.length() <= 2) continue;
            if(stopWordsList.contains(word)) continue;
            PorterStemming ps = new PorterStemming();
            for(int t = 0; t < word.length(); t++){
                ps.add(word.charAt(t));
            }
            //System.out.print(word);
            word = ps.stem();
            //System.out.println(" " + word);
            word_cont += 1;
            if(!wordInfMap.containsKey(word)){
                word_doc wd = new word_doc();
                List<Integer> ll = new ArrayList<Integer>();
                ll.add(i);
                wd.word_docMap.put(id, ll);
                wordInfMap.put(word, wd);
            }else{
                word_doc wd = wordInfMap.get(word);
                //如果单词里面已经包含了某个文章ID
                if(wd.word_docMap.containsKey(id)){
                    List<Integer> ll = wd.word_docMap.get(id);
                    ll.add(i);
                    wd.word_docMap.put(id, ll);
                }else{
                    List<Integer> ll = new ArrayList<Integer>();
                    ll.add(i);
                    wd.word_docMap.put(id, ll);
                }
                wordInfMap.put(word, wd);
            }
        }
        //
        docInf docinf = new docInf();
        docinf.numberCont = word_cont;
        docinf.savePath = path;
        docInfMap.put(id, docinf);
    }
    public void processFile(String path, String docTag, String idTag, String processTag){
        try{
            fileContent.setLength(0);
            SAXReader saxReader = new SAXReader();
            //saxReader.setValidation(false);
            File file = new File(path);
            //saxReader.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
            Document document = saxReader.read(file);
            Element root = document.getRootElement();
            if(root.getName().toString().trim().equals(docTag)){
                listNodes(root, idTag, 0);//flag的作用是，如果flag为1的话，说明当前标签以下的所有标签内容都需要，否则就不用
               // System.out.println(fileContent.toString());
                indexing(path);
            }else{
                System.out.println(path + "docTag is wrong");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void processTag_process(String processTag){
        String[] processTags = processTag.split(",");
        for(int i = 0; i < processTags.length; i++){
            processTagList.add(processTags[i].trim());
        }
    }

    public void writeTofile(String indexResultPath, String indexDocInf){
        try {
            indexResultFileCount += 1;
            OutputStreamWriter pw = new OutputStreamWriter(new FileOutputStream(indexResultPath + "\\" + indexResultFileCount), "GBK");
            Set<String> set = wordInfMap.keySet();
            System.out.println("*********************" +wordInfMap.size());
            Iterator<String> it = set.iterator();
            StringBuilder sb = new StringBuilder();
            while(it.hasNext()){
                String word = (String) it.next();
                word_doc wd = wordInfMap.get(word);
                Set<String> set2 = wd.word_docMap.keySet();
                Iterator<String> it2 = set2.iterator();
                while(it2.hasNext()){
                    String docid = (String)it2.next();
                    List<Integer> ll = wd.word_docMap.get(docid);
                    sb.append(word+" " + docid + " " + ll.size());
                    for(int j = 0; j < ll.size(); j++){
                        sb.append(" "+ll.get(j));
                    }
                    sb.append("\r\n");
                }
            }

            pw.write(sb.toString());
            pw.close();
            OutputStreamWriter pw2 = new OutputStreamWriter(new FileOutputStream(indexDocInf + "\\" + indexResultFileCount), "GBK");
            Set<String> set3 = docInfMap.keySet();
            Iterator it3 = set3.iterator();
            StringBuilder sb2 = new StringBuilder();
            while(it3.hasNext()){
                String docid = (String)it3.next();
                docInf docinf = docInfMap.get(docid);
                sb2.append(docid + " " + docinf.numberCont + " " + docinf.savePath + "\r\n");
            }
            pw2.write(sb2.toString());
            pw2.close();
            docInfMap.clear();
            wordInfMap.clear();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void generateIndex(String dataPath, String docTag, String idTag, String processTag, String indexResultPath, String indexDocInf){
        readDocPath(dataPath);
        processTag_process(processTag);
        int cont = 0;
        try{
            File file = new File(indexResultPath);
            if(!file.exists()){
                file.mkdir();
            }
            file = new File(indexDocInf);
            if(!file.exists()){
                file.mkdir();
            }
            for(int i = 0; i < docPathList.size(); i++){
                if(docPathList.get(i).toString().endsWith(".DS_Store")){
                    continue;
                }
                processFile(docPathList.get(i), docTag, idTag, processTag);
                cont ++;
                if(cont == 3000){
                    writeTofile(indexResultPath, indexDocInf);
                    cont = 0;
                }
            }
            if(cont > 0){
                writeTofile(indexResultPath, indexDocInf);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
