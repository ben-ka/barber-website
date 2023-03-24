using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration_to_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = "", password = "", query = "", name = "";
        bool isRegistered = false, isFalse = false;

        if (Request.Form["signIn"] != null)
        {
            if (Request.Form["txtUsername"] != null)
            {
                username = Request.Form["txtUsername"];
            }

            if (Request.Form["txtPassword"] != null)
            {
                password = Request.Form["txtPassword"];
            }

            query = "SELECT * FROM tblAdmin WHERE adminUsername='" + username + "' AND adminPassword='" + password + "'";
            DBFunctions.RunQuery(query);
            System.Data.DataTable dt = DBFunctions.RunQuery(query);

            if (dt.Rows.Count > 0)
            {
                isRegistered = true;
                string query2 = "SELECT adminName FROM tblAdmin WHERE adminUsername='" + username + "' AND adminPassword='" + password + "'";
                DBFunctions.RunQuery(query2);
                System.Data.DataTable dk = DBFunctions.RunQuery(query2);
                name = dk.Rows[0]["adminName"].ToString();
                Session["AdminName"] = name; // Store name in session variable
            }
            else
            {
                isFalse = true;
            }
        }
    }
}