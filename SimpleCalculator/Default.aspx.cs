using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public static String write = "";
    public static String CalcMode = "";
    public static Double temp = 0.0;
    public static Double result = 0.0;

    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (!this.IsPostBack)
        {
        }*/
    }

    protected void DisplayOutput(String s)
    {
        if (write == "")
        {
            TextBoxIO.Text += s;
        }
        else
        {
            TextBoxIO.Text = s;
            write = "";
        }
    }

    protected void saveTemp()
    {
        try
        {
            temp = Double.Parse(TextBoxIO.Text);
        }
        catch
        {
            TextBoxIO.Text = "???";
        }
        
    }

    protected void Number_Click(object sender, EventArgs e)
    {
        DisplayOutput(
            (sender as Button).Text
            );
    }
    protected void ButtonPlus_Click(object sender, EventArgs e)
    {
        write = "no";
        CalcMode = "+";
        saveTemp();
    }
    protected void ButtonMinus_Click(object sender, EventArgs e)
    {
        write = "no";
        CalcMode = "-";
        saveTemp();
    }
    protected void ButtonCalc_Click(object sender, EventArgs e)
    {
        switch (CalcMode)
        {
            case "+":
                result = temp + Double.Parse(TextBoxIO.Text);
                TextBoxIO.Text = result.ToString();
                break;
            case "-":
                result = temp - Double.Parse(TextBoxIO.Text);
                TextBoxIO.Text = result.ToString();
                break;
            default:
                break;
        }
    }
    protected void ButtonAC_Click(object sender, EventArgs e)
    {
        TextBoxIO.Text = "";
        temp = 0.0;
        result = 0.0;
        write = "";
    }
}