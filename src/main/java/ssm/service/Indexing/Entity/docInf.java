package ssm.service.Indexing.Entity;

/**
 * Created by chensu on 2017/10/17.
 */
public class docInf {
    public int numberCont;
    public String savePath;
    public double tf = 0;
    public double idf = 0;
    public double weight;

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

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getTf() {
        return tf;
    }

    public void setTf(double tf) {
        this.tf = tf;
    }

    public double getIdf() {
        return idf;
    }

    public void setIdf(double idf) {
        this.idf = idf;
    }
}
