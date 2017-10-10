package ssm.dao.entity;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by chensu on 2017/9/18.
 */
/*接受数据库传来的数据*/
public class UserEntity {
    private String userID;
    private String emailAddress;
    private String username;
    private String password;
    private String validation ="-1";

    public UserEntity() {
    }


    public UserEntity(String userID, String emailAddress, String username, String password){
        this.userID = userID;
        this.emailAddress = emailAddress;
        this.username = username;
        this.password = password;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getValidation() {
        return validation;
    }

    public void setValidation(String validation) {
        this.validation = validation;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getName() {
        return username;
    }

    public void setName(String name) {
        this.username = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) { this.password = password; }
}
