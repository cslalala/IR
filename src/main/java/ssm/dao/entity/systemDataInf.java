package ssm.dao.entity;

/**
 * Created by chensu on 17/10/5.
 */
public class systemDataInf {
    String dataName;
    String indexResultPath;
    String indexDocPath;
    String queryPath;

    public String getDataName() {
        return dataName;
    }

    public void setDataName(String dataName) {
        this.dataName = dataName;
    }

    public String getIndexResultPath() {
        return indexResultPath;
    }

    public void setIndexResultPath(String indexResultPath) {
        this.indexResultPath = indexResultPath;
    }

    public String getIndexDocPath() {
        return indexDocPath;
    }

    public void setIndexDocPath(String indexDocPath) {
        this.indexDocPath = indexDocPath;
    }

    public String getQueryPath() {
        return queryPath;
    }

    public void setQueryPath(String queryPath) {
        this.queryPath = queryPath;
    }
}
