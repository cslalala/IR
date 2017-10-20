package ssm.service;

import org.apache.commons.collections.map.HashedMap;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import java.io.File;
import java.util.*;

/**
 * Created by chensu on 2017/10/20.
 */
public class xmlAnalysis {

    List<String> processTagList = new ArrayList<String>();
    StringBuilder fileContent = new StringBuilder();
    String id;
    Map<String, String> ansMap = new HashMap<String, String>();

    public void processTag_process(String processTag){
        String[] processTags = processTag.split(",");
        for(int i = 0; i < processTags.length; i++){
            processTagList.add(processTags[i].trim());
        }
    }

    public void listNodes(Element node, String docTag, String idTag, int flag){
        if(node.hasMixedContent()){
            Iterator it = node.elementIterator();
            while(it.hasNext()){
                Element arrName = (Element) it.next();
                if(arrName.getName().toString().trim().equals(docTag)){
                    ansMap.put(id, fileContent.toString());
                    id = "";
                    fileContent.setLength(0);
                    listNodes(arrName, docTag, idTag, 0);
                }else if(processTagList.contains(arrName.getName())){
                    listNodes(arrName, docTag, idTag, 1);
                }else if(flag == 1){
                    listNodes(arrName, docTag, idTag, 1);
                }else{
                    listNodes(arrName, docTag, idTag, 0);
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

    public void processFile(String path, String docTag, String idTag){
        try{
            fileContent.setLength(0);
            SAXReader saxReader = new SAXReader();
            //saxReader.setValidation(false);
            File file = new File(path);
            //saxReader.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
            Document document = saxReader.read(file);
            Element root = document.getRootElement();
            if(root.getName().toString().trim().equals(docTag)){
                listNodes(root, docTag, idTag, 0);//flag的作用是，如果flag为1的话，说明当前标签以下的所有标签内容都需要，否则就不用
                // System.out.println(fileContent.toString());
            }else{
                System.out.println(path + "docTag is wrong");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public Map<String, String> analysisXML(String path, String docTag, String idTag, String processTag){
        processTag_process(processTag);
        processFile(path, docTag, idTag);
        return ansMap;
    }
}
