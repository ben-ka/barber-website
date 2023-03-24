using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


public class DBFunctions
{
    public static string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Administrator\source\repos\my web site project\my web site project\App_Data\Database.mdf"";Integrated Security=True";

    public static void RunNonQuery(string query)
    {
        SqlConnection conn =new SqlConnection(connStr);
        SqlCommand cmd=new SqlCommand(query, conn);

        conn.Open();

        cmd.ExecuteNonQuery();

        conn.Close();
    }
    public static DataTable RunQuery(string query)
    {
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    return dt;
                }
               
            }
            
        }
    }




}