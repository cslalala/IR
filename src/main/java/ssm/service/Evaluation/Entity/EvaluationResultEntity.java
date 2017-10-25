package ssm.service.Evaluation.Entity;

/**
 * Created by chensu on 17/10/25.
 */
public class EvaluationResultEntity {
    double p5;
    double p10;
    double p20;
    double p100;
    double p500;
    double p1000;
    double AP;
    double MAP;
    double NDCG;

    public double getP5() {
        return p5;
    }

    public void setP5(double p5) {
        this.p5 = p5;
    }

    public double getP10() {
        return p10;
    }

    public void setP10(double p10) {
        this.p10 = p10;
    }

    public double getP20() {
        return p20;
    }

    public void setP20(double p20) {
        this.p20 = p20;
    }

    public double getP100() {
        return p100;
    }

    public void setP100(double p100) {
        this.p100 = p100;
    }

    public double getP500() {
        return p500;
    }

    public void setP500(double p500) {
        this.p500 = p500;
    }

    public double getP1000() {
        return p1000;
    }

    public void setP1000(double p1000) {
        this.p1000 = p1000;
    }

    public double getAP() {
        return AP;
    }

    public void setAP(double AP) {
        this.AP = AP;
    }

    public double getMAP() {
        return MAP;
    }

    public void setMAP(double MAP) {
        this.MAP = MAP;
    }

    public double getNDCG() {
        return NDCG;
    }

    public void setNDCG(double NDCG) {
        this.NDCG = NDCG;
    }
}
