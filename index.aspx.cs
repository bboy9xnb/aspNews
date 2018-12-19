using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class index : System.Web.UI.Page
{
    public static SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ChuoiKetNoi"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    [System.Web.Services.WebMethod]
    
    public List<NewsItem> ListNews()
    {
        List<NewsItem> news = new List<NewsItem>();
        conn.Open();
        string sql = "Select * from News";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        
        while (dr.Read())
        {
            NewsItem item = new NewsItem(int.Parse(dr["id"].ToString()), dr["Title"].ToString(), dr["Contents"].ToString(), dr["Images"].ToString(), dr["Seo"].ToString());
            news.Add(item);
        }
        conn.Close();
        return news;
    }
    
}