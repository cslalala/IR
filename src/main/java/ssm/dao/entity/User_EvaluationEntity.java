package ssm.dao.entity;

/**
 * Created by chensu on 2017/9/26.
 */
public class User_EvaluationEntity {
    //Evaluation
    private String userID;      //用户的邮箱
    private String evaluationPath;                   //评测文件存放的位置
    private String evaluationResultPath;           //评测结果存放地址

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getEvaluationPath() {
        return evaluationPath;
    }

    public void setEvaluationPath(String evaluationPath) {
        this.evaluationPath = evaluationPath;
    }

    public String getEvaluationResultPath() {
        return evaluationResultPath;
    }

    public void setEvaluationResultPath(String evaluationResultPath) {
        this.evaluationResultPath = evaluationResultPath;
    }
}
