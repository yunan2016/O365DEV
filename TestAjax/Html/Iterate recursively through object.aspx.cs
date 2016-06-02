using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class Iterate_recursively_through_object : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Product pro = new Product();
            pro.Category = new Category();
            pro.CategoryList = new List<ProductItems>();

            pro.ProductId = 1;
            pro.ProductName = "item1";
            pro.Category.CategoryId = 2;
            pro.Category.CategoryName = "ca2";
            ProductItems pri1 = new ProductItems();
            pri1.ProductItemsId = 1;
            pri1.ProductItemsName = "name1";
            pro.CategoryList.Add(pri1);
            ProductItems pri2 = new ProductItems();
            pri2.ProductItemsId = 2;
            pri2.ProductItemsName = "name2";
            pro.CategoryList.Add(pri2);

            Type type = typeof(Product);
            PropertyInfo[] properties = type.GetProperties();
            foreach (PropertyInfo property in properties)
            {
                var a = property.PropertyType;
                if (property.PropertyType.IsGenericType)
                {
                    var genericArguments = property.PropertyType.GetGenericArguments();
                    //Do something with the generic parameter types 
                    foreach (Type tParam in genericArguments)
                    {
                        // If this is a type parameter, display its
                        // position.
                        //
                        if (tParam.IsGenericParameter)
                        {
                            Console.WriteLine("\t\t{0}\t(unassigned - parameter position {1})",
                                tParam,
                                tParam.GenericParameterPosition);
                        }
                        else
                        {
                            Console.WriteLine("\t\t{0}", tParam);
                        }
                    }

                }
               

            }
        }


    }
    public class Product
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public Category Category { get; set; }
        public List<ProductItems> CategoryList { get; set; }
    }

    public class Category
    {
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
    }

    public class ProductItems
    {
        public int ProductItemsId { get; set; }
        public string ProductItemsName { get; set; }
    }

    public class PropertyResult
    {
        public string PropertyName { get; set; }
        public string PropertyType { get; set; }
        public string PropertyValue { get; set; }

    }
}