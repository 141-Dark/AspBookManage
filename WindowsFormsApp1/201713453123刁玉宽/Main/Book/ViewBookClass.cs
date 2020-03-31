using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Book
{
    class ViewBookClass
    {


        public static string connectionstring = @"Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=ManageBook;Integrated Security=True";

        /// <summary>
        /// 写方法测试类是否连接数据库成功
        /// 打开数据库
        /// </summary>
        /// <returns></returns>
        public static SqlConnection OpenDB()
        {
            try
            {
                SqlConnection oConn = new SqlConnection(connectionstring);
                oConn.Open();

                return oConn;
            }
            catch
            {
                throw;
            }
        }

        //关闭数据库
        public static void CloseDB(SqlConnection oConn)
        {
            try
            {
                oConn.Close();
            }
            catch
            {
                throw;
            }
        }

        //利用dataset类存储数据集
        public static DataSet Execute(string strCommandString)
        {
            try
            {
                SqlConnection oConn = OpenDB();

                DataSet oDataSet = new DataSet();

                //数据适配器，检索保存数据
                SqlDataAdapter oDataAdapter = new SqlDataAdapter(strCommandString, oConn);
                oDataAdapter.Fill(oDataSet);

                CloseDB(oConn);

                return oDataSet;
            }
            catch
            {
                throw;
            }
        }

        public static int ExecuteNonQuery(string strCommandString)
        {
            int li_count = 0;
            SqlConnection oConn = null;
            SqlCommand oComm = null;
            try
            {
                oConn = new SqlConnection(connectionstring);
                oComm = new SqlCommand();
                oConn.Open();
                oComm.Connection = oConn;
                oComm.CommandText = strCommandString;
                li_count = oComm.ExecuteNonQuery();
                return li_count;
            }
            catch
            {
                return 0;
            }
            finally
            {
                if (oConn != null) oConn.Close();
            }
        }

        //初始化数据库
        public static int ExecuteReid(string strCommandString)
        {
            int li_count = 0;
            SqlConnection oConn = null;
            SqlCommand oComm = null;
            try
            {
                oConn = new SqlConnection(connectionstring);
                oComm = new SqlCommand();
                oConn.Open();
                oComm.Connection = oConn;
                oComm.CommandText = strCommandString;
                li_count = Convert.ToInt32(oComm.ExecuteScalar().ToString());
                return li_count;
            }
            catch
            {
                return 0;
            }
            finally
            {
                if (oConn != null) oConn.Close();
            }
        }
    }
}
