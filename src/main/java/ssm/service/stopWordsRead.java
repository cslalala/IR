package ssm.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by chensu on 2017/10/17.
 */
public class stopWordsRead {
    public static List<String> readStopWords(){
        List<String> stopwordsList = new ArrayList<String>();
        try{
            File file = new File(Data.stopWordPath);
            System.out.println("***********"+Data.stopWordPath);
            FileReader fr = new FileReader(file);
            BufferedReader bufr = new BufferedReader(fr);
            String s = new String();
            while ((s = bufr.readLine()) != null) {
                stopwordsList.add(s.trim());
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("**********stopWords read done");
        return stopwordsList;
    }
}
