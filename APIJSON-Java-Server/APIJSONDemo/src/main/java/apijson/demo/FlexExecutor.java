package apijson.demo;

import apijson.Log;
import apijson.NotNull;
import apijson.framework.APIJSONController;
import apijson.framework.APIJSONCreator;
import apijson.framework.APIJSONFunctionParser;
import apijson.framework.APIJSONParser;
import apijson.framework.APIJSONSQLConfig;
import apijson.framework.APIJSONVerifier;
import apijson.orm.AbstractSQLExecutor;
import apijson.orm.SQLConfig;

import javax.sql.DataSource;
import java.rmi.ServerException;
import java.sql.Connection;

public class FlexExecutor extends AbstractSQLExecutor {
    public static final String TAG = "APIJSONSQLExecutor";
//    @Override
//    public Connection getConnection(SQLConfig config) throws Exception {
//        //		Log.d(TAG, "getConnection  config.getDatasource() = " + config.getDatasource());
//
//        String key = config.getDatasource() + "-" + config.getDatabase();
//        Connection c = connectionMap.get(key);
//        if (c == null || c.isClosed()) {
//            DataSource ds = DemoApplication.getApplicationContext().getBean(DataSource.class);
//            // 另一种方式是 DemoDataSourceConfig 初始化获取到 Datasource 后给静态变量 DATA_SOURCE 赋值： ds = DemoDataSourceConfig.DATA_SOURCE.getConnection();
//            connectionMap.put(key, ds == null ? null : ds.getConnection());
//        }
//
//        // 必须最后执行 super 方法，因为里面还有事务相关处理。
//        // 如果这里是 return c，则会导致 增删改 多个对象时只有第一个会 commit，即只有第一个对象成功插入数据库表
//        return super.getConnection(config);
//    }
}
