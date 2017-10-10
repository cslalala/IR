package ssm.dao.entity;

import org.terrier.utility.ApplicationSetup;

/**
 * Created by chensu on 2017/9/28.
 */
public class user_index {

    /*一个用户可能会上传不同的数据集*/

    String id;
    String userID;
    String dataID;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getDataID() {
        return dataID;
    }

    public void setDataID(String dataID) {
        this.dataID = dataID;
    }
}
