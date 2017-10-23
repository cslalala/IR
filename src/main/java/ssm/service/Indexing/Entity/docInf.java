package ssm.service.Indexing.Entity;

/**
 * Created by chensu on 2017/10/17.
 */
public class docInf {
    public int numberCont;
    public String savePath;
    public String summary;

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public int getNumberCont() {
        return numberCont;
    }

    public void setNumberCont(int numberCont) {
        this.numberCont = numberCont;
    }

    public String getSavePath() {
        return savePath;
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }

}
