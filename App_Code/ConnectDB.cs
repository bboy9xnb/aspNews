using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for ConnectDB
/// </summary>
public class ConnectDB
{
    public static SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ChuoiKetNoi"].ToString());
    public static void openConnectDB()
    {
        try
        {
            conn.Open();
        }
        catch (SqlException )
        {
           
        }
    }
    public static void closeConnectDB()
    {
        try
        {
            conn.Close();
        }
        catch (SqlException)
        {

        }
    }
}