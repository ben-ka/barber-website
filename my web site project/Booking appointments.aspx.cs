using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.IdentityModel.Tokens.SecurityTokenHandlerCollectionManager;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Security.Policy;

public partial class Booking_appointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = "", email = "", query = "", date = "", selectedHour = "", phone = "";

      
     if (Request.Form["btnSave"] != null)
    {
         date = Request.Form["appointmentDate"];

        DataTable dt = PopulateAvailableHours(date);

        ddlHours.Items.Clear();
        if (dt.Rows.Count > 1)
        {
            foreach (DataRow row in dt.Rows)
            {
                string hourString = ((TimeSpan)row["hour"]).ToString("hh\\:mm");
                ListItem item = new ListItem(hourString, hourString);
                bool isAvailable = (bool)row["IsAvailable"];
                item.Enabled = isAvailable;
                ddlHours.Items.Add(item);
            }

         




        }

    }


        if (Request.Form["HSave"]!=null)
        
        {

            selectedHour = ddlHours.SelectedValue;
        }
        date = Request.Form["appointmentDate"];
        selectedHour = ddlHours.SelectedValue;





        if (Request.Form["LastSave"] != null)
        {
            name = Request.Form["txtName"];
            email = Request.Form["txtEmail"];
            phone = Request.Form["phoneNum"];
            query = $"UPDATE tblOrder SET name='{name}', email='{email}', IsAvailable=0, phone='{phone}' WHERE hour='{selectedHour}' AND dateID=(select id from tblDates where dateinp='{date}') ";
            DBFunctions.RunNonQuery(query);
        }


      

    }

    protected DataTable PopulateAvailableHours(string date)
    {
        string query = $"select [hour], IsAvailable from tblOrder where dateID=(select id from tblDates where dateinp='{date}')";
        DataTable dt = DBFunctions.RunQuery(query);
        return dt;
    }
  
}
