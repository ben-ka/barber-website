using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void BlockAppointment(string hour, string date)
    {
        string query;
        query = $"update tblOrder set IsAvailable=0, name='blocked', email='blocked', phone='blocked' where hour='{hour}' and dateID in (select ID from tblDates where dateInp = '{date}')";
        DBFunctions.RunNonQuery(query);
    }
    public void ClearAppointment(string hour, string date)
    {
        string query;
        query = $"update tblOrder set IsAvailable=1,name=null,email=null,phone=null where hour='{hour}' and dateID in (select ID from tblDates where dateInp = '{date}')";
        DBFunctions.RunNonQuery(query);



    }
}