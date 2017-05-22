using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Web.Configuration;
using System.Data;

/// <summary>
///摘要说明
///Access数据库的访问助手
/// </summary>
public class CallDB
{
    String strConn;             //连接字符串：包含版本和连接路径等
    OleDbConnection dbConn;     //声明一个OleDbCommand对象
    public OleDbDataReader dbReader;   //数据库阅读器

    /// <summary>
    /// 打开数据库
    /// </summary>
    public void Open()
    {
        strConn = WebConfigurationManager.ConnectionStrings["Access"].ConnectionString; ;                                //数据库存放路径
        strConn = strConn.Replace("{0}", System.Web.HttpContext.Current.Server.MapPath(WebConfigurationManager.AppSettings["AccessPath"].ToString()));     //数据库存放路径
        dbConn = new OleDbConnection(strConn);      //创建数据库连接
    }

    /// <summary>
    /// 执行sql语句
    /// </summary>
    /// <param name="sqlCmd"></param>
    public void exeCmd(String sqlCmd)
    {
        OleDbCommand exeCmd = new OleDbCommand(sqlCmd, dbConn);
        exeCmd.Connection.Open();                //打开数据库
        dbReader = exeCmd.ExecuteReader();  
        //dbReader.Read();
    }

    /// <summary>
    /// 关闭数据库连接
    /// </summary>
    public void Close()
    {
        ///判断连接是否已经创建
        if (dbConn != null)
        {
            ///判断连接的状态是否打开
            if (dbConn.State == ConnectionState.Open)
            {
                dbConn.Close();
            }
        }
    }

    /// <summary>
    /// 释放资源
    /// </summary>
    public void Dispose()
    {
        // 确认连接是否已经关闭
        if (dbConn != null)
        {
            dbConn.Dispose();
            dbConn = null;
        }
    }
}