package ssm.dao.entity;

/**
 * Created by chensu on 2017/9/18.
 */
/*接受数据库传来的数据*/
public class UserEntity {
    private String emailAddress;
    private String username;
    private String password;

    public UserEntity() {
    }

    public UserEntity(String emailAddress, String username, String password){
        this.emailAddress = emailAddress;
        this.username = username;
        this.password = password;
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