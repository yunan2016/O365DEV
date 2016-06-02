using System;
using System.Web;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Web.Services;
using System.Web.Services.Protocols;
using AjaxControlToolkit;
using System.Data;
using System.Data.SqlClient;

namespace TestAjax
{
    /// <summary>
    /// Summary description for CarData
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CarData : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static CascadingDropDownNameValue[]
               GetStates(string knownCategoryValues, string category)
        {
            return new[] { 
        new CascadingDropDownNameValue("Missouri", "Missouri"),
        new CascadingDropDownNameValue("Oregon", "Oregon") };
        }

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static CascadingDropDownNameValue[]
               GetCounties(string knownCategoryValues, string category)
        {
            if (knownCategoryValues.Contains("Missouri"))
            {
                return new[] {
                    new CascadingDropDownNameValue("St. Charles", "St. Charles"),
                    new CascadingDropDownNameValue("St. Louis", "St. Louis"),
                    new CascadingDropDownNameValue("Jefferson", "Jefferson"),
                    new CascadingDropDownNameValue("Warren", "Warren"),
                    new CascadingDropDownNameValue("Franklin", "Franklin") };
            }
            if (knownCategoryValues.Contains("Oregon"))
            {
                return new[] {
                    new CascadingDropDownNameValue("Baker", "Baker"),
                    new CascadingDropDownNameValue("Benton", "Benton"),
                    new CascadingDropDownNameValue("Clackamas", "Clackamas"),
                    new CascadingDropDownNameValue("Clatsop", "Clatsop"),
                    new CascadingDropDownNameValue("Columbia", "Columbia") };
            }
            return null;
        }


        //public AjaxControlToolkit.CascadingDropDownNameValue[] GetOrdersByEmployeeID(string knownCategoryValues, string category)
        //{

        //    //字符串字典 这个类 么用过 看别人是这么写的 
        //    //也可以这么用：string [] strValues=knownCategoryValues.Split(':',';'); 
        //    // 然后取值： strValues[0]是 name strValues[1]是value吧 
        //    System.Collections.Specialized.StringDictionary kv = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);
        //    int iEmployee;

        //    //其中Employee就是父控件传入的knownCategoryValues参数中传过来的一个类别，父控件的Category的值是"Employee" 
        //    //knownCategoryValues的值是则是："EmployeeName:value;" 类型 
        //    //如果父控件中[WebMethod]方法中是如下加入的值 
        //    // list.Add(new AjaxControlToolkit.CascadingDropDownNameValue("张三","123")); 
        //    //则knownCategoryValues中是 "Employee张三:123;" (如果这里有误,请大虾们指导下) 
        //    //方法中的category则是Category的值,这里下虾我迷惑的是,这个值是本控件的Category的值还是父控件的值? 
        //    //我认为是调用此方法的category的CascadingDropDown的Category的属性,原因是父控件的这个属性是在knownCategoryValues值中判断出来的 

        //    if (!kv.ContainsKey("Employee") || !Int32.TryParse(kv["Employee"], out iEmployee))
        //    {
        //        return null;
        //    }
        //    //下面的取数据方法可以根据项目中的实际情况更改,这里我用的是一个大虾博客上的一个方法做示例,因为自己写的需要在sql语句中添加一些判断,并且数据表表陌生, 
        //    string stringConnection = "Server=.;DataBase=Northwind;uid=sa;pwd=sl";
        //    string a = "";
        //    System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(stringConnection);
        //    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("SELECT OrderID FROM Orders WHERE EmployeeID = " + iEmployee);
        //    cmd.Connection = conn;
        //    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd);
        //    System.Data.DataSet ds = new System.Data.DataSet();
        //    da.Fill(ds);
        //    cmd.Connection.Close();
        //    // 
        //    System.Collections.Generic.List<AjaxControlToolkit.CascadingDropDownNameValue> list = new System.Collections.Generic.List<CascadingDropDownNameValue>();

        //    //下拉列表中的值 
        //    foreach (System.Data.DataRow dr in ds.Tables[0].Rows)
        //    {
        //        string sOrder = dr["OrderID"].ToString();
        //        int iOrder = (int)dr["OrderID"];
        //        //CascadingDropDownNameValue("Name","Value") name是在DropDownList中显示的text value是DropDownList的 value 
        //        // DropDownList中的selectedValue则传给下个控制dropdownList的CascadingDropDown调用的webService方法中的knownCategoryValues的值 

        //        list.Add(new AjaxControlToolkit.CascadingDropDownNameValue(sOrder, iOrder.ToString()));
        //    }
        //    return list.ToArray();
        //} 

    }
}
