using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NewsItem
/// </summary>
public class NewsItem
{
    public int id { get; set; }
    public string title { get; set; }
    public string content { get; set; }
    public string image { get; set; }
    public string seo { get; set; }

    public NewsItem()
    {
        
    }
    public NewsItem(int id , string til, string con, string im, string se)
    {
        this.id = id;
        this.title = til;
        this.content = con;
        this.image = im;
        this.seo = se;
    }
}