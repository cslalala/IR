package ssm.service.Indexing;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ssm.dao.User_IndexDao;
import ssm.dao.entity.indexDataInf;
import ssm.dao.entity.indexInf;
import ssm.service.I_Index;

import javax.annotation.Resource;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Enumeration;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * Created by chensu on 2017/9/26.
 */
@Service
@Transactional
public class Index implements I_Index {
    @Resource
    private User_IndexDao userIndexDao;
    static final int BUFFER = 2048;
    public String UnZip(String path){
        String savepath = path.substring(0, path.lastIndexOf(".")) ;
        //ur.setDocumentXMLPath(path.substring(0,path.lastIndexOf("."))+"\\"+"DocumentXML");
        //ur.setDocumentInfPath(path.substring(0,path.lastIndexOf("."))+"\\"+"DocumentInfPath");
        //ur.setIndexResultPath(path.substring(0,path.lastIndexOf("."))+"\\"+"IndexResultPath") ;
        try {
            ZipFile zipFile = new ZipFile(path);
            Enumeration emu = zipFile.entries();
            int i=0;
            while(emu.hasMoreElements()){
                ZipEntry entry = (ZipEntry)emu.nextElement();
                //会把目录作为一个file读出一次，所以只建立目录就可以，之下的文件还会被迭代到。
                if (entry.isDirectory()) {
                    new File(savepath + "\\" +  entry.getName()).mkdirs();
                    continue;
                }
                BufferedInputStream bis = new BufferedInputStream(zipFile.getInputStream(entry));
                File file = new File(savepath +"\\"+ entry.getName());
                //加入这个的原因是zipfile读取文件是随机读取的，这就造成可能先读取一个文件
                //而这个文件所在的目录还没有出现过，所以要建出目录来。
                File parent = file.getParentFile();
                if(parent != null && (!parent.exists())){
                    parent.mkdirs();
                }
                FileOutputStream fos = new FileOutputStream(file);
                BufferedOutputStream bos = new BufferedOutputStream(fos,BUFFER);

                int count;
                byte data[] = new byte[BUFFER];
                while ((count = bis.read(data, 0, BUFFER)) != -1)
                {
                    bos.write(data, 0, count);
                }
                bos.flush();
                bos.close();
                bis.close();
            }
            zipFile.close();
            return savepath;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "unzip failed";
    }

    public void addUser_IndexEntity(String userID, String indexID){
        String id = UUID.randomUUID().toString();
        userIndexDao.addUser_Index(id, userID, indexID);
    }

    public void addIndexDataInfEntity(indexDataInf indexdatainf){
        System.out.println("******************" + indexdatainf.getDataName() +" " + indexdatainf.getDataID());
        userIndexDao.addIndexDataInf(indexdatainf);
    }

    public void addIndexInfEntity(indexInf indexinf){
        System.out.println("********************"+ indexinf.getDataID()+" " + indexinf.getIndexDocInfPath());
        userIndexDao.addIndexInf(indexinf);
    }

    public void process(String dataSetPath, String docTag, String idTag, String processTag, String indexResultPath, String indexDocInfPath){
        //处理需要检索的标签的索引
        IndexGeneration indexgeneration = new IndexGeneration();
        indexgeneration.StopWords();
        indexgeneration.generateIndex(dataSetPath, docTag, idTag, processTag, indexResultPath, indexDocInfPath);
    }
}
