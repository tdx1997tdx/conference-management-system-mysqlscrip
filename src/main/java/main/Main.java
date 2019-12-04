package main;

import java.io.InputStream;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.jdbc.ScriptRunner;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class Main {

    public static void main(String[] args) {
        try {
            Connection conn = getMySqlConnection();
            ScriptRunner runner=new ScriptRunner(conn);;
            Resources.setCharset(Charset.forName("UTF-8")); //设置字符集,不然中文乱码插入错误
            List<String> list=getScript();
            for(String i:list){
                System.out.println(i);
                runner.setLogWriter(null);//设置是否输出日志
                Reader read = Resources.getResourceAsReader("dbscript/"+i);
                runner.runScript(read);

            }
            runner.closeConnection();
            conn.close();
            System.out.println("sql脚本执行完毕");
        } catch (Exception e) {
            System.out.println("sql脚本执行发生异常");
            e.printStackTrace();
        }
    }

    /**
     * @return
     * @throws Exception
     * @功能描述： 获取数据库连接
     */
    public static Connection getMySqlConnection() throws Exception{
        InputStream in = Main.class.getClassLoader().getResourceAsStream("application.properties");
        Properties prop = new Properties();
        prop.load(in);
        String url=prop.getProperty("url");
        String username=prop.getProperty("username");
        String password=prop.getProperty("password");
        String driverName=prop.getProperty("driver-class-name");
        Class.forName(driverName);
        return DriverManager.getConnection(url, username, password);
    }

    public static List<String> getScript() throws Exception{
        SAXReader reader=new SAXReader();
        URL url = Main.class.getClassLoader().getResource("scripts.xml");
        Document d=reader.read(url);
        Element root=d.getRootElement();
        List<Element> list = root.elements("script");
        List<String> res=new ArrayList<String>();
        for(Element e:list){
            res.add(e.getText().trim());
        }
        return res;
    }

}

