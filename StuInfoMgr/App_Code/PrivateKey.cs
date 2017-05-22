using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///PrivateKey 的摘要说明
/// </summary>
public class PrivateKey
{
	public PrivateKey()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    //这个是登陆密钥，暂时固定，以后可以随机生成来提升安全性
    public static readonly String studentKey = "student_qsIi31G8g2O0vKL1l8CC";
    public static readonly String adminKey = "admin_sj9Vg0b5CabGJge96pPN"; 
      
}