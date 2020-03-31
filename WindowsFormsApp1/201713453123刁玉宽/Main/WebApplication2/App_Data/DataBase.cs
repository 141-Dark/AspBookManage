using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace WebApplication2
{
    //声明枚举类型，定义该变量有4个值
    public enum en_FieldType { Text,Number,Date,Bytes}
    public class DataBase
    {
        //声明4个受保护的对象，这4个变量都是ASP.net中常用的变量
        protected HttpSessionState m_SessionState;
        protected HttpServerUtility m_ServerUtility;
        protected HttpRequest m_Request;
        protected HttpResponse m_Response;
        public DataBase(object obj){//定义构造函数
            m_SessionState = HttpContext.Current.Session;
            m_ServerUtility = HttpContext.Current.Server;
            m_Request = HttpContext.Current.Request;
        }
        //打开和关闭数据库
        public SqlConnection m_Conn;
        public void DBConnectionOpen() {

        }
        public static SqlConnection createDatabase()
        {

            return new SqlConnection(@"Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=ManageBook;Integrated Security=True");
        }
    }
}