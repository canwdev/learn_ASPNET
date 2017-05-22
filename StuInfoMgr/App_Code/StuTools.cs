using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
///StuTools 的摘要说明
/// </summary>
public class StuTools
{
	public StuTools()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    /// <summary>
    /// 字符串转换
    /// </summary>
    /// <param name="mode">转换模式</param>
    /// <param name="dbString">来自数据库</param>
    /// <returns>返回字符串</returns>
    public static String Convert(String mode, String dbString)
    {
        switch (mode)
        {
            case "sex":
                {
                    if (dbString == "male") return "男";
                    if (dbString == "female") return "女";
                }
                break;

            default:
                break;
        }
        return "null";
    }


}