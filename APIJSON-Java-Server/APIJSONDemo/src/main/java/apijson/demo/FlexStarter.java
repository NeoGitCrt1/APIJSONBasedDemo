package apijson.demo;

import apijson.Log;
import apijson.NotNull;
import apijson.framework.APIJSONController;
import apijson.framework.APIJSONCreator;
import apijson.framework.APIJSONFunctionParser;
import apijson.framework.APIJSONParser;
import apijson.framework.APIJSONSQLConfig;
import apijson.framework.APIJSONVerifier;

import java.rmi.ServerException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FlexStarter {

    public static final String TAG = "APIJSONApplication";

    @NotNull
    public static APIJSONCreator<? extends Object> DEFAULT_APIJSON_CREATOR;
    static {
        DEFAULT_APIJSON_CREATOR = new APIJSONCreator<>();
    }


    /**初始化，加载所有配置并校验
     * @return
     * @throws Exception
     */
    public static void init() throws Exception {
        init(true, DEFAULT_APIJSON_CREATOR);
    }
    /**初始化，加载所有配置并校验
     * @param shutdownWhenServerError
     * @return
     * @throws Exception
     */
    public static void init(boolean shutdownWhenServerError) throws Exception {
        Log.DEBUG = true;
//        Log.DEBUG = Logger.getGlobal().isLoggable(Level.CONFIG);
        init(shutdownWhenServerError, DEFAULT_APIJSON_CREATOR);
    }
    /**初始化，加载所有配置并校验
     * @param creator
     * @return
     * @throws Exception
     */
    public static <T extends Object> void init(@NotNull APIJSONCreator<T> creator) throws Exception {
        init(true, creator);
    }
    /**初始化，加载所有配置并校验
     * @param shutdownWhenServerError
     * @param creator
     * @return
     * @throws Exception
     */
    public static <T extends Object> void init(boolean shutdownWhenServerError, @NotNull APIJSONCreator<T> creator) throws Exception {
        Log.i(TAG,"APIJSON 开始启动 >>>>>>>>>>>>>>>>>>>>>>>>" );

        DEFAULT_APIJSON_CREATOR = creator;

        // 统一用同一个 creator
        APIJSONSQLConfig.APIJSON_CREATOR = creator;
        APIJSONParser.APIJSON_CREATOR = creator;

        Log.i(TAG,"开始初始化: Access 权限校验配置 <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" );
        try {
            APIJSONVerifier.initAccess(shutdownWhenServerError, creator);
        }
        catch (Throwable e) {
            e.printStackTrace();
            if (shutdownWhenServerError) {
                onServerError("权Access 限校验配置 初始化失败！", shutdownWhenServerError);
            }
        }
        System.out.println("\n完成初始化: Access 权限校验配置 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");



        System.out.println("\n\n\n开始初始化: Function 远程函数配置 <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n");
        try {
            APIJSONFunctionParser.init(shutdownWhenServerError, creator);
        }
        catch (Throwable e) {
            e.printStackTrace();
            if (shutdownWhenServerError) {
                onServerError("Function 远程函数配置 初始化失败！", shutdownWhenServerError);
            }
        }
        System.out.println("\n完成初始化: Function 远程函数配置 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

//        System.out.println("开始测试: Function 远程函数 <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n");
//        try {
//            APIJSONFunctionParser.test();
//        }
//        catch (Throwable e) {
//            e.printStackTrace();
//            if (shutdownWhenServerError) {
//                onServerError("Function 远程函数配置 测试失败！", shutdownWhenServerError);
//            }
//        }
//        System.out.println("\n完成测试: Function 远程函数 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
//


        System.out.println("\n\n\n开始初始化: Request 请求参数校验配置 <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n");
        try {
            APIJSONVerifier.initRequest(shutdownWhenServerError, creator);
        }
        catch (Throwable e) {
            e.printStackTrace();
            if (shutdownWhenServerError) {
                onServerError("Request 请求参数校验配置 初始化失败！", shutdownWhenServerError);
            }
        }
        System.out.println("\n完成初始化: Request 请求参数校验校验配置 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

//        System.out.println("\n\n\n开始测试: Request 请求参数校验 <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n");
//        try {
//            APIJSONVerifier.testStructure();
//        }
//        catch (Throwable e) {
//            e.printStackTrace();
//            if (shutdownWhenServerError) {
//                onServerError("Request 请求参数校验 测试失败！", shutdownWhenServerError);
//            }
//        }
//        System.out.println("\n完成测试: Request 请求参数校验 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");




        System.out.println("官方网站： http://apijson.cn");
        System.out.println("设计规范： https://github.com/Tencent/APIJSON/blob/master/Document.md#3");
        System.out.println("测试链接： http://apijson.cn/api?type=JSON&url=http://localhos:8080/get");
        System.out.println("\n\n<<<<<<<<<<<<<<<<<<<<<<<<< APIJSON 启动完成，试试调用零代码万能通用 API 吧 ^_^ >>>>>>>>>>>>>>>>>>>>>>>>\n");
    }

    protected static void onServerError(String msg, boolean shutdown) throws ServerException {
        Log.e(TAG, "\n启动时自检测试未通过！原因：\n" + msg);

        if (shutdown) {
            System.exit(1);
        } else {
            throw new ServerException(msg);
        }
    }

}
